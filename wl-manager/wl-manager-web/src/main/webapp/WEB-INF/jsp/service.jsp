<%--
  Created by IntelliJ IDEA.
  User: fxf
  Date: 2017/9/6
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>客户服务</title>
  <link href="css/css/base.css?v_20170727" rel="stylesheet" type="text/css" />
  <link href="css/css/index.css?v_20170727" rel="stylesheet" type="text/css" />
  <script src="js/myjs/jquery-1.8.2.min.js"></script>
  <style type="text/css">
    #div1{
      padding-left: 1200px;
    }
    .footer{
      padding-left: 500px;
      position:fixed;
      bottom:0;
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
        <img src="images/base/tui.png" width="250" height="51"/>
        <img src="images/base/head.png" width="198" height="26"/>

      </div>

      <div class="fr" style="margin-top: -5px">
        <ul>
          <li>
            <a title="飞毛腿速递官方微博" href="#">
              <img src="images/base/head-icon-1.png" width="36" height="34"/>
            </a>
          </li>
          <li><a title="飞毛腿官方支付宝服务窗" id="headzhifubao" href="#">
            <img src="images/base/head-icon-2.png" width="35" height="34"/>
          </a>
          </li>
          <li><a title="飞毛腿微信公众号" href="#" id="headweixin">
            <img src="images/base/head-icon-3.png" width="35" height="34"/></a></li>
          <li><a title="飞毛腿QQ公众号" href="#" id="headqq">
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
          <li class="nLi " id="nva_productService" onmouseout="chu()" onmouseover="jin()">
            <h3><a href="cpservice">产品服务</a></h3>
            <ul class="sub">
              <li><a href="#">时效件</a></li>
            </ul>
          </li>
          <li class="nLi " id="nva_customerService">
            <h3><a href="service">客户服务</a></h3>
            <ul class="sub">
              <li><a href="#">快件查询</a></li>
              <li><a href="#">服务网点查询</a></li>
              <li><a href="#">报价时效查询</a></li>
              <li><a href="#">禁寄品须知</a></li>
              <li><a href="#">投诉电话查询</a></li>
            </ul>
          </li>
          <li class="nLi " id="nva_recruitment">
            <h3><a href="zhaopin">人才招聘</a></h3>
          </li>
          <li class="nLi " id="nav_about">
            <h3><a href="#">企业介绍</a></h3>
            <ul class="sub">
              <li><a href="#">走进飞毛腿</a></li>
              <li><a href="#">社会荣誉</a></li>
              <li><a href="#">企业文化</a></li>
              <li><a href="#">企业展示</a></li>
              <li><a href="#">联系我们</a></li>
            </ul>
          </li>
          <li class="nLi " id="nav_news">
            <h3><a href="#">新闻动态</a></h3>
            <ul class="sub">
              <li><a href="#">公司动态</a></li>
              <li><a href="#">行业新闻</a></li>
            </ul>
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

<div id="content">
  <div class="contentwarp clearfix">
    <div class="fl w190">
      <div class="servicect">
        <div class="title1">
          <div class="titleicon">
            <img src="images/service/query.png" width="29" height="26" />
          </div>
          <div class="text">查询服务</div>
        </div>
        <div class="contentlist">
          <ul>
            <li class="on"><a href="#">快件查询</a></li>
            <li class=""><a href="#">报价时效查询</a></li>
            <li class=""><a href="#">禁寄品须知</a></li>
          </ul>
        </div>
      </div>
      <div class="servicect mt20">
        <div class="title1">
          <div class="titleicon">
            <img src="images/service/serviceicon-2.png" width="29" height="26" />
          </div>
          <div class="text">客户服务</div>
        </div>
        <div class="servicectbd">
          <ul class="clearfix mb15">

            <li class="firstChild">
              <div>
                <a href="#" target="_blank">
                  <img src="images/base/weijin.png" width="39" height="38" /></a>
              </div>
              <h5><a href="#" target="_blank">违禁品</a></h5>
            </li>

            <li>
              <div>
                <a href="#" target="_blank">
                  <img src="images/base/money.png" width="39" height="38" /></a>
              </div>
              <h5><a href="#" target="_blank">报价时效</a></h5>
            </li>
            <li class="firstChild">
              <div>
                <a href="#" target="_blank">
                  <img src="images/service/pdicon-7.png" width="39" height="38"></a>
              </div>
              <h5><a href="#">服务指南</a></h5>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="fr w770">
      <div class="ad">
        <img src="images/service/3.jpg" width="900" height="450" />
      </div>
    </div>
    </div>
  </div>

<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<script type="text/javascript" src="js/myjs/layer.min.js"></script>
</body>
</html>
