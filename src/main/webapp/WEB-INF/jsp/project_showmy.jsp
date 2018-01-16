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
  
    <body><jsp:include page="header.jsp"/>
    
           <div class="col-md-12">
               <div class="well">
                   <h2>Approximate price for your room is: ${totalprice} Eur</h2>
               </div>
           </div>
            <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <jsp:include page="photos_inline_mix.jsp"/>
                </div>
            </div>
        </div> 
    <jsp:include page="footer.jsp"/>
    </body>
</html>
