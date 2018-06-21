var express = require('express');
var url = require("url");
var usingredis=require('../usingredis')
var router = express.Router();
var TCP=require('../connectWithTCP');
var Cmysql=require('../connectToMysql');
var app = express();
/* GET home page. */
router.get('/', function(req, res, next) {
    return res.render('index', { title: 'Express' });
});
router.get('/login.html',function (req,res,next) {

    return res.render('login',{title:'login',message:''});

});
router.get('/register.html',function (req,res,next) {
    return res.render('register',{title:'register',message:''});
});
router.get('/int',function (req,res,next) {
    console.log(req.body);
    return res.json({success:1});
})
router.get('/control.html',function (req,res,next) {
    return res.render('control',{title:'control'});
});
router.get('/newspush.html',function (req,res,next) {
    return res.render('newspush',{title:'newspush'});
});
router.get('/newspush2.html',function (req,res,next) {
    return res.render('newspush2',{title:'newspush'});
});
router.post('/login',function (req,res,next) {
    console.log('req:', req.body);
    Cmysql.init();
    Cmysql.connection.query('select * from log where uname=?',[req.body.uname],function (err, rows, fields) {
        if (err) {
            console.log(err);
            return res.json({success:0});
        }
        else if(rows[0]==null){
            return res.json({success:0});
        }
        else if(rows[0].pwd==req.body.upwd){
            console.log(rows);
            var user = {'username': req.body.uname};
            req.session.user = user;

             // res.cookie("user", req.body.uname, {maxAge: 1000*60*60*24*30,httpOnly: true}); //, signed: true
            return res.json({success:1,usertypes:rows[0].usertypes});
        }
        else {
             res.json(JSON.stringify({success:0}));
        }
    })
    // if(req.body.uname=="love" && req.body.upwd=="love") {
    //     var user = {'username': 'love'};
    //     req.session.user = true;
    //     res.json({success:1});
    // }
    // else
    // {
    //     res.json({success:0});
    // }
});
router.post('/logout',function (req,res,next) {
    console.log('req:', req.body);
    console.log('session',req.session.id);
    Cmysql.init();
    var session=req.session.id;
    Cmysql.connection.query('delete from sessionidcheck where sessionid =?',[session],function (err, rows, fields) {
        if (err) {
            console.log(err);
            return res.json({success:0});
        }
        else {
            return res.json({success:1});
        }
    })
})
router.post('/register',function (req,res,next) {
    console.log('req:', req.body);
    //相同用户名检测
    Cmysql.init();
    Cmysql.connection.query('select pwd from log where uname=?',[req.body.uname],function (err, rows, fields) {
        console.log(rows.lenth);
        if (err) {
            console.log(err);
            return res.json({success:0});
        }
        else if(rows[0]!=null){//找到了相同用户名
            console.log(rows);
            return res.json({success:0,same:1});
            // var user = {'username': req.body.uname};
            // req.session.user = true;
            // res.json({success:1});
        }
        else {
            Cmysql.init();
            Cmysql.connection.query('insert into log(uname,pwd,usertypes) VALUES(?,?,?)',[req.body.uname,req.body.upwd,'0'],function (err, rows, fields) {
                if (err) {
                    console.log(err);
                    return res.json({success:0});
                }
                else {
                    return res.json({success:1});
                    return res.redirect("/login.html")
                }
            })
        }
    })
});

