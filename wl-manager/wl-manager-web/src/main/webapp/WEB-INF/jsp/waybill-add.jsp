<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/9 0009
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<div class="easyui-panel" title="寄件信息" data-options="fit:true">

  <form class="waybillForm" id="waybillAddForm" name="waybillAddForm" method="post">
    <table style="width:100%;">
      <tr>
        <td class="label">寄件人姓名：</td>
        <td>
          <input class="easyui-textbox" type="text" data-options="required:true"
                 id="fname" name="fname" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">寄件人地址：</td>
        <td>
          <input class="easyui-textbox" type="text" data-options="required:true"
                 id="faddress" name="faddress" style="width:200px;">
        </td>
      </tr>
      <tr>
        <td class="label">寄件人电话：</td>
        <td>
          <input class="easyui-numberbox" type="text" validtype="mobile" data-options="required:true"
                 id="fphone" name="fphone" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">收件人姓名：</td>
        <td>
          <input class="easyui-textbox" type="text" data-options="required:true"
                 id="tname" name="tname" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">收件人地址：</td>
        <td>
          <input class="easyui-textbox" type="text" data-options="required:true"
                 id="taddress" name="taddress" style="width:200px;">
        </td>
      </tr>
      <tr>
        <td class="label">收件人电话：</td>
        <td>
          <input class="easyui-numberbox" type="text" validtype="mobile" data-options="required:true"
                 id="tphone" name="tphone" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">寄件类型：</td>
        <td>
          <input class="easyui-textbox" type="text" data-options="required:true"
                 id="type" name="type" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">重量：</td>
        <td>
          <input class="easyui-numberbox" type="text" data-options="required:true,min:0,precision:0"
                 id="weight" name="weight" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td class="label">备注：</td>
        <td>
          <input id="remark" name="remark" style="width:200px;">
        </td>
      </tr>

      <tr>
        <td colspan="2">
          <button onclick="submitForm()" class="easyui-linkbutton" type="button" data-options="iconCls:'icon-ok'">保存</button>
          <button onclick="clearForm()" class="easyui-linkbutton" type="button" data-options="iconCls:'icon-undo'">重置</button>
        </td>
      </tr>
    </table>

  </form>
</div>

<script type="text/javascript">
  function submitForm(){
    $('#waybillAddForm').form('submit', {
      //提交表单动作的URL地址
      url: 'waybill',
      //在提交之前触发，返回false可以终止提交
      onSubmit: function(){
        return $(this).form('validate');
      },
      //在表单提交成功以后触发
      success:function(data){
        if (data>0){
          $.messager.alert('消息','添加成功！');
          wuliu.closeTab('新增寄件信息');

          wuliu.addTab('查询寄件信息','waybill-list');
        }else{
          $.messager.alert('消息','添加失败,请重新添加！');
        }

      }
    });
  }

  function clearForm(){
    $('#waybillAddForm').form('reset');
    ue.setContent('');
  }

</script>
