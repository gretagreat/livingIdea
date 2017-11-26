<%-- 
    Document   : login_admin
    Created on : Nov 26, 2017, 11:12:31 PM
    Author     : greta
--%>

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<jsp:include page="header.jsp"/>

<div class="col-md-12">
    <div class="modal-dialog" style="margin-bottom:0">
        <div class="modal-content">
            <div class="panel-heading">
                <h3 class="panel-title"><strong>Sign In</strong></h3>
            </div>
            <div class="panel-body">
                <form role="form">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="username" name="username" type="text" autofocus="" required>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="password" name="password" type="password" value="" required>
                        </div>
                        <a href="admin" class="btn btn-sm btn-default">Login</a>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
