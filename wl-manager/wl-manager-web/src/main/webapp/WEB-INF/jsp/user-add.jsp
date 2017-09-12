<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="添加员工" data-options="fit:true">
    <form class="userAdd" id="userAdd" name="userAdd" method="post">
        <table style="width:40%;" >
            <tr>
                <td class="label">用户名：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="username" name="username"
                           data-options="required:true" >
                </td>
            </tr>
            <tr>
                <td class="label">用户密码：</td>
                <td>
                    <input class="easyui-passwordbox" type="password" id="password" name="password"
                           showEye="false" value="123456" data-options="required:true" >
                </td>
            </tr>
            <tr>
                <td class="label">权限设置：</td>
                <td>
                    <select id="cc" class="easyui-combobox" type="admin" id="admin" name="admin"
                            style="width:100px;">
                        <option value=0>普通权限</option>
                        <option value=1>管理权限</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
                    </button>
                    <button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>
                </td>
            </tr>
        </table>

    </form>
</div>

<script type="text/javascript">
    //提交表单
    function submitForm() {
        $('#userAdd').form('submit', {
            //提交表单动作的URL地址
            url: 'insertUser',
            //在提交之前触发，返回false可以终止提交
            onSubmit: function () {
                return $(this).form('validate');
            },
            //在表单提交成功以后触发
            success: function (data) {
                clearForm();
                if(data>0){
                    $.messager.alert('消息', '添加成功！');
                    wuliu.addTab("查询人员","empedit");
                    wuliu.closeTab("新增人员");
                }else{
                    $.messager.alert('消息', '账号已存在，添加失败！');
                }
            }
        });
    }
    //表单的重置功能
    function clearForm() {
        $('#itemAddForm').form('reset');
    }
</script>
