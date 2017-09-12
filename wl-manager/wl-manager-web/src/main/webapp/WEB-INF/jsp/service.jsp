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
</head>
<body>
<%@include file="head.jsp"%>
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
            <li class="on"><a href="danhaoQuery">快件查询</a></li>
            <li class=""><a href="shixiao">报价时效查询</a></li>
            <li class=""><a href="weijinpin">禁寄品须知</a></li>
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
                <a href="weijinpin">
                  <img src="images/base/weijin.png" width="39" height="38" /></a>
              </div>
              <h5><a href="weijinpin">违禁品</a></h5>
            </li>

            <li>
              <div>
                <a href="shixiao">
                  <img src="images/base/money.png" width="39" height="38" /></a>
              </div>
              <h5><a href="shixiao">报价时效</a></h5>
            </li>
            <li class="firstChild">
              <div>
                <a href="serviceGuide">
                  <img src="images/service/pdicon-7.png" width="39" height="38"></a>
              </div>
              <h5><a href="serviceGuide">服务指南</a></h5>
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
