<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', '') - 武汉欣悦医疗美容医院</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="/css/theme.css" rel="stylesheet" type="text/css" />
    <link href="/css/indexcss.css" rel="stylesheet" type="text/css" />
    <script src="/javascript/jquery.js" type="text/javascript" ></script>
    <script src="/javascript/jquery.easing.1.3.js" type="text/javascript" ></script>
    <script src="/javascript/jquery.tools-1.2.7.min.js" type="text/javascript" ></script>
    <script src="/javascript/menu.js" type="text/javascript" ></script>
    <script src="/javascript/options.js" type="text/javascript" ></script>
    <script src="/javascript/special.js" type="text/javascript" ></script>
    <!--[if lte IE 6]><script src="/javascript/ie6png.js" type="text/javascript"></script>
    <script type="text/javascript">DD_belatedPNG.fix('div, ul, img, li, input , a');</script><![endif]-->
</head>
<body>
@include('layouts._header')
@yield('banner')

@yield('content')


@include('layouts._footer')
<!--
<div class="xScrollStick ft_ol">
   <div  class="div_common"><a href="/swt/" target="_blank"><img src="images/footer_online.gif" /></a></div>
</div>
<script type="text/javascript" src="javascript/footer_online.js"></script>-->

<!-- end footer -->
</body>
</html>