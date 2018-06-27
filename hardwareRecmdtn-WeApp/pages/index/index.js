//index.js
//获取应用实例
const app = getApp()
var initText = 'hi There!'
Page({
  data: {
    cpu_level : 0,
    gpu_level : 0,
    rom_level : 0,
    ram_level : 0,
    budget : 0,
    progress_pcnt : 0,
    showResult : false,
    resultText: initText,
    resultText2: initText,
    isAgree: false,

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
    var that = this;
    var sid;

    wx.showToast({
      title: '正在做爱。。。',
      icon: 'loading',
      duration: 10000
    })

    //请求数据
    wx.request({
      url: 'http://182.254.147.80:3000/cal', 
      data: {
        budget : this.data.budget,
        cpu_level: this.data.cpu_items[this.data.cpu_level].value,
        gpu_level: this.data.gpu_items[this.data.gpu_level].value,
        rom_level: this.data.rom_items[this.data.rom_level].value,
        ram_level: this.data.ram_items[this.data.ram_level].value
      },
      method : 'POST',
      dataType  : 'json',
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: function (res) {
        //console.log(res)
        sid = res.header["set-cookie"].split(";")[0]
        wx.setStorageSync("sessionid", sid)
      }
    })

    var t;
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
            console.log("waiting...")
            if (that.data.progress_pcnt < 80){
              that.setData({ progress_pcnt: that.data.progress_pcnt+18 })
            }
            t = setTimeout(timedCount, 2000)
          }else{
            //成功拿到服务器数据
            wx.hideToast()
            wx.showToast({
              title: '哇！',
              icon: 'success',
              duration: 1000
            })
            that.setData({ showResult: true })
            that.setData({ resultText: '方案一:\nCPU:' + res.data.cpu1 + '\nGPU:' + res.data.gcard1 + '\n内存:' + res.data.ram + '\n硬盘:' + res.data.rom + 
            '\n',
              resultText2: '方案二:\nCPU: ' + res.data.cpu2 + '\nGPU: ' + res.data.gcard2 + '\n内存: ' + res.data.ram + '\n硬盘:' + res.data.rom})
            clearTimeout(t)
            //console.log("Here we go!")
            console.log(res)
          }
        }
      })
    }
    timedCount()
  },
  bindPickerChange: function (e) {
    console.log(e)
    if (e.target.id == "cpu") {
      this.setData({ cpu_level: e.detail.value })
    } else if (e.target.id == "gpu") {
      this.setData({ gpu_level: e.detail.value })
    } else if (e.target.id == "ram") {
      this.setData({ ram_level: e.detail.value })
    } else if (e.target.id == "rom") {
      this.setData({ rom_level: e.detail.value })
    }
  },
  inputComfirm: function (e) {
    this.setData({ budget:e.detail.value })
  },
  setProgess : function(p){
    this.setData({ progress_pcnt: p })
  },

  bindAgreeChange: function (e) {
    this.setData({
      isAgree: !!e.detail.value.length
    });
  }
 })
