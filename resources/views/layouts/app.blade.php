<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>



    <!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


</head>
<body>

    <div class="container">
            <div class="row">
                <div class="col-md-6">
                    @if(request()->route()->getName() !== 'home')
                        <a href="{{ route('home') }}"><i class="fas fa-angle-left fa-lg"></i> Go home</a>
                    @else
                        <a href="{{ route('contacts.create') }}">Create contact</a>
                    @endif
                </div>
                <div class="col-md-6">
                    <div class="text-right">
                        <a href="{{ route('fields.index') }}">Fields list</a>
                    </div>
                </div>
            </div>

        @if(Session::has('message'))
            <div class="mb-5">
                <div class="alert alert-{{ Session::get('message-type', 'info') }}">
                    {{ Session::get('message') }}
                </div>
            </div>
        @endif
        @yield('content')
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"></script>
    @stack('script')
</body>
</html>
