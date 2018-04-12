/**
 * Created by 75636 on 2017/6/14.
 */
var net = require('net');
var events=require('events');
// var _HOST='139.199.196.203';
var _HOST='127.0.0.1';
var _PORT=20006;
var _HOST_init;
var _PORT_init;
var _init_flag=false;
var _data_init;
var _data_flag=false;
var get;
var client=new net.Socket({
});
var listen=new events.EventEmitter();


exports.TCP_connect_start=TCP_connect_start;
exports.getdata=getdata;
exports.datainit=TCP_data_init;
exports.status=listen;
function TCP_connect_init(HOST,PORT) {
    if(HOST!=null&&PORT!=null) {
        _HOST_init = HOST;
        _PORT_init=PORT;
        _init_flag=true;
    }
}
function TCP_data_init(data) {
    _data_init=data;
    _data_flag=true;
}
function TCP_connect_start() {
    if(_init_flag){
        try{
            console.log('TCP_connect_start');
            client.connect(_PORT_init,_HOST_init);
        }
        catch (e){
            console.log(e);
        }
    }
    else {
        try {
            console.log('TCP_connect_start')
            client=net.connect(_PORT,_HOST);
        }
        catch (e){
            console.log(e);
        }
    }




    client.on('connect',function () {
        console.log(('CONNECT SUCESS'));
        client.write('HI');
    })
    client.on('data',function (data) {
        // console.log('TCP->data:'+data.toString());
        // var redata;
        // var num=0;
        // var i=0;
        // data.forEach(function (word) {
        //     if(word!=0)num++;
        //     })
        // redata=new Uint8Array(num+1);
        // for(var key in data){
        //     redata[i]=data[key];
        //     i++;
        //     if(i==num)break;
        // }
        // redata[redata.length]=0;
        // // data.forEach(function (word) {
        // //     if(word!=0)redata[i]=word;
        // //     if(i==num){
        // //         foreach.break=new Error("StopIteration");;
        // //     }
        // //     i++;
        // // })
        // console.log(redata.toString())
        if(data=="HI"){
            if(_data_flag){
                console.log('START SEND DATAWITHJSON');
                client.write(JSON.stringify(_data_init));
            }
            else {
                console.log('NO DATA');
                client.end();
                listen.emit('error');
            }
        }
        else {
            console.log('END_DATA');
            console.log(data.toString());
            try {
                var get=data.toString();
                get.replace('\\','')
            }
            catch (e){
                console.log(e);
            }
            listen.emit('success',get);
            client.end();

        }
    })
    client.on('error',function (e) {
        console.log(e.code);
        listen.emit('error');
    })
    client.on('timeout',function (e) {
        console.log(e);
        listen.emit('error');
    })
}

function getdata() {
    return get;
}