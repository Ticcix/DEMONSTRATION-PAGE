<!DOCTYPE html>
<html lang="ge">
<head>
<meta charset="utf-8">
    <title>Ticcix | დემო _>{title}</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Ticcix | Study Web Dewelopmant">
    <meta name="keywords" content="multipurpose, portfolio, blog, shop, e-commerce, modern, flat style, responsive,  business, corporate, mobile, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Ticcix">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon-16x16.png">
    <link rel="manifest" href="/assets/site.webmanifest">
    <link rel="mask-icon" color="#343b43" href="/assets/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#603cba">
    <meta name="theme-color" content="#ffffff">
    <link href="/engine/skins/fonts/fontawesome/styles.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="{THEME}/ticcix/assets/devices.min.css" type="text/css">
<link rel="stylesheet" href="{THEME}/ticcix/assets/style.css" type="text/css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/hybrid.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.2/highlight.min.js"></script>
  </head>
<body >
  <section id="iphone-x" class="black">
  <div class="wrap">
    <h1 class="new">SmartPhone</h1>
    <div class="marvel-device iphone-x">
      <div class="notch">
        <div class="camera"></div>
        <div class="speaker"></div>
      </div>
      <div class="top-bar"></div>
      <div class="sleep"></div>
      <div class="bottom-bar"></div>
      <div class="volume"></div>
      <div class="overflow">
        <div class="shadow shadow--tr"></div>
        <div class="shadow shadow--tl"></div>
        <div class="shadow shadow--br"></div>
        <div class="shadow shadow--bl"></div>
      </div>
      <div class="inner-shadow"></div>
      <div class="screen" ><iframe src="{view}" width="100%" height="100%" ></iframe></div>
    </div>
    <ul class="selector">
      <li data="landscape" class="select-landscape">Landscape</li>
    </ul>
  </div>

  </div>
</section>
<section id="macbook" class="black">
  <div class="wrap">
    <h1 class="new">Desktop</h1>
    <div class="marvel-device macbook">
      <div class="top-bar"></div>
      <div class="camera"></div>
      <div class="screen"><iframe src="{view}"  width="100%" height="600px" allowfullscreen></iframe></div>
      <div class="bottom-bar"></div>
    </div>
    <a class="button grab" href="{full-link}">Back To Article</a>
  </div>
</section>

 <script type="text/javascript" src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script>$(document).ready(function(){$(document).keyup(function(a){27==a.keyCode&&$(".overlay").removeClass("activated")}),$(".cell").click(function(a){console.log(a.target),a.target==this&&$(".overlay").removeClass("activated")}),$("#tweet .button").click(function(a){a.preventDefault();var b=encodeURIComponent($(this).attr("title")+" – ");window.open("http://twitter.com/share?url=&text="+b+"&related=@marvelapp&","twitterwindow","height=450, width=550, top="+($(window).height()/2-225)+", left="+$(window).width()/2+", toolbar=0, location=0, menubar=0, directories=0, scrollbars=0")}),$(".grab").click(function(){$(this).parent().parent().find(".overlay").addClass("activated"),$(this).parent().parent().find("code").each(function(a,b){hljs.highlightBlock(b)})}),$(".selector li").click(function(){var a=$(this).closest("section"),b=a.attr("id"),c=$("#"+b+" .marvel-device"),d=$("#"+b+" .orientation"),e=$("#"+b+" .colour"),f=$(this).attr("data");return"landscape"==f?void(c.hasClass("landscape")?($(this).removeClass("selected"),c.removeClass("landscape"),d.html("")):($(this).addClass("selected"),c.addClass("landscape"),d.html(" landscape"))):(a.removeClass().addClass(f),void(c.hasClass("landscape")?($("#"+b+" .selector li").removeClass("selected"),$("#"+b+" .select-landscape").addClass("selected"),$(this).addClass("selected"),c.removeClass().addClass("marvel-device "+b+" "+f+" landscape"),e.html(" "+f)):($("#"+b+" .selector li").removeClass("selected"),$(this).addClass("selected"),c.removeClass().addClass("marvel-device "+b+" "+f),e.html(" "+f))))})});</script>
<style type="text/css">
  ::-webkit-scrollbar {
    background: transparent;
    width: 6px;
}
::-webkit-scrollbar-thumb {
    background-color: #555;
    box-shadow: inset 0 0 2px #333;
}
::-webkit-scrollbar-corner {
    background: transparent;
}

</style>
  </body>
</html>
