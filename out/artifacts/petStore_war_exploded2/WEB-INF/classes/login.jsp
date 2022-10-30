<%--
  Created by IntelliJ IDEA.
  User: pi
  Date: 2022/10/29
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sign in</title>
    <link rel="stylesheet" type="text/css" href="Login/login.css"/>
    <link rel="stylesheet" type="text/css" href="font/iconfont.css"/>

</head>

<body>
<form action="login" method="post">

    <div id="login-box">
        <h1>Login</h1>
        <div class="input-box">
            <i class="iconfont">&#xe682;</i>    <!--字体图标-->

            <input type="text" placeholder="account" />
        </div>
        <div class="input-box">
            <i class="iconfont">&#xe676;</i>      <!--字体图标-->
            <input type="password" placeholder="password" />
        </div>

        <div>
            <a href="/"><span style="font-size: x-small; color: #00ffff; ">Forgot password?</span></a>
        </div>
        <div>
        <button>Sign in</button>
            <input type="submit" value="提交" class="submit">
        </div>
        <div>
            <span style="font-size: small;float: right ">
                new to petStore?
            <a href="Register.jsp"><span style=" color: aquamarine;">create account?</span></a>
            </span>
        </div>
    </div>




</form>
</body>
</html>
