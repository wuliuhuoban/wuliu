<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/12
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>飞毛腿速递</title>
  <link rel="stylesheet" href="css/main.css" type="text/css" />
</head>
<body class="main" onload="startSecond()">
<div id="divcontent">
  <table width="850px" border="0" cellspacing="0">
    <tr>
      <td style="padding:30px; text-align:center"><table width="60%"
                                                         border="0" cellspacing="0" style="margin-top:70px">
        <tr>

          <td style="padding-top:30px"><font
                  style="font-weight:bold; color:#FF0000">亲，恭喜您预约成功，我们会尽快安排工作人员上门取件，请您耐心等待！</font><br />
            <br /> <a href="index"><span id="second">3</span>秒后自动为您转跳回首页</a>
          </td>
        </tr>
      </table>
        <h1>&nbsp;</h1></td>
    </tr>
  </table>
</div>
<script>
  var interval;

  function startSecond() {

    interval = window.setInterval("changeSecond()", 1000);

  };

  function changeSecond() {
    var second = document.getElementById("second");

    var svalue = second.innerHTML;

    svalue = svalue - 1;

    if (svalue == 0) {
      window.clearInterval(interval);
      location.href = "index";
      return;
    }

    second.innerHTML = svalue;
  }
</script>
</body>
</html>
