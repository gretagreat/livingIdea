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

<jsp:include page="header_admin.jsp"/>
                       
<div class="container">
   
        <div class="row">
            <form:form id="editproject" method="POST" commandName="project" action="project&id=${project.id}" modelAttibute="project">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <form:hidden path="id" id="id"/>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <form:input type="text" class="form-control" id="name" path="name" required="true"/>
                        </div>
                        <div class="form-group">
                            <label for="name">Style</label>
                            <form:input type="text" class="form-control" id="style" path="style" required="true"/>
                        </div>
                        <div class="form-group">
                            <label for="name">Cost</label>
                            <form:input type="number" min="0" class="form-control" id="cost" path="price" />
                        </div>
                        <div class="checkbox">
                            <label><form:checkbox path="visibleToCustomers" name="visibility" /> Make it visible to customers</label>
                        </div>  
                    </div>
                </div>
              </div>
            </div>

            <div class="col-md-6">               
                <div class="row">
                    <div class="col-md-12">
                        <div class="well">
                            <button class="btn btn-success" type="submit">Save</button>
                            <a class="btn btn-warning" href="<c:url value="cancel&id=${project.id}"/>">Cancel</a>
                            <a class="btn btn-danger" href="<c:url value="delete&id=${project.id}"/>">Delete</a>
                        </div>
                    </div>     
                </div>
            </div>
            </form:form>
            
            
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <div class="well">
                            <h4 class="bordboth4"><i class="fa fa-map-marker"></i> Photo of furniture</h4>
                            <div class="form-group form-inline">
                                <form method="POST" action="uploadimage" enctype="multipart/form-data">
                                    <input type="text" name="imagename" class="form-control" id="imagename" placeholder="name" required>
                                    <input type="number" min="0" name="price" class="form-control" id="price" placeholder="price" required>
                                    <input type="file" accept="image/*" class="form-control" id="image" name="image" placeholder="Upload photo" required>
                                    <input name="projectId" id="projectId" value="${projectId}" hidden>
                                    <button type="submit" class="btn btn-primary">Upload</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            
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

