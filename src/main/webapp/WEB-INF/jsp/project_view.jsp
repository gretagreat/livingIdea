<%-- 
    Document   : project_edit
    Created on : Nov 27, 2017, 12:24:20 AM
    Author     : greta
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home_style.css">
    <script src="${pageContext.request.contextPath}/js/photos_inline.css"></script>
</head>

<jsp:include page="header.jsp"/>
                       
<div class="container">
   
        <div class="row">
            <form id="viewproject" modelAttibute="project">
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-12">
                        <div class="well">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" value="${project.name}" readonly/>
                            </div>
                            <div class="form-group">
                                <label for="name">Style</label>
                                <input type="text" class="form-control" id="style" value="${project.style}" readonly/>
                            </div>
                            <div class="form-group">
                                <label for="name">Cost</label>
                                <input type="text" class="form-control" id="price" value="${project.price}" readonly/>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
            </form>
            
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <div class="container">
                        <div class="row">
                           <div class="col-md-12">
                               <div class="carousel slide multi-item-carousel" id="theCarousel">
                                   <div class="carousel-inner">
                                        <div class="item active">
                                            <div class="col-xs-4"><a href="#1"><img src="${pageContext.request.contextPath}/images/photos.jpg" class="img-responsive"></a></div>
                                        </div>
                                        <c:if test="${not empty images_lists}">
                                            <c:forEach items="${images_lists}" var="image">
                                                <div class="item ">
                                                    <div class="col-xs-4"><a href="#1"><img src="data:image/jpg;base64,${image}" alt="No image"></a></div>
                                                </div>                      
                                            </c:forEach>
                                        </c:if>    
                                   </div>
                               </div>
                               <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                               <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                           </div>
                        </div>
                    </div>      
                </div>
            </div>
        </div>  
    
</div>
<jsp:include page="footer.jsp"/>

