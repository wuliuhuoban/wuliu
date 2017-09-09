<%--
  Created by IntelliJ IDEA.
  User: fxf
  Date: 2017/9/5
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页-飞毛腿速递</title>
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
<script type="text/javascript" src="js/myjs/layer.min.js"></script>

<div id="adwarp">
  <div class="m_banner">
    <div class="banner" style="background-image: url(http://img.zto.cn/ServiceFiles/636228385142123841.jpg);" id="banner1">
      <a target="_blank" title="飞毛腿人的一天"></a>
    </div>
    <div class="banner_ctrl"><a href="#" class="prev" title=""></a><a href="javascript:;" class="next" title=""></a></div>

    <div class="w980 mauto oh">
      <div class="searchbox">
        <ul class="title">
          <li class="current"><a>运单查询</a></li>
          <li id="tab_onlineShipping"><a href="send" target="_blank">预约寄件</a></li>
        </ul>
        <div class="bd">
          <div class="part1">
            <form action="#" method="GET" name="formbill" target="_blank" id="formbill">
              <textarea id="txtbill" name="txtbill" rows="20" placeholder="请输入要查询的单号"></textarea>
              <div class="clean" id="cleanbill">清除</div>
              <div class="makesure" id="btn_onlineTracking" onclick="return checkBillData()">确定</div>
            </form>
          </div>

        <!--2015年圣诞节-->
        <div class="top-decorate"></div>
        <div class="left-decorate"></div>
      </div>
        </div>
    </div>
  </div>
</div>
  <div class="fastchannel">
    <ul class="clearfix">
      <li id="btn_contrabandQuery">
        <a href="#" target="_blank">
          <img src="images/base/weijin.png" width="45" height="45" />
        </a>
        <h4><a href="#">违禁品查询</a></h4>
      </li>
      <li id="btn_productService">
        <a href="#" target="_blank">
          <img src="images/base/products.png" width="45" height="45" />
        </a>
        <h4><a href="#">产品服务</a></h4>
      </li>

      <li id="btn_offerTime">
        <a href="#" target="_blank">
          <img src="images/base/money.png" width="45" height="45" />
        </a>
        <h4><a href="#">报价时效查询</a></h4>
      </li>

      <li id="btn_customerService">
        <a href="http://kefu.jx.zto.com/webim/im.html?tenantId=27801&to=systemkefu&appKey=ssy%23chat&xmppServer=im-api.jx.zto.com:5280&restServer=a1.jx.zto.com:8080" target="_blank">
          <img src="images/base/kefu11.png" width="45" height="45" />
        </a>
        <h4><a href="http://kefu.jx.zto.com/webim/im.html?tenantId=27801&to=systemkefu&appKey=ssy%23chat&xmppServer=im-api.jx.zto.com:5280&restServer=a1.jx.zto.com:8080" target="_blank">在线客服</a></h4>
      </li>

    </ul>
  </div>

  <script type="text/javascript">
  $(function () {
    var $div_li = $(".branchsearch .title .fr ul li");
    $div_li.click(function () {
      $(this).addClass("on").siblings().removeClass("on");
      var index = $div_li.index(this);
      $(".branchbd > .part1").eq(index).show().siblings().hide();
    }).hover(function () {
      $(this).addClass("hover");
    }, function () {
      $(this).removeClass("hover");
    });
  });

  $(function () {
    var $div_li = $(".newslist .title ul li");
    $div_li.click(function () {
      $(this).addClass("on").siblings().removeClass("on");
      var index = $div_li.index(this);

      $(".newsbd > .part1")
              .eq(index).show()
              .siblings().hide();
    }).hover(function () {
      $(this).addClass("hover");
    }, function () {
      $(this).removeClass("hover");
    });
//清空单号
    $("#cleanbill").click(function () {
      $("#txtbill").val("");
    });
  });
  function checkBillData() {
    var arrChk = $("input[name^=checkbox]:checked");
    if (arrChk.length <= 0) {
      if (checkBill("1")) {
        $("#formbill").prop("action", "#");
        document.formbill.submit();
      } else {
        return false;
      }
    } else {
      if (checkBill("0")) {
        $("#formbill").prop("action", "#");
        document.formbill.submit();
      } else {
        return false;
      }
    }
  };
</script>
<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>

<link rel="stylesheet" href="css/css/jquery.css" type="text/css" />
</body>
</html>
