<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/7
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="css/css.css" type="text/css" rel="stylesheet"/>
<div id="toolbar">
    <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
</div>
<div>
    <input type="hidden" value="${
    'l'
    }" id="tbEmp"/>
    <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
        <tr align="center" width="60%">
            <td class="font3 fftd" align="right">用 户 姓 名：</td>
            <td class="font3 fftd" align="left">${tbEmp.userName}</td>
            <td class="font3 fftd" align="right">姓 &nbsp;&nbsp;&nbsp;名：</td>
            <td class="font3 fftd" align="left">${tbEmp.name}</td>
        </tr>
        <tr align="center" width="60%">
            <td class="font3 fftd" align="right">职 &nbsp;&nbsp;&nbsp;位：</td>
            <td class="font3 fftd" align="left">${tbEmp.jobName}</td>
            <td class="font3 fftd" align="right">工 作 地 区：</td>
            <td class="font3 fftd" align="left">${tbEmp.cityName}</td>
        </tr>
        <tr align="center" width="60%">
            <td class="font3 fftd" align="right">家 庭 地 址：</td>
            <td class="font3 fftd" align="left">${tbEmp.address}</td>
            <td class="font3 fftd" align="right"></td>
            <td class="font3 fftd" align="left"></td>
        </tr>
        <tr align="center" width="60%">
            <td class="font3 fftd" align="right">手 &nbsp;&nbsp;&nbsp;机：</td>
            <td class="font3 fftd" align="left">${tbEmp.phone}</td>
            <td class="font3 fftd" align="right">电 &nbsp;&nbsp;&nbsp;话：</td>
            <td class="font3 fftd" align="left">${tbEmp.tel}</td>
        </tr>
        <tr align="center" width="60%">
            <td class="font3 fftd" align="right">邮 &nbsp;&nbsp;&nbsp;箱：</td>
            <td class="font3 fftd" align="left">${tbEmp.email}</td>
            <td class="font3 fftd" align="right">Q Q&nbsp;&nbsp;&nbsp;&nbsp;：</td>
            <td class="font3 fftd" align="left">${tbEmp.qq}</td>
        </tr>
    </table>
</div>
</div>
