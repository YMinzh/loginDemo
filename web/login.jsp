<%--
  Created by IntelliJ IDEA.
  User: y-minzh
  Date: 2019/11/20
  Time: 下午3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>登录页面</h2>
    <div style="color: red;">
        <%
            if (session.getAttribute("error")!=null){
                out.write("账号或密码不匹配");
                session.removeAttribute("error");
            }


        %>
    </div>


    <form action="/doLogin.jsp" method="post">
        用户名:<input type="text" name="username">
        <br>
        密&nbsp;&nbsp;码:<input type="password" name="password">
        <br>
        <input type="submit" value="登录">
    </form>
</body>
</html>
