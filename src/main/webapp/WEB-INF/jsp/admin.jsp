<%-- 
    Document   : admin
    Created on : Nov 26, 2017, 10:05:44 PM
    Author     : greta
--%>

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<jsp:include page="header.jsp"/>                     
    
<div class="container">
    <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <h4 class="bordboth4"><i class="fa fa-file-text"></i> New project</h4>
                    <p>Create new project and make it visible to customers.</p>
                    <a class="btn btn-primary" href="#" target="_blank">New project</a>
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
                    <a class="btn btn-primary" href="#" target="_blank">Make projects visible</a>
                    <a class="btn btn-primary" href="#" target="_blank">Make projects invisible</a>
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
                        <th>Nr </th>
                        <th>Name </th>
                        <th> </th>
                        <th><a href="#">Date </a></th>
                        <th><a href="#">Visible </a></th>
                    </tr>
                    <c:forEach var="project" items="${projects}">
                        <tr>
                            <td><a href="#"/></a></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                </table>           
            </div>
        </div>
    </div>
</div>
                                            
<jsp:include page="footer.jsp"/>


