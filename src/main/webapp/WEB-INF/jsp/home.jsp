<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
 
    <body>
        <jsp:include page="header.jsp"/>

        <div class="container"> 
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well"> 
                                <jsp:include page="photos_inline_modern.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>  

        <div class="container"> 
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well">                                  
                                <jsp:include page="photos_inline_classic.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>                        

        <div class="container"> 
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well">                                  
                                <jsp:include page="photos_inline.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>  
        
        <jsp:include page="footer.jsp"/> 
    </body>
</html>

