<%-- 
    Document   : admin_footer
    Created on : Nov 26, 2017, 11:09:33 PM
    Author     : greta
--%>

<header>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Living iDea</a>
        </div>

        <div class="collapse navbar-collapse" id="mainNavBar">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="redirect:/admin">Settings</a></li>
            <li
            <form action="/logout" method="post">
                <button type="submit" >Logout</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
          </li>
          </ul>
        </div>
      </div>
    </nav>
</header>
