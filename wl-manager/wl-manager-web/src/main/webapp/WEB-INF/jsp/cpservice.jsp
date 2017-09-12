<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/7
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>产品服务</title>

</head>
<body>
<%@include file="head.jsp"%>

<%--下半身--%>
<div id="content">
  <div class="contentwarp clearfix">
    <%--下面左半部分布局--%>
    <div class="fl w190" style="float: left;">
      <div class="servicepd">
        <div class="title1">
          <div class="titleicon">
            <img src="images/service/serviceicon-1.png" width="29" height="26" />
          </div>
          <div class="text">服务产品</div>
        </div>
        <div>
          <div class="vtitle"><em class="v  "></em>时效件</div>
          <div class="vcon" style="display: block ">
            <ul class="vconlist clearfix">
              <li id="m1" onclick="go(1)" class="select" ><a href="javascript:;;">8小时同城区域当天件</a></li>
              <li id="m2" onclick="go(2)" class="select"><a href="javascript:;;">12小时次晨达</a></li>
              <li id="m3" onclick="go(3)" class="select"><a href="javascript:;;">12小时次日达</a></li>
              <li id="m4" onclick="go(4)" class="select"><a href="javascript:;;">36小时隔日上午达</a></li>
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
    </div>
    <%--下面右半部的布局--%>
    <div class="fr w770">
      <div class="ad">
        <img src="images/banner.jpg" width="770" height="173" />
      </div>
      <div class="clearfix mt20 textareas serviceProduct">
        <div class="fl w550" id="c1" style="float: left; display: block;">
          <h2>8小时同城区域当天件</h2>
          <p>同城区域当天件是指：在同一个城市范围内，当天取件当天送达的快递服务</p>
          <h2>特点</h2>
          <p>1. 通过国内先进快递业务系统、视频监控系统、GPS全球定位系统和新一代手持终端全程跟踪快件状态，确保客户的快件在飞毛腿网络高速运转。</p>
          <p>2.时效保证<br/>
            飞毛腿特别开辟8小时同城区域当天件绿色安全通道，让您的快件一路领先。</p>
        </div>
        <div  class="fl w550" id="c2" style="float: left; float: left;display: none;">
          <h2>12小时次晨达</h2>
          <p>是指在指定的开办范围内当天收寄的飞毛腿快件，通过飞毛腿合作航空公司运输在次日上午11：00前完成投递的飞毛腿特快专递业务。</p>
          <h2>特点</h2>
          <p>1. 通过国内先进快递业务系统、视频监控系统、GPS全球定位系统和新一代手持终端全程跟踪快件状态，确保客户的快件在飞毛腿网络高速运转。</p>
          <p>2.时效保证<br/>
            飞毛腿特别开辟12小时同城区域当天件绿色安全通道，让您的快件一路领先。</p>
        </div>
        <div  class="fl w550" id="c3" style="float: left; float: left;display: none;">
          <h2>12小时次日达</h2>
          <p>今发明至，即今天寄件次日通过飞毛腿合作航空公司运输送达目的地客户手中，承诺时间：24小时内（最快16小时门到门送达）。</p>
          <h2>特点</h2>
          <p>1. 通过国内先进快递业务系统、视频监控系统、GPS全球定位系统和新一代手持终端全程跟踪快件状态，确保客户的快件在飞毛腿网络高速运转。 </p>
          <p>2.时效保证<br/>
            飞毛腿特别开辟12小时同城区域当天件绿色安全通道，让您的快件一路领先。</p>
          <h2>时效定义</h2>
          <p>以寄件时间（北京时间）为准，最晚在24小时内递送到目的地客户手中。 </p>
        </div>
        <div  class="fl w550" id="c4" style="float: left; float: left;display: none;">
          <h2>36小时次日达</h2>
          <p>即今天寄件次日通过飞毛腿合作航空公司运输送达目的地客户手中，承诺时间：36小时内（最快当天取件第三天上午12点前送达）。</p>
          <h2>特点</h2>
          <p>1. 快件全程跟踪
            通过国内先进快递业务系统、视频监控系统、GPS全球定位系统和新一代手持终端确保客户的快件在飞毛腿网络高速运转。</p>
          <p>2. 飞毛腿特别开辟36小时隔日上午达绿色安全通道，让您的快件一路领先。 </p>
          <h2>2.时效定义</h2>
          <p>以寄件时间（北京时间）为准，最晚在36小时内递送到目的地客户手中。 </p>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  function go(n){
    var select = document.getElementsByClassName('select');
    // var detail = document.getElementsByClassName('detail');
    for(var i=1;i<=select.length;i++){
      document.getElementById('c'+i).style.display='none';
    }
    document.getElementById('c'+n).style.display="";
  }
  /*var shixiao= document.getElementsByClassName('shixiao')[0]
   var vcon = document.getElementsByClassName('vcon')[0];
   shixiao.addEventListener('click',function(){
   if(vcon.style.display == 'none'){
   vcon.style.display = 'block';
   }
   else{
   vcon.style.display = 'none';
   }
   })*/

</script>

<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<script type="text/javascript" src="js/myjs/layer.min.js"></script>
</body>
</html>