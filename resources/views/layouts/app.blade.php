<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" ></script>

<script  src="{{asset('js/vue.js')}}"></script>

    <!-- Styles -->
    <link href="{{ asset('css/theme.css') }}" rel="stylesheet">

</head>
<body>
    <div id="app">
        @include('partials.menu') <br>
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    @include('partials.flash')
                </div>
            </div>
        </div>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
    @yield('javascripts')
</body>
</html>
