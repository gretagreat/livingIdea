<%-- 
    Document   : project_showmy
    Created on : 15-Jan-2018, 22:40:05
    Author     : gabijus
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head
       
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My project</title>
    </head>
    
    <body>        
        <jsp:include page="header.jsp"/>
    
        <div class="col-md-12">
            <div class="well">
                <h2>Approximate price for your room is: ${totalprice} Eur</h2>
            </div>
        </div>
        <c:if test="${not empty images}">  
            <form  action="${pageContext.request.contextPath}/showmyfurniture" method="post">
                <div class="col-md-4">
                    <div class="well">
                        <div class="form-group">
                            <label for="name">Choose the furniture you want:</label>
                                <c:forEach var="image" items="${images}">
                                    <div class="checkbox ">
                                        <label>  
                                            <input type="checkbox"  name="furniture" value="${image.id}" required>
                                            ${image.name}
                                        </label>
                                    </div>
                                </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="well">
                         <button type="submit" class="btn btn-success">Show furniture price</buttton>                         
                    </div>                       
                </div>
            </form>
        </c:if>                  
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
    <jsp:include page="footer.jsp"/>
    </body>
</html>
