<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/10
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>飞毛腿报价时效查询</title>
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
          </li>
          <li class="nLi " id="nva_customerService">
            <h3><a href="service">客户服务</a></h3>
          </li>
          <li class="nLi " id="nva_recruitment">
            <h3><a href="zhaopin">人才招聘</a></h3>
          </li>
          <li class="nLi " id="nav_about">
            <h3><a href="#">企业介绍</a></h3>
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

<%-- 下半部--%>
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
        <img src="images/shixiao/query.jpg" width="770" height="173" />
      </div>
      <div class="listbd">
        <div class="title">
          <div class="titleicon1">
            <img src="images/shixiao/search.png" width="26" height="22">
          </div>
          <h3>报价时效查询</h3>
        </div>

        <div class="listcontent">
          <form action="#" method="post">
              <div> 始发地：<input type="text"></div>
             <div>目的地：<input type="text"><br></div>
             <div><input id="priceSearch" class="orangebutton ml80" type="submit" value="确定"></div>
          </form>
        </div>
        <div id="s_r"   class="mt20 tc"></div>
        <div class="ps textareas">
          <h3>注释</h3>
          <ul>
            <li>1.此报价重量是按1进位处理。</li>
            <li>2.此报价为指导价仅供参考，详情请咨询中通通当地营业网点 [<a href="/GuestService/SiteQuery">网点分布</a>]</li>
            <li>3.体积重量：如果您不清楚重量，请输入长宽高计算。
              ( 注：根据国际航空运输协会（IATA）规定，轻抛货的计费重量按货物长×高×宽（CM）÷6000计算（不规则
              货物，包括圆锥、圆柱状物体按长方体计算，为长、宽、高三个方向的最大尺寸相乘）。非航空件轻抛货计费
              重量按同等体积的航空件轻抛重量减半计算。计算结果仅供参考！ )</li>
          </ul>
        </div>
        <div class="clearfix mt20"></div>
      <%--<ul>
            <li><span class="price">始发地：</span><select class="input1 w200" id="StartProvince" name="StartProvince" onchange="selectProvince(&#39;StartProvince&#39;,&#39;StartCity&#39;)">
              <option value="安徽">安徽</option>
              <option value="澳门">澳门</option>
              <option value="北京">北京</option>
              <option value="福建">福建</option>
              <option value="甘肃">甘肃</option>
              <option value="广东">广东</option>
              <option value="广西">广西</option>
              <option value="贵州">贵州</option>
              <option value="海南">海南</option>
              <option value="韩国">韩国</option>
              <option value="河北">河北</option>
              <option value="河南">河南</option>
              <option value="黑龙江">黑龙江</option>
              <option value="湖北">湖北</option>
              <option value="湖南">湖南</option>
              <option value="吉林">吉林</option>
              <option value="江苏">江苏</option>
              <option value="江西">江西</option>
              <option value="辽宁">辽宁</option>
              <option value="内蒙古">内蒙古</option>
              <option value="宁夏">宁夏</option>
              <option value="青海">青海</option>
              <option value="沙特">沙特</option>
              <option value="山东">山东</option>
              <option value="山西">山西</option>
              <option value="陕西">陕西</option>
              <option value="上海">上海</option>
              <option value="四川">四川</option>
              <option value="台湾">台湾</option>
              <option value="泰国">泰国</option>
              <option value="天津">天津</option>
              <option value="西藏">西藏</option>
              <option value="香港">香港</option>
              <option value="新疆">新疆</option>
              <option value="新西兰">新西兰</option>
              <option value="云南">云南</option>
              <option value="浙江">浙江</option>
              <option value="重庆">重庆</option>
            </select>
              <select class="input1 w200 ml10" id="StartCity" name="StartCity"><option value="淮南市">淮南市</option>
                <option value="宿州市">宿州市</option>
                <option value="滁州市">滁州市</option>
                <option value="阜阳市">阜阳市</option>
                <option value="芜湖市">芜湖市</option>
                <option value="蚌埠市">蚌埠市</option>
                <option value="淮北市">淮北市</option>
                <option value="铜陵市">铜陵市</option>
                <option value="池州市">池州市</option>
                <option value="六安市">六安市</option>
                <option value="宣城市">宣城市</option>
                <option value="亳州市">亳州市</option>
                <option value="马鞍山市">马鞍山市</option>
                <option value="合肥市">合肥市</option>
                <option value="安庆市">安庆市</option>
                <option value="黄山市">黄山市</option>
              </select>

            </li>
            <li><span class="price">目的地：</span><select class="input1 w200" id="TargetProvince" name="TargetProvince" onchange="selectProvince(&#39;TargetProvince&#39;,&#39;TargetCity&#39;)"><option value="安徽">安徽</option>
              <option value="澳门">澳门</option>
              <option value="北京">北京</option>
              <option value="福建">福建</option>
              <option value="甘肃">甘肃</option>
              <option value="广东">广东</option>
              <option value="广西">广西</option>
              <option value="贵州">贵州</option>
              <option value="海南">海南</option>
              <option value="韩国">韩国</option>
              <option value="河北">河北</option>
              <option value="河南">河南</option>
              <option value="黑龙江">黑龙江</option>
              <option value="湖北">湖北</option>
              <option value="湖南">湖南</option>
              <option value="吉林">吉林</option>
              <option value="江苏">江苏</option>
              <option value="江西">江西</option>
              <option value="辽宁">辽宁</option>
              <option value="内蒙古">内蒙古</option>
              <option value="宁夏">宁夏</option>
              <option value="青海">青海</option>
              <option value="沙特">沙特</option>
              <option value="山东">山东</option>
              <option value="山西">山西</option>
              <option value="陕西">陕西</option>
              <option value="上海">上海</option>
              <option value="四川">四川</option>
              <option value="台湾">台湾</option>
              <option value="泰国">泰国</option>
              <option value="天津">天津</option>
              <option value="西藏">西藏</option>
              <option value="香港">香港</option>
              <option value="新疆">新疆</option>
              <option value="新西兰">新西兰</option>
              <option value="云南">云南</option>
              <option value="浙江">浙江</option>
              <option value="重庆">重庆</option>
            </select>

              <select class="input1 w200 ml10" id="TargetCity" name="TargetCity"><option value="淮南市">淮南市</option>
                <option value="宿州市">宿州市</option>
                <option value="滁州市">滁州市</option>
                <option value="阜阳市">阜阳市</option>
                <option value="芜湖市">芜湖市</option>
                <option value="蚌埠市">蚌埠市</option>
                <option value="淮北市">淮北市</option>
                <option value="铜陵市">铜陵市</option>
                <option value="池州市">池州市</option>
                <option value="六安市">六安市</option>
                <option value="宣城市">宣城市</option>
                <option value="亳州市">亳州市</option>
                <option value="马鞍山市">马鞍山市</option>
                <option value="合肥市">合肥市</option>
                <option value="安庆市">安庆市</option>
                <option value="黄山市">黄山市</option>
              </select>
            </li>
            <li><span class="price">物品重量：</span><input id="weight" type="text" maxlength="3" autocomplete="off" class="input2 w200 ">
              公斤</li>
            <li><span class="price">物品体积：</span><input id="chang" type="text" maxlength="3" autocomplete="off" class="input2 w100 ">
              长（CM）<input id="kuan" type="text" maxlength="3" autocomplete="off" class="input2 w100 ml10">
              宽（CM）<input id="gao" type="text" maxlength="3" autocomplete="off" class="input2 w100 ml10">
              高（CM）
            </li>
            <li>
              <input id="priceSearch" type="button" class="orangebutton ml80" value="确 定"/></li>
          </ul>
        </div>
        <div id="s_r"   class="mt20 tc"></div>
--%>

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
