<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- 
    Document   : project_new
    Created on : Nov 26, 2017, 11:52:21 PM
    Author     : greta
--%>

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<jsp:include page="header_admin.jsp"/>

<div class="container">
    <form:form id="newproject" method="POST" action="newproject" commandName="project" modelAttibute="project">
        <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <h4 class="bordboth4"><i class="fa fa-map-marker"></i> Project</h4>
                        <td><form:hidden path="id" /></td>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <form:input path="name" id="name" class="form-control" type="text" placeholder="Enter name" name="name" />
                        </div>
                        <div class="form-group">
                            <label for="style">Style</label>
                            <form:input path="style" type="text" class="form-control" id="style" placeholder="Enter style" name="style" />
                        </div>
                        <div class="form-group">
                            <label for="price">Cost</label>
                            <form:input path="price" type="text" class="form-control" id="cost" placeholder="Enter cost in Eur" name="cost" />
                        </div>
                        <div class="checkbox">
                            <label>
                                <input id="visibility" type="checkbox" name="visibleToCustomers" /> 
                                Make it visible to customers
                            </label>
                        </div>
                    </div>
                </div>
              </div>
            </div>

            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                      <div class="well">
                        <h4 class="bordboth4"><i class="fa fa-map-marker"></i> Photos</h4>
                        <div class="form-group form-inline">
                            <!--form method="POST" action="addPhotos" enctype="multipart/form-data">
                                <input type="text" name="name" class="form-control" id="photoName" placeholder="Name">
                                <input type="file" accept="image/*" class="form-control" id="image" name="image" value="Upload photo">
                                <a class="btn btn-primary" href="#">Upload</a>
                            </form-->
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <div class="well">
                    <button type="submit" class="btn btn-primary">New project</button>
                </div>
            </div>
        </div>          
    </form:form>
</div>

<jsp:include page="footer.jsp"/>

