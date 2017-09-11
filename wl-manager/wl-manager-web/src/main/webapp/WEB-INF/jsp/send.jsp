<%--
  Created by IntelliJ IDEA.
  User: fxf
  Date: 2017/9/6
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>预约寄件</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <%-- <meta http-equiv="pragma" content="no-cache" />
   <meta http-equiv="cache-control" content="no-cache" />
   <meta http-equiv="expires" content="0" />
   <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
   <meta http-equiv="description" content="This is my page" />--%>
  <link href="css/css/css.css" type="text/css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/css/ligerui-dialog.css"/>
  <link href="css/css/ligerui-icons.css" rel="stylesheet" type="text/css" />
  <link href="css/css/style.css" rel="stylesheet"/>
  <link href="css/css/validate.css" rel="stylesheet" />
  <link href="css/css/pager.css" type="text/css" rel="stylesheet" />
  <script src="js/plugins/base.js"></script>
  <script src="js/plugins/ligerDrag.js"></script>
  <script src="js/plugins/ligerDialog.js"></script>
  <script src="js/plugins/ligerResizable.js"></script>
  <script src="js/plugins/jquery-1.11.0.js"></script>
  <script src="js/plugins/jquery-migrate-1.2.1.js"></script>
  <script src="js/plugins/jquery-1.4.2.js"></script>
  <script type="text/javascript">
    /*$(function(){
      $('#orderForm').submit(function(){
        var name = $('#name');
        var phone = $('#phone');
        var tel = $('#tel');
        var address = $('#address');
        var msg = "";
        /!*debugger;*!/
        if($.trim(name.val())==""){
          /!*alert("++++++++++++++++++");*!/
          msg = "姓名不能为空";
          name.focus;
        }else if($.trim(phone.val())==""){
          msg = "手机号码不能为空！";
          phone.focus();
        }else if (!/^1[3|5|8]\d{9}$/.test($.trim(phone.val()))){
          msg = "手机号码格式不正确！";
          phone.focus();
        }else if (!/^0\d{2,3}-?\d{7,8}$/.test($.trim(tel.val()))){
          msg = "电话号码格式不正确！";
          tel.focus();
        }else if($.trim(address.val())==""){
          msg = "地址不能为空！";
          address.focus();
        }
        alert("msg:"+msg);
        if (msg.length>0&&msg!=""){
          $.ligerDialog.error(msg);
          alert("执行returnfalse了吗？");
          return false;
        }else{
          return true;
        }
        $('orderForm').submit();
      });
    });*/

    var oncheckname = false;
    function onnamechange(){
      var name = $('#name').val();
      if(name.length>0&&name.length!=""){
        oncheckname = true;
      }else{
        oncheckname = false;
        alert("姓名不能为空");

      }
    }
    var oncheckphone = false;
    function onphonechange(){
      var phone = $('#phone').val();
      if(phone.length>0&&phone.length!=""){
        oncheckphone = true;
      }else{
        oncheckphone = false;
        alert("手机号不能为空");
      }
      if(!/^1[3|5|8]\d{9}$/.test(phone)){
        oncheckphone = false
        alert("手机号格式不对");
      }else{
        oncheckphone = true;
      }
    }
    var onchecktel = false;
    function ontelchange(){
      var tel = $('#tel').val();
      if(!/^0\d{2,3}-?\d{7,8}$/.test(tel)){
        onchecktel = false;
        alert("电话号码格式错误");
      }else{
        onchecktel = true;
      }
    }
    var oncheckaddress = false;
    function onaddresschange(){
      var address = $('#address').val();
      if(address.length>0&&address.length!=""){
        oncheckaddress = true;
      }else{
        oncheckaddress = false;
        alert("地址不能为空");
      }
    }
    function sendsubmit(){
      var checkcode = true;
      if(checkcode==oncheckname&&oncheckphone&&onchecktel&&oncheckaddress){
        return true;
      }else{
        return false;
      }
    }
  </script>

  <style type="text/css">
    .main table tr td {
      position: relative;
    }
    /*.Protocol {position:relative;
  </style>
  <script src="js/core.js"></script>

</head>
<body>
<div class="head">
  <div class="header">
    <a href="index">回到飞毛腿官网</a>
    <ul class="login_ul">

    </ul>
  </div>
</div>
<nav>
  <div class="menu">
    <img src="images/send/itui.png" class="zto" />
    <div class="index_menu">
      <a href="index">首页</a>
      <a href="send">在线寄件</a>
    </div>
  </div>
</nav>
<div class="banner">
  <div class="banner_div">
    <img src="images/send/index_banner.jpg" />
  </div>
</div>
<div>
  <form action="saveAppoin" class="bl-form bl-formhor orderform" id="orderForm" method="post">
    <div class="main">
      <div><span style="font-size: xx-large">请填写预约信息</span></div>
      <ul class="tabwrap">
        <li>
          <div class="tit"> <div>寄件人姓名：</div> <div class="hintRed">*</div></div>
          <div class="inp pos"><input type="text" onchange="onnamechange();" id="name" name="name" placeholder="请输入寄件人姓名" datatype="*" errormsg="" nullmsg="寄件人姓名不能为空" sucmsg=" "  /></div>
        </li>
        <li class="phone">
          <div class="tit"><div>手机：</div> <div class="hintRed">*</div></div>
          <div class="phoneTxt ">
            <div class="mP pos">
              <input type="text" onchange="onphonechange();" id="phone" name="phone" placeholder="请输入手机号" datatype="m"  />
            </div>
            <div class="gp ">
              <div>固定号码：</div>
              <div class="pos"><input type="text" onchange="ontelchange();" id="tel" name="tel"  placeholder="请输入固定号码" /></div>
            </div>
          </div>
        </li>
        <li>
          <div class="tit"><div>详细地址：</div><div class="hintRed">*</div></div>
          <div class="inp pos">
            <input type="text" id="address" onchange="onaddresschange();" name="address" placeholder="请精确到街道 门牌信息" datatype="*" />
          </div>
        </li>
      </ul>

    </div>
    <div class="Protocol">
      <input type="submit" onclick="return sendsubmit();" value="确定" class="yes" id="btnSubmit" />
    </div>
  </form>
</div>

<!--在线客服-->
<div class="service">
  <ul>
    <li class="service_frist"><a href="http://jxkf.zt-express.com:8090/csweb/cs?source=ztoweb&type=1" target="_blank" style="color:#fff;"><em></em><i>在线客服</i></a></li>
    <li class="service_second"><a href="#"><em></em><i>TOP</i></a></li>
  </ul>
</div>


<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>

<script src="js/send/Validform.js"></script>
</body>
</html>
