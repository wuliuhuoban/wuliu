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

</head>
<body>
<div class="header_fly">
  <img class="logo" src="images/base/tui.png" />

</div>
<div class="parttop">
  <div class="header">
    <img class="logo" src="images/base/tui.png" />

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
        <a href="social/detail.html" class="postnew_item">
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
        <img src="images/index/title_2.png" />
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
<script src="zhaopin/Jquery.js"></script>
<script src="zhaopin/jwplayer.js"></script>
<script src="zhaopin/public.js"></script>
<script>
  $(function(){
    public.nav();
    public.index();
  })
</script>

</body>
</html>
