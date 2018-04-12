/**
 * Created by 75636 on 2017/7/7.
 */
var mysql = require('mysql');
exports.query=query;

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '5XD@IDp4FN',
    database:'hardware'
});
exports.init=function () {
    connection = mysql.createConnection({
        host: '127.0.0.1',
        user: 'root',
        password: '5XD@IDp4FN',
        database:'hardware'
    });
}
exports.connection=connection;
function query(){
    connection.connect();
//查询
    connection.query('SELECT 1 + 1 AS solution', function(err, rows, fields) {
        if (err) throw err;
        console.log('The solution is: ', rows[0].solution);
    });
//关闭连接
    connection.end();
}
