<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%User auth = (User) request.getSession().getAttribute("auth"); 
    	if(auth != null){
    		response.sendRedirect("index.jsp");
    	}
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tilt+Neon&display=swap" rel="stylesheet">
</head>
<body>
    
    <header id="header">
        <nav>
            <a href="index.jsp" class="logo"><h1><span class="skin">SKIN</span><span class="four">4</span><span class="life">LIFE</span></h1></a>
            <div class="nav-links" id="navLinks">
                <!-- <i class="fa fa-times" onclick="hideMenu()"></i> -->
                <ul>
                    <a href="signup.jsp" class="btn-sign">Sign Up</a>
                </ul>
            </div>
            
        </nav>
        <div class="text-box login-form">
            <form action="loginServlet" method="post" id="form-login">
                <h1>Đăng nhập</h1>
                <div class="form-group">
                    <label for="name">Tên đăng nhập</label>
                    <input type="text" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="pass">Mật khẩu</label>
                    <input type="password" name="pass" id="pass">
                </div>
                <input type="submit" value="Đăng nhập" class="btn-submit">
            </form>
            <h3>Chưa có tài khoản? <a href="signup.jsp">Đăng kí</a></h3>

        </div>
        <div class="header-img">
            <div class="logo-up">
                <img src="img/Ipad.png" alt="ipad">
                <img class="phone" src="img/phone.png" alt="phone">
            </div>
            <div class="logo-down">
                <img src="img/Logo.png" alt="logo">
            </div>
        </div>
    </header>
    <script type="text/javascript">

    </script>
</body>
</html>