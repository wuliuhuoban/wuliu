<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/11
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
  <link href="css/css/base.css?v_20170727" rel="stylesheet" type="text/css" />
  <link href="css/css/index.css?v_20170727" rel="stylesheet" type="text/css" />
  <script src="js/myjs/jquery-1.8.2.min.js"></script>
  <style type="text/css">
    #div1{
      padding-left: 1200px;
    }
    .footer{
      height: 50px;
      line-height: 50px;
      background: #3f4a5a;
      text-align: center;
      color: #fff;font-size: 14px;
    }

  </style>
</head>
<body>
<div class="headTips yixin"></div>
<div id="headwarp">
  <div id="headState" class="upper">
    <div id="div1">
      <a href="loginForm"><h5>登录</h5></a>
    </div>
  </div>
  <script>
    $("#headState").load("/Account/Index")
  </script>

  <div class="head">
    <div class="headcont clearfix" style="position: relative">
      <%--<img style="position: absolute; left: 50%; margin-left: 135px; top: 16px;" src="/Content/themes/base/images/zto_nyse.png" />--%>
      <div class="fl">
        <img src="images/base/tui.png" width="250" height="51" />
        <img src="images/base/head.png" width="198" height="35"/>

      </div>

      <div class="fr" style="margin-top: -5px">
        <ul>
          <li>
            <a title="飞毛腿速递官方微博" href="https://weibo.com/" target="_blank">
              <img src="images/base/head-icon-1.png" width="36" height="34"/>
            </a>
          </li>
          <li><a title="飞毛腿官方支付宝服务窗" id="headzhifubao" href="https://www.alipay.com/" target="_blank">
            <img src="images/base/head-icon-2.png" width="35" height="34"/>
          </a>
          </li>
          <li><a title="飞毛腿微信公众号" href="https://wx.qq.com/" id="headweixin" target="_blank">
            <img src="images/base/head-icon-3.png" width="35" height="34"/></a></li>
          <li><a title="飞毛腿QQ公众号" href="https://mp.qq.com/user/register/" id="headqq" target="_blank">
            <img src="images/base/qq.png" width="35" height="34"/></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="menu">
    <div class="menucont">
      <div class="fl">
        <ul class="clearfix nav" id="nav">
          <li class="nLi on" id="nav_index">
            <h3><a href="index">首页</a></h3>
          </li>
          <li class="nLi " id="nva_productService">
            <h3><a href="cpservice">产品服务</a></h3>
            <ul class="sub">
              <li><a href="#">时效件</a></li>
            </ul>
          </li>
          <li class="nLi " id="nva_customerService">
            <h3><a href="service">客户服务</a></h3>
          </li>
          <li class="nLi " id="nva_recruitment">
            <h3><a href="zhaopin">人才招聘</a></h3>
          </li>
          <li class="nLi " id="nav_about">
            <h3><a href="introduce">企业介绍</a></h3>
          </li>
          <li class="nLi " id="nav_news">
            <h3><a href="#">新闻动态</a></h3>
          </li>
        </ul>
      </div>
      <div class="kefuicon">
        <a href="#">
          <img src="images/base/kefuicon1.png" width="240" height="61" />
        </a>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/myjs/layer.min.js"></script>
</body>
</html>
