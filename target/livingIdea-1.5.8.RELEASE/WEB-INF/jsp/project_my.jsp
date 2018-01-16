<%-- 
    Document   : project_my
    Created on : Nov 28, 2017, 12:57:22 AM
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

<jsp:include page="header.jsp"/>

<div class="container">
    <form  action="${pageContext.request.contextPath}/showmyproject" method="post">
        <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <div class="form-group">
                            <label for="name">Style</label>
                            <c:forEach var="project" items="${projects}">
                            
                                  <div class="radio">
                                <label><input type="radio" name="optradio" value="${project.price}">${project.style}</label>
                            </div>
                            
                            </c:forEach>
                            <div class="radio">
                                <label><input type="radio" name="optradio">Bohemian</label>
                            </div>
                 
                        </div>
                    </div>
                </div>
              </div>
            </div>

            <div class="col-md-6">               
                <div class="row">
                    <div class="col-md-12">
                        <div class="well">
                            <button type="submit" class="btn btn-success">Generate price</buttton>                         
                        </div>                       
                    </div>
                                     
                    <div class="col-md-12">
                        <div class="well">
                           Enter your room space(m2) <input type="number" name="space" class="form-control"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <jsp:include page="photos_inline_mix.jsp"/>
                </div>
            </div>
        </div>  
    </form>
</div>

<jsp:include page="footer.jsp"/>

