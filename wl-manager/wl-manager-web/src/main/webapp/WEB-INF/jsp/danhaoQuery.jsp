<%--
  Created by IntelliJ IDEA.
  User: fxf
  Date: 2017/9/11
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>运单查询</title>
  <link href="css/weijinpin/Customersv.css?v_20170727" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="head.jsp" %>

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
              <h5><a href="weijinpin" target="_blank">违禁品</a></h5>
            </li>

            <li>
              <div>
                <a href="shixiao">
                  <img src="images/base/money.png" width="39" height="38" /></a>
              </div>
              <h5><a href="shixiao" >报价时效</a></h5>
            </li>
            <li class="firstChild">
              <div>
                <a href="#">
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
        <img src="images/shixiao/query.jpg" width="770" height="173" />
      </div>
      <div class="listbd" style="height: 230px">
        <div>
          <div class="title" style="position: relative">
            <div class="titleicon1">
              <img src="images/shixiao/search.png" width="26" height="22" />
            </div>
            <h3>单号查询</h3>
          </div>
          <form action="#" method="post" style="position: relative;">
            <input cols="" rows="" class="queryinput" id="wayBill" name="wayBill" placeholder="请输入要查询的单号">
            <input type="submit" value="确定" class="orangebutton" style="position:absolute;left:230px;top: 100px;">
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/shixiao/search-price.js?v2017831"></script>
<script type="text/javascript" src="js/shixiao/PricePlaces.js"></script>
<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<link rel="stylesheet" href="css/css/jquery.css" type="text/css" />
</body>
</html>
