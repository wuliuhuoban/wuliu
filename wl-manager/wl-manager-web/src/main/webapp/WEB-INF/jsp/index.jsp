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
</head>
<body>
<%@include file="head.jsp"%>
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
              <textarea id="waybill" name="waybill" onchange="checkwaybill()" rows="20" placeholder="请输入要查询的单号"></textarea>
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
        <a href="weijinpin">
          <img src="images/base/weijin.png" width="45" height="45" />
        </a>
        <h4><a href="weijinpin">违禁品查询</a></h4>
      </li>
      <li id="btn_productService">
        <a href="cpservice">
          <img src="images/base/products.png" width="45" height="45" />
        </a>
        <h4><a href="cpservice">产品服务</a></h4>
      </li>

      <li id="btn_offerTime">
        <a href="shixiao">
          <img src="images/base/money.png" width="45" height="45" />
        </a>
        <h4><a href="shixiao">报价时效查询</a></h4>
      </li>

      <li id="btn_onlineShipping">
        <a href="shixiao">
          <img src="images/base/online.png" width="45" height="45" />
        </a>
        <h4><a href="shixiao">预约寄件</a></h4>
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
    var oncheckbill = false;
    function checkwaybill(){
      var waybill = $('#waybill').val();
      if(waybill.length!=16){
        oncheckbill = false;
        alert("亲，订单号输错了，订单号应为16位");
      }else{
        oncheckbill = true;
      }
    }


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
      $("#waybill").val("");
    });
  });
  function checkBillData() {
    var checkcode = true;
    if(checkcode==oncheckbill){
      return true;
    }else{
      return false;
    }
    /*var arrChk = $("input[name^=checkbox]:checked");
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
    }*/
  };
</script>
<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
<link rel="stylesheet" href="css/css/jquery.css" type="text/css" />
</body>
</html>
