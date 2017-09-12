<%--
  Created by zhouxiaoyi
  User: 飞毛腿团队
  Date: 2017/9/6 0006
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>44
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>后台管理系统</title>
  <!-- 导入easyui的样式表 -->
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
  <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
  <link rel="stylesheet" href="css/common.css">
</head>
<body class="easyui-layout">
<div data-options="region:'north'" style="height:70px;padding-left:10px;">
  <h2>飞毛腿速递后台管理系统</h2>
</div>
<div data-options="region:'south'" style="padding:5px;background:#eee;">
  系统版本：V2.0
</div>
<div data-options="region:'west'" style="width:200px;">
  <div id="menu" class="easyui-accordion">
    <div title="后台人员管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <input type="hidden" id="admin" name="admin" value="${sessionScope.user.admin}">
        <li id="useradd" data-options="attributes:{'href':'user-add'}">新增人员</li>
        <%--<li id="useradd" >新增人员</li>--%>
        <li data-options="attributes:{'href':'emplist'}">查询人员</li>
        <li data-options="attributes:{'href':'emp-singer'}">个人信息</li>
      </ul>
    </div>
    <div title="物流信息管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'logistics-add'}">新增物流信息</li>
        <li data-options="attributes:{'href':'logistics-list'}">查询物流信息</li>
      </ul>
    </div>
    <div title="客户预约信息管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'appointment-add'}">新增客户预约</li>
        <li data-options="attributes:{'href':'appointment-list'}">查询客户预约</li>
      </ul>
    </div>
    <div title="客户寄件信息管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'waybill-add'}">新增寄件信息</li>
        <li data-options="attributes:{'href':'waybill-list'}">查询寄件信息</li>

      </ul>
    </div>

    <div title="报价时效信息管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'price-add'}">新增报价时效信息</li>
        <li data-options="attributes:{'href':'price-list'}">查询报价时效信息</li>
      </ul>
    </div>

    <div title="招聘信息管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'employment-add'}">新增招聘信息</li>
        <li data-options="attributes:{'href':'employment-list'}">查询招聘信息</li>
      </ul>
    </div>

    <div title="企业信息管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'enterprise-add'}">新增企业信息</li>
        <li data-options="attributes:{'href':'enterprise-list'}">查询企业信息</li>
      </ul>
    </div>

    <div title="新闻动态管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
      <ul class="easyui-tree">
        <li data-options="attributes:{'href':'news-add'}">新增新闻动态</li>
        <li data-options="attributes:{'href':'item-list'}">查询新闻动态</li>
      </ul>
    </div>
  </div>
</div>
<div data-options="region:'center'" style="background:#eee;">
  <div id="tab" class="easyui-tabs" data-options="fit:true">
    <div title="欢迎页面" style="padding:20px;">飞毛腿欢迎你</div>
  </div>
</div>
<!-- jquery -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script src="js/jquery-easyui-1.5/validator.js"></script>
<script>

  $(function () {

    //设置text需要验证
    $('input[type=text]').validatebox();
  })

</script>

<!-- 自定义脚本 -->
<script src="js/common.js"></script>
<!-- 自定义js -->

<script>

  wuliu.registerMenuEvent();
  /*$('#useradd').click(function(){

    var admin = $('#admin').val();
    alert("admin"+admin);
    if(admin==0){
      alert("你无此权限，请联系大表哥");
    }else {
      wuliu.addTab("新增人员","user-add");
    }
  });*/
</script>

</body>
</html>
