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
</head>

<jsp:include page="header_admin.jsp"/>
                       
<div class="container">
    <form:form id="editproject" method="POST" commandName="project" action="project&id=${project.id}" modelAttibute="project">
        <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <form:hidden path="id" id="id"/>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <form:input type="text" class="form-control" id="name" path="name" />
                        </div>
                        <div class="form-group">
                            <label for="name">Style</label>
                            <form:input type="text" class="form-control" id="style" path="style" />
                        </div>
                        <div class="form-group">
                            <label for="name">Cost</label>
                            <form:input type="text" class="form-control" id="cost" path="price" />
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
                                     
                    <div class="col-md-12">
                        <div class="well">
                            <h4 class="bordboth4"><i class="fa fa-map-marker"></i> Photos</h4>
                            <div class="form-group form-inline">
                                <!--form method="POST" action="addPhotos" enctype="multipart/form-data">
                                    <input type="text" name="name" class="form-control" id="photoName" placeholder="Name">
                                    <input type="file" accept="image/*" class="form-control" id="image" name="image" value="Upload photo">
                                    <a class="btn btn-primary" href="#" target="_blank">Upload</a>
                                </form-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <jsp:include page="photos_inline.jsp"/>
                </div>
            </div>
        </div>  
    </form:form>
</div>

<jsp:include page="footer.jsp"/>
