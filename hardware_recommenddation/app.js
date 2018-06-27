var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');
var index = require('./routes/index');
var users = require('./routes/users');
var cookieParser = require('cookie-parser');
var redis=require('redis')
var Cmysql=require('./connectToMysql');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use(session({
    secret: 'hubwiz app', //secret的值建议使用随机字符串
    cookie: {maxAge: 60 * 1000 * 30} // 过期时间（毫秒）
}));
app.use('/newspush2.html',function(req,res,next){
    if (req.session.user) {
        Cmysql.init();
        Cmysql.connection.query('select * from sessionidcheck where uname=?',[req.session.user.username],function (err, rows, fields) {
            if (err) {
                console.log(err);
            }
            else if(rows[0]==null){
                Cmysql.connection.query('insert into sessionidcheck(uname,sessionid)values(?,?)',[req.session.user.username,req.session.id],function (err, result) {
                    if (err) {
                        console.log(err);
                    }
                    console.log('--------------------------INSERT----------------------------');
                    //console.log('INSERT ID:',result.insertId);
                    console.log('INSERT ID:',result);
                    console.log('-----------------------------------------------------------------\n\n');
                })
            }
            else if(rows[0].sessionid!=req.session.id){
                console.log(rows);
                Cmysql.connection.query('update sessionidcheck set sessionid=? where uname=?',[req.session.id,req.session.user.username],function (err,result) {
                    if(err){
                        console.log('[UPDATE ERROR] - ',err.message);
                        return;
                    }
                    console.log('--------------------------UPDATE----------------------------');
                    console.log('UPDATE affectedRows',result.affectedRows);
                    console.log('-----------------------------------------------------------------\n\n');
                })
            }
        })
        console.log("session:"+req.session.user)
        Cmysql.connection.query('select * from log where uname=?',[req.session.user.username],function (err, rows, fields) {
            console.log(rows[0])
            if (err) {
                console.log(err);
            }
            else if (rows[0]==null){
                res.redirect('/login.html');
            }
            else if(rows[0].usertypes==1){
                next();
            }
            else {
                res.redirect('/index2.html');
            }
        })
    }
    else {
      res.redirect('/login.html');
    }
});
app.use('/', index);
app.use('/users', users);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
