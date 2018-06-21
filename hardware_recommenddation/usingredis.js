var redis   = require('redis');
var client  = redis.createClient('6379', '127.0.0.1');
var task_id=0;
var events=require('events');
var mysql = require('mysql');

exports.push_message=push_message;
function push_message(data) {
    var client  = redis.createClient('6379', '127.0.0.1');
// redis 链接错误
    client.on("error", function(error) {
        console.log(error);
    });
    client.on("connect", function() {
        console.log("RedisServer is connected!");
    });
    client.on("end", function() {
        console.log("RedisServer is end!");
    });
    client.select('15', function(error){
        if(error) {
            console.log(error);
        } else {
            // lpush
            client.lpush('list', data);
            client.quit();
        }
    });
}