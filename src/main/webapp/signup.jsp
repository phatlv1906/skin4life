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
    <title>Đăng kí</title>
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
                    <a href="login.jsp" class="btn-sign">Login</a>
                </ul>
            </div>
            
        </nav>
        <div class="text-box login-form">
            <form action="signupServlet" method="post" id="form-signup">
                <h1>Đăng kí</h1>
                <div class="form-group signup-input">
                    <label for="name">Tên đăng nhập</label>
                    <input type="text" name="name" id="name" required>
                </div>
                <div class="form-group signup-input">
                    <label for="pass">Mật khẩu</label>
                    <input type="password" name="pass" id="pass" required>
                </div>
                <div class="form-group signup-input">
                    <label for="repass">Nhập lại mật khẩu</label>
                    <input type="password" name="repass" id="repass" required>
                </div>
                <div class="form-group signup-input">
                    <label for="address">Địa chỉ</label>
                    <input type="text" name="address" id="address" required>
                </div>
                <div class="form-group signup-input">
                    <label for="phone">Số điện thoại</label>
                    <input type="text" name="phone" id="phone" required>
                </div>
                <input type="submit" value="Đăng kí" class="btn-submit" id="btn-signup">
            </form>
            <h3>Đã có tài khoản? <a href="login.jsp">Đăng nhập</a></h3>

        </div>
        <div class="header-img">
            <div class="logo-up">
                <img src="img/Ipad.png" alt="ipad">
                <img class="phone" src="../img/phone.png" alt="phone">
            </div>
            <div class="logo-down">
                <img src="img/Logo.png" alt="logo">
            </div>
        </div>
    </header>
    <Script>
        btnSignup = document.getElementById("btn-signup");
        password = document.getElementById("pass");
        repassword = document.getElementById("repass");
        phone = document.getElementById("phone");

        function isValidPhoneNumber(phoneNumber) {
            // Biểu thức chính quy kiểm tra xem chuỗi có chứa 10 đến 12 chữ số không và bắt đầu bằng số 0 hoặc số 84
            var phoneRegex = /^(0|\+84)?[0-9]{9,10}$/;
            return phoneRegex.test(phoneNumber);
        }
        btnSignup.addEventListener("click", (event) => {
            if(password.value !== repassword.value){
                alert("Mật khẩu nhập lại không khớp");
                event.preventDefault();
            }
            if(!isValidPhoneNumber(phone.value) || phone.value.length != 10){
               alert("Số điện thoại không đúng"); 
            }
        })
    </Script>
    
</body>
</html>