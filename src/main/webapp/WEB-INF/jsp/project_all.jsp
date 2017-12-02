<%-- 
    Document   : project_all
    Created on : Nov 27, 2017, 5:39:23 PM
    Author     : greta
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <jsp:include page="header.jsp"/>
       
    <div class="container">
        <c:forEach var="project" items="${projects}">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well">
                                <table class="table table-striped">
                                    <tr>
                                        <th>Name </th>
                                        <th>Style </th>
                                    </tr>
                                    <tr>
                                        <td>${project.name}</td>
                                        <td>${project.style}</td>
                                    </tr>
                                </table>                                   
                                <jsp:include page="photos_inline.jsp"/>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </c:forEach>          
    </div>  
    <jsp:include page="footer.jsp"/> 
</body>


