﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<LINK 
href="css/content.css" type=text/css rel=stylesheet>
</head>

<body>
<table width="834" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30" background="images/title01.jpg" class="title">&gt;&gt;企业信息录入</td>
    <td width="27" height="30"><img src="images/title02.jpg" width="27" height="30" /></td>
    <td height="30" bgcolor="#029AC5" class="txt">您的位置：业务管理 &gt; 企业信息管理</td>
  </tr>
</table>
<br />
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" height="30" bgcolor="#80C6FF" class="titletxt">&#8226;企业信息管理—企业信息录入（以下带<span class="txtred">*</span>为必填项）</td>
  </tr>
  <tr>
    <td height="30" align="center">
      <form id="form1" name="form1" method="get" action="${pageContext.request.contextPath}/addEnt">
      <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#E7E7E7">
        <tr>
          <td width="24%" height="30" align="right" class="txt"><span class="txt">企业编号：</span></td>
          <td height="30" align="left"><label for="textfield"></label>
            <input name="textfield" type="text" id="textfield" size="40" width="400"  height="20" required="required"/>
            <span class="txtred">*</span></td>
        </tr>
        <tr>
          <td width="24%" height="30" align="right" class="txt"><span class="txt">企业名称：</span></td>
          <td height="30" align="left"><input name="textfield2" type="text" id="textfield2" size="40" width="400"  height="20" required="required"/>
            <span class="txtred">*</span></td>
        </tr>
 
        <tr>
          <td height="30" align="right" class="txt">建立时间：</td>
          <td height="30" align="left"><input  height="20" width="200" type="text" name="textfield4" id="textfield4" /></td>
          </tr>
        <tr>
          <td height="30" align="right" class="txt">详细地址：</td>
          <td height="30" align="left"><input name="textfield6" type="text" id="textfield6" size="40"   height="20" /></td>
        </tr>
        <tr>
          <td height="30" align="right" class="txt">注册资本(万元)：</td>
          <td height="30" align="left"><span class="txtred">
            <input  height="20" width="100" type="text" name="textfield7" id="textfield7" />
          </span></td>
        </tr>
    
      </table>
        <p><input type="submit" name="button" id="button" value="  确  定  " /></p>
      </form>
    <p>&nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
