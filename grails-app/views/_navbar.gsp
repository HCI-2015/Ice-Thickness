<nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container-fluid">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <!-- This makes the button for collapsed navbar -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link controller="Home"><div class="navbar-brand title-name">Book Store</div></g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><g:link controller="Book">Books</g:link></li>
                <li><a href="#">Authors</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
        <sec:ifLoggedIn><li><a href="#"><sec:username/></a></li></sec:ifLoggedIn>
        <li>
            <sec:ifLoggedIn><g:link controller="Logout">log out</g:link></sec:ifLoggedIn>
            <sec:ifNotLoggedIn><g:link controller="login" action="auth">Login</g:link></sec:ifNotLoggedIn>
        </li>

    </div><!-- /.container-fluid -->
</nav>