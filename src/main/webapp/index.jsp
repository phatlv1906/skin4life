<%@page import="dao.doctorDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.doctor"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%User auth = (User) request.getSession().getAttribute("auth"); 
    doctorDao docDao = new doctorDao();
    List<doctor> listDoctor =  docDao.selectAllDoctor();
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sanchez:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
    
    <header id="header">
        <nav class="nav-index">
            <!-- <a href="index.jsp"><img src="../img %>" alt="logo"></a> -->
            <a href="index.jsp" class="logo"><h1><span class="skin">SKIN</span><span class="four">4</span><span class="life">LIFE</span></h1></a>
            <div class="nav-links" id="navLinks">
                <!-- <i class="fa fa-times" onclick="hideMenu()"></i> -->
                <ul>
                    <li><a href="index.jsp">TRANG CHỦ</a></li>
                    <li><a href="#service">DỊCH VỤ</a></li>
                    <li><a href="#feature-doctors">VỀ CHÚNG TÔI</a></li>
                   <%if(auth != null){ %>
                    <li><a href="index.jsp">WELCOME <%=auth.getName().toUpperCase()%></a></li>
                    <%} else { %>
                    <li><a href="login.jsp">TÀI KHOẢN</a></li>
                    <%} %>
                </ul>
            </div>
            <%if(auth != null){ %>
    			<a class="btn-sign" href="logoutServlet">Logout</a>
             <%} else { %>
                <a class="btn-sign" href="login.jsp">Sign In</a>
             <%} %>
            
        </nav>
        <div class="text-box logo">
            <h1>Chào mừng đến với <span>Skin4life.com</span></h1>
            <p>Chúng tôi mong muốn mang lại dịch vụ tốt nhất về chăm sóc da</p>
            <a href="" class="hero-btn">Xem thêm</a>
            <img src="img/app.png" alt="download">
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
    <!--End header-->
    <section id="service">
        <div class="feature-box">
            <img src="img/feature/product.png" alt="f1">
            <h6>Mỹ phẩm</h6>
        </div>
        <div class="feature-box">
            <img src="img/feature/premium.png" alt="f1">
            <h6>Premium</h6>
        </div>
        <div class="feature-box">
            <img src="img/feature/satge.png" alt="f1">
            <h6>Lộ trình</h6>
        </div>
        <div class="feature-box">
            <img src="img/feature/tuvan.png" alt="f1">
            <h6>Tư vấn</h6>
        </div>
        <div class="feature-box">
            <img src="img/feature/setting.png" alt="f1">
            <h6>Cài đặt</h6>
        </div>
    </section>

    <!--End service-->

    <section id="feature-doctors" class="section-p1">
        <h2>Về Chúng Tôi</h2>
        <p>Đội ngũ bác sĩ với nhiều năm kinh nghiệm trong lĩnh vực chăm sóc da</p>
        <div class="doctor-container">
       <%
        if(listDoctor != null){
        	for(doctor doc : listDoctor){
       %>
           <a class="doctor-item" href="showDoctor?id=<%=doc.getId()%>">
                <img src="img/doctor/<%=doc.getImage()%>" alt="bs1">
                <div class="pro-des">
                    <span>Dr. <%=doc.getName() %></span>
                    <h5>115 lượt đánh giá <span>(4,5 sao)</span></h5>
                </div>
            </a>
        <%} 
        }
       	%>    
        </div>
    </section>
    <!--End Doctor-->
    <!--Footer-->
    <footer class="section-p1">
        <div class="col">
            <a href="index.html" class="logo"><h1><span class="skin">SKIN</span><span class="four">4</span><span class="life">LIFE</span></h1></a>
            <h4>Contact</h4>
            <p><strong>Address: </strong>526 Wlling Bod Road, Street 32 <br>
            <strong>Phone:</strong> 05464647732 <br>
            <strong>Hours:</strong> 10:00 - 22:00 Mon - Sat</p>
            <div class="follow">
                <h4>Follow Us</h4>
                <div class="icon">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                    <a href=""><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>
        </div>
        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms and Condition</a>
            <a href="#">Contact us</a>
        </div>
        <div class="col">
            <h4>My Account</h4>
            <a href="#">Sign in</a>
            <a href="#">View cart</a>
            <a href="#">My whistlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>
        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <img src="img/app.png" alt="">
        </div>
    </footer>
    
</body>
</html>