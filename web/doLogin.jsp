<%@ page import="com.login.server.Check" %>
<%@ page import="com.login.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: y-minzh
  Date: 2019/11/20
  Time: 下午3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        Check check = new Check();
        User user = check.checkPassword(username,password);

        if (user != null){
            session.setAttribute("user",user);
            response.sendRedirect("/index.jsp");
        }else {
            session.setAttribute("error","用户名或者密码错误");
            response.sendRedirect("/login.jsp");
        }
    %>
</body>
</html>
