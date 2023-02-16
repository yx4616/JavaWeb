<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>用户留言管理</title>
  <link rel="stylesheet" type="text/css" href="css/font.css">
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body topmargin="0" leftmargin="0" bottommargin="0">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="get" action="#">
    <tr bgcolor="#FFCF60">
      <td height="20" colspan="2">
        <div align="center"><font color="#FFFFFF">用户留言管理</font></div>
      </td>
    </tr>
    <tr>
      <td height="40" colspan="2" bgcolor="#333333">
        <table width="750" border="0" align="center" cellpadding="0" cellspacing="1">
          <tr>
            <td width="357" height="20" bgcolor="#FFFFFF">
              <div align="center">留言主题</div>
            </td>
            <td width="80" bgcolor="#FFFFFF">.
              <div align="center">留言者</div>
            </td>
            <td width="156" bgcolor="#FFFFFF">
              <div align="center">留言时间</div>
            </td>
            <td width="93" bgcolor="#FFFFFF">
              <div align="center">操作</div>
            </td>
            <td width="58" bgcolor="#FFFFFF">
              <div align="center">删除</div>
            </td>
          </tr>
          <c:forEach items="${list}" var="g">
            <tr>
              <td height="20" bgcolor="#FFFFFF">
                <div align="left">${g.content}</div>
              </td>
              <td height="20" bgcolor="#FFFFFF">
                <div align="center">${g.userId}
                </div>
              </td>
              <td height="20" bgcolor="#FFFFFF">
                <div align="center">${g.time}</div>
              </td>
              <td height="20" bgcolor="#FFFFFF">
                <div align="center"><a href="leavewordInfo.html">查看</a></div>
              </td>
              <td height="20" bgcolor="#FFFFFF">
                <div align="center">
                  <input type="checkbox" name="test" value=${g.id}>
                </div>
              </td>
            </tr>
          </c:forEach>
        </table>
      </td>
    </tr>
    <tr height="15px">
      <td></td>
    </tr>
    <tr>
      <td width="100%" bgcolor="#FFFFFF" align="right">
        <input type="submit" value="删除选项" class="buttoncss" onclick="show()"></td>
    </tr>
  </form>
  <script type="text/javascript">
      function show(){
          obj = document.getElementsByName("test");
          check_val = [];
          for(k in obj){
              if(obj[k].checked)
                  check_val.push(obj[k].value);
          }
          alert("删除评论id"+check_val);
          window.location.href="DeleteManger?id="+check_val;
      }
  </script>

</table>
</body>
</html>
