<%@page import="model.doctor"%>
<%@page import="java.util.List"%>
<%@page import="dao.doctorDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
     User auth = (User) request.getSession().getAttribute("auth");
     doctorDao doctorDao = new doctorDao();
     List<doctor> listDoctor =  doctorDao.selectAllDoctor();
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt lịch</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tilt+Neon&display=swap" rel="stylesheet">
</head>
<body>
    
    <header id="header">
        <nav>
            <a href="index.html" class="logo"><h1><span class="skin">SKIN</span><span class="four">4</span><span class="life">LIFE</span></h1></a>
            <div class="nav-links" id="navLinks">
                <!-- <i class="fa fa-times" onclick="hideMenu()"></i> -->
               <%if(auth != null){ %>
    			<a class="btn-sign" href="logoutServlet">Logout</a>
        		<%} else { %>
                <a class="btn-sign" href="login.jsp">Sign In</a>
        		<%} %>
            </div>
            
        </nav>
        <div class="text-box login-form">
            <form action="toorderServlet" method="post" id="form-signup">
                <h1>Đặt lịch khám</h1>
                <div class="form-group signup-input" style="display:none">
                    <input type="text" name="idkh" id="idkh" value="<%=auth.getId()%>">
                </div>
                <div class="form-group signup-input">
                    <label for="name">Họ tên khách hàng</label>
                    <input type="text" name="name" id="name" value="<%=auth.getName()%>">
                </div>
                <div class="form-group signup-input">
                    <label for="doctor">Bác sĩ khám:</label>
			        <select id="doctor" name="doctor">
			           	<%for(doctor doc:listDoctor) {
			           	%>
			           	<option value=<%=doc.getId()%>><%=doc.getName()%></option>
			           	<%} %>
			        </select>
                </div>
                <div class="form-group signup-input">
                    <label for="date">Chọn ngày khám</label>
                    <input type="date" name="date" id="date" required>
                </div>
                <div class="form-group signup-input">
                    <label for="phone">Số điện thoại</label>
                    <input type="text" name="phone" id="phone" required value="<%=auth.getPhone()%>">
                </div>
                <input type="submit" value="Đặt lịch" class="btn-submit" id="btn-signup">
            </form>

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
	    form = document.getElementById("form-signup");
	    function handleSubmit() {
	        alert("Form submitted successfully!");
	    }
	    form.onsubmit = () => {
	        handleSubmit();
	    }
    </script>
</body>
</html>