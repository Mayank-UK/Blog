<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <!--sending a csrf token in meta is good against csrf attacks-->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    
    <!-- Bootstrap -->
    <!--
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>
    <div id="app">
        <header class="bg-dark py-1 text-white" style="min-height: 10vh"> 
            
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white">
                <a class="navbar-brand" href="{{ url('/blog') }}">{{ config('app.name','Posts') }}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">      
                        <li class="nav-item"><a class="nav-link"  href="{{ url('/') }}">{{ __('Home') }}</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ url('/about') }}">{{ __('About') }}</a></li>
                        <li class="nev-item"><a class="nav-link" href="{{ url('/contact') }}">{{ __('Contact') }}</a></li>
                    </ul>

                    <ul class="navbar-nav ml-auto">
                        <!--guest is the opposite of auth which checks if user is not logged in-->
                        @guest
                            <li class="nav-item"><a class="nav-link" href="{{ route('login') }}"><span class="glyphicon glyphicon-user"></span>{{ __('Login') }}</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('register') }}"><span class="glyphicon glyphicon-log-in"></span>{{ __('Sign Up') }}</a></li>
                        @else
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Auth::user()->name }}</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    @if(Auth::user()->hasRole('manager'))
                                        <a class="dropdown-item" href="{{ url('/admin') }}">Admin</a>
                                    @endif
                                        <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">@csrf</form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </nav>
            
        </header>

        <main class="py-4" style="min-height: 80vh">
            @yield('content')
        </main>
        
        <footer class="text-center bg-dark py-4 text-white" style="min-height: 10vh">
            <p style="margin-bottom: 0px">This website is licensed under creative common license.</p>
        </footer>
    </div>
</body>
</html>