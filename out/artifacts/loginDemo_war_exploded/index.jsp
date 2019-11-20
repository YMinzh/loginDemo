<%@ page import="com.login.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: y-minzh
  Date: 2019/11/20
  Time: 下午2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

    <%
      if(session.getAttribute("user")==null){
        response.sendRedirect("/login.jsp");
        return;
      }




    %>

    <div>
      首页
      <br>
      <%
        User user = (User) session.getAttribute("user");
        out.write(user.toString());
      %>
    </div>
  </body>
</html>
