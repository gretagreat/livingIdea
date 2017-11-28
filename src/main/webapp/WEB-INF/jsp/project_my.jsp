<%-- 
    Document   : project_my
    Created on : Nov 28, 2017, 12:57:22 AM
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
    <form>
        <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                    <div class="well">
                        <div class="form-group">
                            <label for="name">Style</label>
                            <div class="radio">
                                <label><input type="radio" name="optradio">Bohemian</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="optradio">Farmhouse</label>
                            </div>
                            <div class="radio disabled">
                                <label><input type="radio" name="optradio" disabled>Industrial</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="optradio" disabled>Nautical</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="optradio" disabled>Modern</label>
                            </div>
                            <div class="radio disabled">
                                <label><input type="radio" name="optradio" disabled>Scandinavian</label>
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
                            <a class="btn btn-success" href="#">Generate price</a>                         
                        </div>                       
                    </div>
                                     
                    <div class="col-md-12">
                        <div class="well">
                            <h2>0 Eur</h2>
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

