<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home_style.css">
        <script src="${pageContext.request.contextPath}/js/photos_inline.css"></script>
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }
            .bg {
                background-image: url("${pageContext.request.contextPath}/images/design_room.jpg");
                height: 100%; 
                width: 100%;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            h2 {
                font-size:8em;
                line-height:0.7em;
                color: white;
                text-align: center;
                text-shadow: 0px 2px 0px rgba(0, 0, 0, 1);
              }
        </style>
    </head>
 
    <body>
        <jsp:include page="header.jsp"/>
        <div class="bg">
            <p>&nbsp;</p>
            <h2 class="intro-lead-in">Welcome to Living iDea!</h2>
            <p>&nbsp;</p>

            <div class="col-md-12">
                <div class="carousel slide multi-item-carousel" id="theCarousel">
                    <div class="carousel-inner">
                         <div class="item active">
                             <div class="col-xs-4"><a href="#1"><img src="${pageContext.request.contextPath}/images/photos.jpg" class="img-responsive"></a></div>
                         </div>
                         <c:if test="${not empty images_lists}">
                             <c:forEach items="${images_lists}" var="image">
                                 <div class="item ">
                                     <div class="col-xs-4"><a href="#1"><img src="data:image/jpg;base64,${image}"></a></div>
                                 </div>                      
                             </c:forEach>
                         </c:if>    
                    </div>
                </div>
                <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
            </div>
                         
        </div>
        <jsp:include page="footer.jsp"/> 
    </body>
</html>

