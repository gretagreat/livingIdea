<%-- 
    Document   : photos_inline
    Created on : Nov 27, 2017, 5:32:23 PM
    Author     : greta
--%>

<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home_style.css">
    <script src="${pageContext.request.contextPath}/js/photos_inline.css"></script>
</head>

<div class="container">
    <div class="row">
       <div class="col-md-12">
           <div class="carousel slide multi-item-carousel" id="theCarousel">
               <div class="carousel-inner">
                   <div class="item active">
                       <div class="col-xs-4"><a href="#1"><img src="${pageContext.request.contextPath}/images/office.jpg" class="img-responsive"></a></div>
                   </div>
                   <div class="item">
                       <div class="col-xs-4"><a href="#1"><img src="${pageContext.request.contextPath}/images/mini_living.jpg" class="img-responsive"></a></div>                 
                   </div>
                   <div class="item">
                       <div class="col-xs-4"><a href="#1"><img src="${pageContext.request.contextPath}/images/the-wheat-youth_arts.jpg" class="img-responsive"></a></div>
                   </div>
               </div>
           </div>
           <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
           <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
       </div>
    </div>
</div>        
