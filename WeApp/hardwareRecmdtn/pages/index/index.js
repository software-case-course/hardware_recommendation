//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    cpu_level : -1,
    gpu_level : -1,
    rom_level : -1,
    ram_level : -1,
    budget : 0,

    cpu_items : [
      { name: '仅上网'  , value: '1' },
      { name: '小型游戏', value: '2' },
      { name: '大型游戏', value: '3' },
      { name: '渲染工作', value: '4' }
    ],
    gpu_items: [
      { name: '无要求', value: '1' },
      { name: '小型游戏', value: '2' },
      { name: '中型游戏', value: '3' },
      { name: '大型游戏', value: '4' }
    ],
    rom_items: [
      { name: '4g', value: '1' },
      { name: '8g', value: '2' },
      { name: '16g', value: '3' }
    ],
    ram_items: [
      { name: 'SSD 128G', value: '1' },
      { name: 'SSD 128G+HDD 1T', value: '2' },
      { name: 'HDD 1T', value: '3' },
      { name: 'SSD 256G', value: '4' },
      { name: 'SSD 512G', value: '4' }
    ],
  },

  //事件处理函数
  onLoad: function () {
  },
  formSubmit: function () {
    var sid;
    wx.request({
      url: 'http://182.254.147.80:3000/cal', //仅为示例，并非真实的接口地址
      data: {
        budget : this.data.budget,
        cpu_level : this.data.cpu_level,
        gpu_level : this.data.gpu_level,
        rom_level : this.data.rom_level,
        ram_level : this.data.ram_level
      },
      method : 'POST',
      dataType  : 'json',
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: function (res) {
        console.log(res)
        sid = res.header["set-cookie"].split(";")[0]
        wx.setStorageSync("sessionid", sid)
      }
    })

    
    var rqst_flag = true;
    function timedCount() {
      wx.request({
        url: 'http://182.254.147.80:3000/calresult', 
        method: 'GET',
        header:{
          'content-type': 'application/x-www-form-urlencoded',
          'cookie': wx.getStorageSync("sessionid") //读取cookie
        },
        success: function (res) {
          if(res.data.wait==1){
            //console.log("waiting...")
            timedCount()
          }else{
            rqst_flag=false;
            //console.log("Here we go!")
            //console.log(res)
          }
        }
      })
    }
    timedCount()
  },
  radioChange: function (e) {
    if( e.target.id=="cpu" ){
      this.setData({ cpu_level : e.detail.value })
    } else if (e.target.id == "gpu" ){
      this.setData({ gpu_level: e.detail.value })
    } else if (e.target.id == "ram") {
      this.setData({ ram_level: e.detail.value })
    } else if (e.target.id == "rom") {
      this.setData({ rom_level: e.detail.value })
    }
  },
  inputComfirm: function (e) {
    this.setData({ budget:e.detail.value })
  }
    
 })
