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
</head>
<body>
<%@include file="head.jsp"%>
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
                <a href="shixiao" target="_blank">
                  <img src="images/base/money.png" width="39" height="38" /></a>
              </div>
              <h5><a href="shixiao" target="_blank">报价时效</a></h5>
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
            <li>2.此报价为指导价仅供参考，详情请咨询飞毛腿通当地营业网点 [<a href="/GuestService/SiteQuery">网点分布</a>]</li>
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
