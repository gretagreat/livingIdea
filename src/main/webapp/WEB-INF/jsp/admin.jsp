<%-- 
    Document   : admin
    Created on : Nov 26, 2017, 10:05:44 PM
    Author     : greta
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <html>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
     <body>
<jsp:include page="header_admin.jsp"/>                     

<div class="container">
    <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <h4 class="bordboth4"><i class="fa fa-file-text"></i> New project</h4>
                    <p>Create new project and make it visible to customers.</p>
                    <a class="btn btn-primary" href="newproject">New project</a>
                </div>
            </div>
          </div>
        </div>
      
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                  <div class="well">
                    <h4 class="bordboth4"><i class="fa fa-file-text"></i> Visibility of projects</h4>
                    <p>Make all projects visible/isnvisible to customers.</p>
                    <a class="btn btn-primary" href="#">Make projects visible</a>
                    <a class="btn btn-primary" href="#">Make projects invisible</a>
                </div>
            </div>
          </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well">
                <h4 class="bordboth4"><i class="fa fa-file-text"></i> All projects</h4>
                <table class="table table-striped">
                    <tr>
                        <th>Name </th>
                        <th>Style </th>
                        <th> </th>
                        <th>Date </th>
                        <th>Visible </th>
                    </tr>
                    <c:forEach var="project" items="${projects}">
                        <tr>
                            <td><a href="editproject&id=<c:out value="${project.id}"/>">${project.name}</a></td>
                            <td>${project.style}</td>
                            <td></td>
                            <td>${project.date}</td>
                            <td>${project.visibleToCustomers}</td>
                        </tr>
                    </c:forEach>
                </table>           
            </div>
        </div>
    </div>
</div>
                                            
<jsp:include page="footer.jsp"/>
</body>
 </html>



