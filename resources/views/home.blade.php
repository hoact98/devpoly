@php
$config = [
    'appName' => config('app.name'),
    'locale' => $locale = app()->getLocale(),
    'locales' => config('app.locales'),
    // 'githubAuth' => config('services.github.client_id'),
];
@endphp
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  @routes
  <title>{{ config('app.name') }}</title>
  {{-- site --}}
  <link rel="stylesheet" href="{{asset('site/css/solution.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/main.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/home.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/solution-detail.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/feedback.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/challenge.css')}}">
  <link rel="stylesheet" href="{{asset('site/css/bootstrap.min.css')}}">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper" id="app">
   
  </div>

  {{-- Global configuration object --}}
  <script>
    window.config = @json($config);
  </script>
<script src="{{asset('/js/app.js')}}"></script>
{{-- site --}}
<script src="{{asset('site/js/jquery.js')}}"></script>
<script src="{{asset('site/js/ponyfill.js')}}"></script> 
<script src="{{asset('site/js/hide-sidebar.js')}}"></script>
<script src="{{asset('site/js/css-vars-ponyfill.js')}}"></script>
<script src="{{asset('site/js/bootstrap.min.js')}}"></script>

</body>
</html>
