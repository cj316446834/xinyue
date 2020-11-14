<div id="nav">
    <div class="div_common">
        <a href="#" title="1元秒杀" target="_blank" class="nav_line"><img src="/images/nav_1.jpg" width="93" height="50" /></a><a href="#" title="限时团购" target="_blank" class="nav_line"><img src="/images/nav_2.jpg" width="93" height="50" /></a><a href="#" title="幸运大转盘" target="_blank" class="nav_line"><img src="/images/nav_3.jpg" width="93" height="50" /></a>
        <!-- menu -->
        <div id="menu_bg">
            <div class="imenu_bg">

                @if(isset($categoryTree))
                        @each('layouts._category_item', $categoryTree, 'category')
                @endif
            </div>





        </div>
        <!-- menu -->
    </div>
</div>

<!-- theme -->
<div id="global_menu" class="main">
    <div class="global">
        <script type="text/javascript" charset="utf-8">
            $(function() {
                $('html').addClass('JS');
                var i = $(window).width();
                if (i > 959){ $('#items > div').css({ width: i }); }

                $("#slider").scrollable({
                    circular: true,
                    easing: 'easeOutQuad',
                    speed: 900
                }).navigator({
                    navi: '#navigation'
                }).autoscroll({
                    autoplay: true, // For autoplay change to: true
                    autopause: false, // Pauses autoscroll when hovering the slider or navigation.
                    interval: 5000 // Time bettwen scrolling
                });
                window.api = $("#slider").data("scrollable");
                $(window).resize(function() {
                    var a = 1 + window.api.getIndex(); //take away: 1 +  if you have, circular: false
                    var w = $(window).width();
                    if (w > 959) {
                        var l = a * w
                        $('#items').css({ left: + - +l });
                        $('#items > div').css({ width: w });
                    } else {
                        $('#items > div').css({ width: 960 });
                    }
                });
            });
        </script>

        <div id="mainvisual">
            <!-- slider code -->
            <div id="slider">
                <div id="items">
                    <!-- slide 1 -->
                    <div style="width: 1903px;">
                        <div class="content slides_jpg1">
                            <a href="#" target="_blank">
                                <div class="theme_url"><img src="/images/theme_url_1.jpg" /></div>
                            </a>
                        </div>
                    </div>

                    <!-- slide 2 -->
                    <div style="width: 1903px;">
                        <div class="content slides_jpg2">
                            <a href="#" target="_blank">
                                <div class="theme_url"><img src="/images/theme_url_2.jpg" /></div>
                            </a>
                        </div>
                    </div>

                    <!-- slide 3 -->
                    <div style="width: 1903px;">
                        <div class="content slides_jpg3">
                            <a href="#" target="_blank">
                                <div class="theme_url"><img src="/images/theme_url_3.jpg" /></div>
                            </a>
                        </div>
                    </div>

                    <!-- slide 4 -->
                    <!--<div style="width: 1903px;">
                        <div class="content slides_jpg4">
                                <ins>4</ins>
                        </div>
                    </div>-->

                </div>
            </div>
            <div id="navigation-wrapper">
                <span class="prev"><ins>< Previous slide</ins></span>
                <ul id="navigation">
                </ul>
                <span class="next"><ins>Next slide ></ins></span>
            </div>
        </div>
    </div>
</div>
<!-- end theme -->