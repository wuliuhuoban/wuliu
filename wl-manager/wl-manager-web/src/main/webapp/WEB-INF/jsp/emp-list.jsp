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
        <label>员工姓名：</label>
        <input class="easyui-textbox" type="text" id="name">
        <label>职位：</label>
        <select id="jid" class="easyui-combobox">
            <option value="0">全部</option>
            <option value="1">业务部</option>
            <option value="2">会计部</option>
            <option value="3">配送部</option>
        </select>
        <label>工作地点：</label>
        <select id="cid" class="easyui-combobox">
            <option value="0">全部</option>
            <option value="1">北京</option>
            <option value="2">上海</option>
            <option value="3">广州</option>
            <option value="4">深圳</option>
        </select>
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
    function add() {

    }
    function edit() {

    }
    function up() {

    }
    function down() {

    }
    function searchForm() {
        $('#dg').datagrid('load', {
            name: $('#name').val(),
            jid: $('#jid').combobox('getValue'),
            cid: $('#cid').combobox('getValue')
        });
    }
    function remove() {
        var selectRows = $('#dg').datagrid('getSelections');

        if (selectRows.length == 0) {
            alert("亲,未选择栏位");
            return;
        }
        $.messager.confirm('确认', '确认要删除吗?', function (r) {

            if (r) {//执行删除
                var ids = [];
                for (var i = 0; i < selectRows.length; i++) {
                    ids.push(selectRows[i].id)
                }
                console.log(ids);//这里执行到了,数据也正常
                $.ajax({

                    "url": "emp/deleteById",
                    "type": "post",

                    "data": {"ids[]": ids},//必须要写成ids[]????
                    "success": function (data) {
                        console.log(data);
                        if (data > 0) {
                            $('#dg').datagrid('reload');
                        }

                    },
                    "dataType": "json"

                });
            }
        });
    }

    //datagrid是easyUI的表格
    $('#dg').datagrid({
        url: 'emps',
        toolbar: "#toolbar",
        pagination: true,
        fit: true,
        multiSort: true,

        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '编号', sortable: true},
            {field: 'name', title: '员工姓名', sortable: true},
            {field: 'username', title: '员工登录名'},
            {field: 'address', title: '员工住址'},
            {field: 'phone', title: '电话'},
            {field: 'qq', title: 'QQ号码', sortable: true},
            {field: 'email', title: '邮箱'},
            {field: 'jobName', title: '职位'},
            {field: 'cityName', title: '工作地'},
        ]]
    });
</script>


</body>
</html>


</body>
</html>
