<%-- 
    Document   : project_edit
    Created on : Nov 27, 2017, 12:24:20 AM
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
    <form>
        <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Projektas Sniegas" name="name">
                        </div>
                        <div class="form-group">
                            <label for="name">Style</label>
                            <input type="text" class="form-control" id="style" placeholder="Enter style" name="style">
                        </div>
                        <div class="form-group">
                            <label for="name">Cost</label>
                            <input type="text" class="form-control" id="cost" placeholder="15 000" name="cost">
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="remember"> Make it visible to customers</label>
                        </div>
                    </div>
                </div>
              </div>
            </div>

            <div class="col-md-6">               
                <div class="row">
                    <div class="col-md-12">
                        <div class="well">
                            <a class="btn btn-success" href="#">Save</a>
                            <a class="btn btn-warning" href="#">Cancel</a>
                            <a class="btn btn-danger" href="#">Delete</a>
                        </div>
                    </div>
                                     
                    <div class="col-md-12">
                        <div class="well">
                            <h4 class="bordboth4"><i class="fa fa-map-marker"></i> Photos</h4>
                            <div class="form-group form-inline">
                                <form method="POST" action="addPhotos" enctype="multipart/form-data">
                                    <input type="text" name="name" class="form-control" id="photoName" placeholder="Name">
                                    <input type="file" accept="image/*" class="form-control" id="image" name="image" value="Upload photo">
                                    <a class="btn btn-primary" href="#" target="_blank">Upload</a>
                                </form>
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
    </form>
</div>

<jsp:include page="footer.jsp"/>
