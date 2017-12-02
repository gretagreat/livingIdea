<%-- 
    Document   : info
    Created on : Nov 28, 2017, 12:17:06 AM
    Author     : greta
--%>

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
                                <form method="POST" action="contact" novalidate="novalidate">
                                    <fieldset>
                                        <legend>Contact</legend>
                                        <div class="form-group">
                                            <label for="subject">Email * </label>
                                            <input class="form-control" type="email" name="subject" placeholder="Email" value="${email}"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Name and Surname * </label>
                                            <input class="form-control" type="text" name="name" placeholder="Name and Surname" value="${name}"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="message">Message * </label>
                                            <textarea class="form-control" name="message" rows="3" placeholder="Message">${msg}</textarea>
                                        </div>
                                        <div class="form-group">
                                            <p> * These fields are required.</p>
                                            <input type="submit" class="btn btn-primary" value="Send"/>
                                        </div>
                                    </fieldset>
                                </form>                            
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </div>  
               
        <jsp:include page="footer.jsp"/> 
    </body>
</html>