router.post('/cal',function (req,res,next) {
    var str=req.body;
    str.sessionid=req.session.id;
    var string = JSON.stringify(str)
    usingredis.push_message(string);
    return res.json({success:1});

//弃用 原tcp连接方式
    var str=req.body;
    str.sessionid=req.session.id;
    var string = JSON.stringify(str)
    usingredis.push_message(string);
    console.log('req:',str);
    TCP.datainit(str);
    TCP.TCP_connect_start();
    TCP.status.on('success',function (data) {
        console.log('data->'+data);
        try {
            return res.json(data);
        }
        catch (e){
            console.log(e);
        }
    })
    TCP.status.on('error',function () {
        console.log('app_js_error_on_emit');
        try {
            return res.json({error:1});
        }
        catch (e){
            console.log(e);
        }
    })
})
    router.get('/calresult',function (req,res,next) {
        console.log(req.session.id);
        Cmysql.init();
        Cmysql.connection.query('select resultjson from result where session =? ',[req.session.id],function (err, rows, fields) {
            console.log(rows.lenth);
            if (err) {
                console.log(err);
                return res.json({success:0});
            }
            else if(rows[0]!=null){//找到了结果
                console.log(rows[0]);
                var temp=JSON.parse(rows[0].resultjson);
                console.log(temp);
                Cmysql.connection.query('delete from result where session =?',[req.session.id],function (err, rows, fields) {
                    if (err) {
                        console.log(err);
                    }
                })
                return res.json(temp);
                // var user = {'username': req.body.uname};
                // req.session.user = true;
                // res.json({success:1});
            }
            else {
                console.log(rows[0]);
                return res.json({wait:1});
            }
        })
       // return res.render('newspush',{title:'newspush'});
    });
    // res.json({rom:"1TB HDD",cpu2:"Intel Xeon X5670 @ 2.93GHz",score2:"8956",tmb:"主板+LGA1366",lowest:"0",ram:"16GB",gcard2:"GeForce GT 730",price2:"2348.3557"});

router.get('/getNews',function (req,res,next) {
    var url_n=req.originalUrl;
    console.log(url_n);
    var a = url.parse(url_n).query;
    console.log(a);
    a=a.replace(/%3A/g,":")
    var flag=a.split('&');
    console.log(flag);
    var obj={};
    var keyvalue;
    var key="",value="";
    flag.forEach(function (e) {
        keyvalue=e.split('=');
        key=keyvalue[0];
        value=keyvalue[1];
        obj[key]=value;
    })
    console.log(obj);
    if(obj.firstget==1){
        Cmysql.init();
        Cmysql.connection.query('select * from news order by time DESC limit 0,5', function(err, rows, fields) {
            if (err) {
                console.log(err);
                res.json({success:0});
                Cmysql.connection.end(function () {
                    console.log('connection_end: ');
                });
            }
            else {
                console.log(rows);
                return res.json(rows);
                Cmysql.connection.end(function () {
                    console.log('connection_end: ');
                });
            }
            // console.log('The solution is: ', rows[0].solution);
        });
    }
    else if(obj.flush==1){
        var time=req.headers.cookietime;
        Cmysql.init();
        Cmysql.connection.query('select * from news where time>? order by time DESC limit 0,4',[time], function(err, rows, fields) {
            if (err) {
                console.log(err);
                res.json({success:0});
            }
            else {
                console.log(rows);
                return res.json(rows);
                Cmysql.connection.end(function () {
                    console.log('connection_end: ');
                });
            }
            // console.log('The solution is: ', rows[0].solution);
        });
    }
    else {
        res.json({success:0});
        Cmysql.connection.end(function () {
            console.log('connection_end: ');
        });
    }
})

router.post('/setNews',function (req,res,next) {
    console.log('req:', req.body);
    Cmysql.init();
    Cmysql.connection.query('select title from news where title=?',[req.body.title],function (err, rows, fields) {
        //console.log(rows.lenth);
        if (err) {
            console.log(err);
            return res.json({success:0});
        }
        else if(rows[0]!=null){//相同title
            console.log(rows);
            return res.json({success:0,same:1});
        }
        else {
            Cmysql.init();
            Cmysql.connection.query('insert into news(image,title,keywords,text) VALUES(?,?,?,?)',[req.body.image,req.body.title,req.body.keywords,req.body.text],function (err, rows, fields) {
                if (err) {
                    console.log(err);
                    return res.json({success:0});
                }
                else {
                    return res.json({success:1});
                    //return res.redirect("/newspush.html")
                }
            })
        }
    })
})
module.exports = router;
