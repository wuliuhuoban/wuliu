<%--
  Created by IntelliJ IDEA.
  User: fxf
  Date: 2017/9/7
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>飞毛腿招聘官网</title>
  <link href="css/css/default.css" rel="stylesheet" />
  <link href="css/css/index.css" rel="stylesheet" />


  <style>
    .banner {
      height: 100%;
      background: url(/wuliu/images/zhaopin/feiyue1.jpg)  no-repeat center top;
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      z-index: 1;
    }
    .banner .search_box {
      width: 768px;
      height: 60px;
      position: absolute;
      bottom: 150px;
      left: 50%;
      margin-left: -384px;
      padding: 4px;
      border: 1px solid #ddcbea;
      z-index: 3;
      padding-top: 1px;
    }
    input, textarea, select {
      color: #333;
      margin: 0;
      padding: 0;
      font-size: 12px;
      font-family: Arial;
      vertical-align: middle;
    }
    .banner .search_box .search_txt {
      width: 600px;
      height: 20px;
      float: left;
      background: #ffffff;
      border: 0;
      padding: 30px 20px;
      line-height: 20px;
      font-size: 20px;
    }
    .banner .search_box .search_btn {
      width: 134px;
      height: 60px;
      text-align: center;
      float: left;
      margin-left: 5px;
      background-size: 100% 100%;
      border: 0;
      color: #333;
      font-size: 20px;
      line-height: 60px;
      cursor: pointer;
    }
    .module {
      width: 100%;
      position: relative;
      z-index: 3;
    }
    .module_box {
      width: 1100px;
      margin: 0 auto;
      padding: 80px 0 120px 0;
      position: relative;
    }
    .module_title {
      width: 380px;
      height: 126px;
      border: 3px solid #ccc;
      margin: 0 auto 120px;
      position: relative;
    }
    .module_title .line.left {
      left: 50%;
      margin-left: -548px;
    }
    .module_title .line.right {
      right: 50%;
      margin-right: -548px;
    }
    .module_title .title_text {
      display: block;
      width: 326px;
      height: 100px;
      position: absolute;
      top: 80px;
      left: 50%;
      margin-left: -163px;
      background: #fff;
    }
    .module_title .title_text em {
      display: block;
      font-size: 32px;
      color: #333;
      text-align: center;
      width: 100%;
    }
    .module_video .module_title.special .title_text {
      background: none;
      width: 100%;
      left: 0;
      margin-left: 0;
      top: 65px;
    }

    .module_video .module_box {
      height: 630px;
      padding-top: 160px;
      padding-bottom: 0;
    }
    .postnew_list {
      width: 100%;
      margin-bottom: 20px;
    }
    .postnew_list .postnew_room {
      width: 1140px;
    }
    .clearboth {
    }
    .postnew_list .postnew_item {
      display: block;
      width: 250px;
      height: 260px;
      float: left;
      margin-right: 32px;
      margin-bottom: 32px;
      position: relative;
    }
    .postnew_list .postnew_item .shade {
      z-index: 3;
      -webkit-transition: all 0.2s ease;
      -moz-transition: all 0.2s ease;
      transition: all 0.2s ease;
    }
    .postnew_list .postnew_item .shade span.black {
      background: rgba(0,0,0,.6);
      z-index: 2;
      -webkit-transition: all 0.2s ease;
      -moz-transition: all 0.2s ease;
      transition: all 0.2s ease;
    }
  </style>

  <script>

  </script>
</head>
<body>
<%--<div class="header_fly">
  <img class="logo" src="images/base/tui.png" />
  <div class="nav clearboth">

  </div>

</div>--%>
<div class="parttop" style="width: 1349px;height: 636px;">
  <div class="header">
    <img class="logo" src="images/base/tui.png" />
    <div class="nav clearboth">
      <a href="index" class="item cur"><h2>首页</h2></a>
    </div>
    </div>

  <div class="banner">
    <div class="search_box clearboth">
      <input type="text" class="search_txt" placeholder="请输入关键词搜索职位" />
      <input type="button" class="search_btn" value="搜索职位" />
    </div>
  </div>
</div>
<div class="module">
  <div class="module_box postNew">
    <div class="module_title">
      <span class="line left"></span>
      <span class="line right"></span>
      <div class="title_text">
        <img src="images/zhaopin/title_1.png" />
        <em>最新岗位招聘</em>
      </div>
    </div>
    <div class="postnew_list">
      <div class="postnew_room clearboth">
        <a href="#" class="postnew_item">
          <img src="images/zhaopin/postnew_1.jpg" />
          <div class="shade">
            <span class="black"></span>
          </div>
          <div class="border"></div>
          <div class="item_text">
            <strong>java开发工程师</strong>
            <span>招聘人数：<i>3</i></span>
            <em>杭州</em>
            <i class="line"></i>
            <i class="detail">查看</i>
          </div>
        </a>
        <a href="social/detail.html" class="postnew_item">
          <img src="images/zhaopin/postnew_1.jpg" />
          <div class="shade">
            <span class="black"></span>
          </div>
          <div class="border"></div>
          <div class="item_text">
            <strong>运维工程师数据库方向</strong>
            <span>招聘人数：<i>3</i></span>
            <em>上海</em>
            <i class="line"></i>
            <i class="detail">查看</i>
          </div>
        </a>
      </div>
      </div>
    </div>
</div>
<div class="module module_video">
  <div class="module_box">
    <div class="module_title special">
      <span class="line top"></span>
      <span class="line bottom"></span>
      <div class="title_text">
        <img src="images/zhaopin/title_2.png" />
        <em>走进飞毛腿</em>
      </div>
    </div>
    <div class="video_btn">
      <img src="images/index/video_img.jpg" />
      <img class="video_play" data-video="../video/video.mp4" src="images/index/video_play.png" />
    </div>
  </div>
</div>
<div class="module">
  <div class="module_box contact">
    <div class="module_title">
      <span class="line left"></span>
      <span class="line right"></span>
      <div class="title_text">
        <img src="images/index/title_3.jpg" />
        <em>联系我们</em>
      </div>
    </div>
    <div class="contact_list clearboth">
      <div class="contact_item item_1">
        <p>021-69787567<br />021-69787568</p>
      </div>
      <div class="contact_item item_2">
        <a href="mailto:ztohr@zto.cn">ztohr@zto.cn</a>
      </div>

    </div>
    <img class="contact_img" src="images/index/contact_img.png" />
  </div>
</div>
<div class="footer">
  <p>飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</p>
</div>
<div class="video">
  <div class="video_box">
    <span class="video_close"></span>
    <div class="video_room" id="video_room"></div>
  </div>
</div>
<script src="js/zhaopin/Jquery.js"></script>
<script src="js/zhaopin/jwplayer.js"></script>
<script src="js/zhaopin/public.js"></script>
<script>
  $(function(){
    public.nav();
    public.index();
  })
</script>

</body>
</html>
