<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/10
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="easyui-panel" title="编辑个人信息" data-options="fit:true">
    <form action="empEditSubmit" class="empEditForm" id="empEditForm" name="empEditForm" method="post">
        <input type="hidden" id="id" name="id" value="${tbEmp.id}"/>
        <input type="hidden" id="uid" name="uid" value="${tbEmp.uid}"/>
        <table style="width:100%;">
            <tr>
                <td class="label" align="right">用户名：</td>
                <td><input class="easyui-textbox" type="text" id="username" name="username"
                           data-options="required:true" style="width:20%" value="${tbEmp.userName}">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">姓名：</td>
                <td><input class="easyui-textbox" type="text" id="name" name="name"
                           data-options="required:true" style="width:20%" value="${tbEmp.name}">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">密码：</td>
                <td><input class="easyui-textbox" type="password" id="password" name="password"
                           data-options="required:true" style="width:20%" value="${tbEmp.pass}">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">重复密码：</td>
                <td><input class="easyui-textbox" type="password" id="dbpassword" name="dbpassword"
                            style="width:20%" value=""  required="required"
                           validType="dbpass['#password']" >
                </td>
            </tr>
            <tr>
                <td class="label" align="right">职位：</td>
                <td>
                    <select id="jid" class="easyui-combobox" name="jid" style="width:100px;">
                        <c:forEach items="${jobs }" var="job">
                            <c:if test="${job.id==tbEmp.jid}">
                                <option value="${job.id }" selected>${job.name}></option>
                            </c:if>
                            <option value="${job.id }">${job.name }</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="label" align="right">工作地点：</td>
                <td>
                    <select id="cid" class="easyui-combobox" name="cid" style="width:100px;">
                        <c:forEach items="${citys }" var="city">
                            <c:if test="${city.id ==tbEmp.cid }">
                                <option value="${city.id }" selected>${city.name }</option>
                            </c:if>
                            <option value="${city.id }">${city.name }</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="label" align="right">家庭地址：</td>
                <td><input class="easyui-textbox" type="text" id="address" name="address"
                          style="width:40%" value="${tbEmp.address}">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">手机：</td>
                <td><input class="easyui-textbox" type="text" id="phone" name="phone"
                           style="width:20%" value="${tbEmp.phone}" data-options="validType:'phone'">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">固定电话：</td>
                <td><input class="easyui-textbox" type="text" id="tel" name="tel"
                            style="width:20%" value="${tbEmp.tel}" data-options="validType:'tel'">
                </td>
            </tr>
            <tr>
                <td class="label" align="right">邮箱：</td>
                <td><input class="easyui-textbox" type="text" id="email" name="email"
                           data-options="validType:'email'" style="width:20%" value="${tbEmp.email}">
                </td>
            </tr>
            <tr>
                    <td class="label" align="right">QQ：</td>
                <td><input class="easyui-textbox" type="text" id="qq" name="qq"
                           style="width:20%" value="${tbEmp.qq}" data-options="validType:'qq'">
                </td>
            </tr>
            <tr><td></td>
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
    function submitForm() {
        $('#empEditForm').form('submit', {
            success: function (data) {
                if (data > 0) {
                    $.messager.alert('消息', '修改成功！');
                    wuliu.addTab('个人信息', 'emp-singer');
                    wuliu.closeTab("编辑个人信息");
                    $('#dg').datagrid('reload');
                } else {
                    $.messager.alert('消息', '修改失败！')
                }
            }
        });
    }

    function clearForm() {
        $('#empEditForm').form('reset');
    }
    $.extend($.fn.validatebox.defaults.rules, {
        dbpass: {
            validator: function(value,param){
                return value == $(param[0]).val();
            },
            message: '两次密码输入不一样！'
        }
    });
    $.extend($.fn.validatebox.defaults.rules, {
        phone: {
            validator: function(value){
                return /^1[3|5|8]\d{9}$/.test(value);
            },
            message: '请输入正确的11位号码'
        }
    });
    $.extend($.fn.validatebox.defaults.rules, {
        tel: {
            validator: function(value){
                return (/^0\d{2,3}-?\d{7,8}$/.test(value))
            },
            message: '请按照区号-号码的形式输入'
        }
    });
    $.extend($.fn.validatebox.defaults.rules, {
        qq: {
            validator: function(value){
                return value.length>=6;
            },
            message: '请按照区号-号码的形式输入'
        }
    });

</script>