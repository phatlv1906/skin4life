<%@page import="model.doctor"%>
<%@page import="java.util.List"%>
<%@page import="dao.doctorDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%User auth = (User) request.getSession().getAttribute("auth"); 
    doctorDao docDao = new doctorDao();
    List<doctor> listDoctor =  docDao.selectAllDoctor();
    doctor getDoc = (doctor) request.getAttribute("doctor");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bác sĩ</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sanchez:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
    
    <nav class="nav-index nav-doctor">
        <!-- <a href="index.html"><img src="../img/Logo.png" alt="logo"></a> -->
        <a href="index.jsp" class="logo"><h1><span class="skin">SKIN</span><span class="four">4</span><span class="life">LIFE</span></h1></a>

        <%if(auth != null){ %>
    			<a class="btn-sign" href="logoutServlet">Logout</a>
        <%} else { %>
                <a class="btn-sign" href="login.jsp">Sign In</a>
        <%} %>
    </nav>
    <!--End header-->
    <section id="doctor-container">
        <div class="doctor-image">
            <img src="img/doctor/<%=getDoc.getImage()%>" alt="bs1">
        </div>
        <div class="doctor-info">
            <div class="row-info">
                <h3>THÔNG TIN CHUYÊN GIA</h3>   <!-- orderServlet?id=<=getDoc.getId()%> -->        
        <%if(auth != null){ %>
    			<a href="regisorder.jsp">ĐẶT LỊCH NGAY!</a>
        <%} else { %>
                <a href="login.jsp">ĐẶT LỊCH NGAY!</a>
        <%} %>
            </div>
            <div class="row-info">
                <h3><i class="fa-solid fa-user"></i>HỌ VÀ TÊN</h3> 
                <h4><%=getDoc.getName().toUpperCase()%></h4>
            </div>
            <div class="row-info">
                <h3><i class="fa-solid fa-location-dot"></i></i>NƠI CÔNG TÁC</h3> 
                <h4  style="width: 450px; margin-bottom: 5px"><%=getDoc.getHosital().toUpperCase()%></h4>
            </div>
            <div class="row-info">
                <h3><i class="fa-solid fa-circle-up"></i></i>KINH NGHIỆM</h3> 
                <h4><%=getDoc.getExp()%> NĂM</h4>
            </div>
            <div class="row-info">
                <h3><i class="fa-solid fa-stethoscope"></i></i>CHUYÊN KHOA</h3> 
                <h4><%=getDoc.getSpecial().toUpperCase()%></h4>
            </div>
            <button class="btn-doctor js-btn-doctor">XEM THÊM</button>
        </div>
    </section>
    
    <section id="feature-doctors" class="section-p1">
        <h2>Bác sĩ khác</h2>
        <p>Đội ngũ bác sĩ với nhiều năm kinh nghiệm trong lĩnh vực chăm sóc da</p>
        <div class="doctor-container">
       <%
        if(listDoctor != null){
        	for(doctor doc : listDoctor){
        		if(doc.getId() == getDoc.getId()){
        			continue;
        		}else {
        			
        		
       %>
           	<a class="doctor-item doctor-item-page" href="showDoctor?id=<%=doc.getId()%>">
                <img src="img/doctor/<%=doc.getImage()%>" alt="bs1">
                <div class="pro-des">
                    <span>Dr. <%=doc.getName() %></span>
                    <h5>115 lượt đánh giá <span>(4,5 sao)</span></h5>
                </div>
            </a>
        <% 		}
        	} 
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
            <p><strong>Address: </strong>University HUB <br>
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
        <div class="modal">
        <div class="modal-container js-propagation">
            <div class="close js-close-modal">
                <i class="fa-solid fa-xmark"></i>
            </div>      

            <div class="modal-body">
                <h1>Thông tin chi tiết bác sĩ</h1>
                <p class="js-info-doctor"><%=getDoc.getDes()%></p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        btnDoc = document.querySelector(".js-btn-doctor");
        btnClose = document.querySelector(".js-close-modal");
        btnDoc.addEventListener("click", () =>{
        modal = document.querySelector(".modal");
            openModal();
        });
        btnClose.addEventListener("click", () => {
            closeModal();
        })
        //open modal
        openModal = () =>{
            modal.classList.add('open');
        }
        closeModal = () => {
            modal.classList.remove('open');
        }
    </script>
</body>
</html>