<%--
  Created by IntelliJ IDEA.
  User: zhouxiaoyi
  Date: 2017/9/1 0001
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<div id="toolbar">
  <div style="padding: 5px; background-color: #fff;">
    <label>寄件人姓名：</label>
    <input class="easyui-textbox" type="text" id="fname">
    <label>运单号：</label>
    <input class="easyui-textbox" type="text" id="waybill">
    <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
    <!--注意：要加上type="button",默认行为是submit-->
    <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
  </div>
  <div>
    <%--plain:true是平滑边框,这样页面上看到的基本上是不带边框的--%>
    <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
    <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
    <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
  </div>
</div>
<table id="dg"></table>
<script>
  //day9-5,为了将模糊查询的按钮和esayui的表格融合起来
  function add(){
    wuliu.addTab('新增寄件信息','waybill-add');
  }

  function edit(){
    var selectRow = $('#dg').datagrid('getSelections');
    if(selectRow.length==0){
      alert("亲,未选择栏位");
      return;
    }
    if(selectRow.length>1){
      alert("亲,只能选择一个栏位");
      return;
    }
    $.messager.confirm('确认','确认要编辑吗?',function(r){

      if(r){//执行删除
        //var tbwaybill = selectRow[0];
        //var json = JSON.parse(selectRow[0]);
        wuliu.addTab('编辑寄件信息','waybill-edit?id='+selectRow[0].id);//创建选项卡,并发出请求,访问jsp
        console.log(selectRow[0].id);//这里执行到了,数据也正常
        //alert(selectRow[0]);
      }
    });

  }
  function searchForm(){
    $('#dg').datagrid('load',{
      fname: $('#fname').val(),
      waybill: $('#waybill').val()
    });
  }
  function remove(){
    var selectRows = $('#dg').datagrid('getSelections');
    if(selectRows.length==0){
      alert("亲,未选择栏位");
      return;
    }
    $.messager.confirm('确认','确认要删除吗?',function(r){

      if(r){//执行删除
        var ids=[];
        for(var i= 0;i<selectRows.length;i++){
          ids.push(selectRows[i].id)
        }
        console.log(ids);//这里执行到了,数据也正常
        $.ajax({

          "url":"waybill/deleteById",
          "type":"post",

          "data":{"ids[]":ids},//必须要写成ids[]????
          "success":function(data){
            console.log(data);
            if(data>0){
              $('#dg').datagrid('reload');
            }

          },
          "dataType":"json"

        });
      }
    });
  }

  //datagrid是easyUI的表格
  $('#dg').datagrid({
    url:'waybills',
    toolbar:"#toolbar",
    pagination:true,
    fit:true,
    multiSort:true,

    columns:[[
      {field:'ck',checkbox:true},
      {field:'id',title:'编号',sortable:true},
      {field:'waybill',title:'运单号',sortable:true},
      {field:'fname',title:'寄件人姓名'},
      {field:'faddress',title:'寄件人地址'},
      {field:'fphone',title:'寄件人电话',sortable:true},
      {field:'tname',title:'收件人姓名'},
      {field:'taddress',title:'收件人地址'},
      {field:'tphone',title:'收件人电话'},
      {field:'status',title:'订单状态',formatter:function(value){
        switch (value){
          case 0:
            return "已取件";
            break;
          case 1:
            return "寄件中";
            break;
          case 2:
            return "配送中";
            break;
          case 3:
            return "已送达";
            break;
          dafault:
            return "未知";
            break;
        }

      }
      },
      {field:'type',title:'寄件类型'},
      {field:'weight',title:'寄件重量'},
      {field:'remark',title:'备注'},
    ]]
  });
</script>


</body>
</html>
