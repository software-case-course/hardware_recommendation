


var events=require('events');
var listen=new events.EventEmitter();
exports.status=listen;

exports.start=TCP_connect_start;


function TCP_connect_start() {
    setInterval(timer,5)
    /*var i=0;
    while(1){
        if(i=0){
            i++;
            listen.emit('error')
        }
        else {
            i--;
            listen.emit('sucess')
        }
    }*/

}
function timer(){
    listen.emit('error');
}

