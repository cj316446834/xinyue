@if ($category['id'] < 6)


    <div class="imenu" @if($category['id'] == 1) topnav="navbeauty" attr="beauty" @elseif($category['id'] == 2) topnav="navskin" attr="skin" @elseif($category['id'] == 3 ) topnav="navmicro" attr="micro" @elseif($category['id'] == 4 ) topnav="navprivacy" attr="privacy" @elseif($category['id'] == 5 ) topnav="navbrand" attr="brand" @endif><a>{{ $category['name'] }}</a>
        <div class="submnu">
            <div @if($category['id'] == 1) id="beauty" @elseif($category['id'] == 2) id="skin" @elseif($category['id'] == 3) id="micro" @elseif($category['id'] == 4) id="privacy" @elseif($category['id'] == 5) id="brand" @endif>
                @if($category['id'] == 1) <div class="s-zx"> @elseif ($category['id'] == 2) <div class="s-pf"> @endif
                @if(isset($category['children']) && count($category['children']) > 0 )
                    @if($category['id'] == 1 || $category['id'] == 2 || $category['id'] == 3 )
                @each('layouts._category_item2', $category['children'], 'category')
                        @else
                        <ul class="li_content">
                            @each('layouts._category_item3', $category['children'], 'category')
                        </ul>
                    @endif
                    @if ($category['id'] == 1 || $category['id'] == 2)
                    </div>
                    @endif
                @endif
                @if($category['id'] == 2 || $category['id'] == 3 || $category['id'] == 4 || $category['id'] == 5)
                <div class="@if ($category['id'] == 2)piczx @else pic001 @endif ">
                    @if ($category['id'] == 2)
                    <a><img src="/images/pic_nav_{{ $category['id'] }}_1.jpg" /></a>
                    <a></a>
                    @elseif ($category['id'] == 4)
                    <a><img src="images/pic_nav_{{ $category['id'] }}_1.jpg" /></a>
                    <a><img src="images/pic_nav_{{ $category['id'] }}_2.jpg" /></a>
                    <a><img src="images/pic_nav_{{ $category['id'] }}_3.jpg" /></a>
                    <a></a>
                    @else
                    <a><img src="/images/pic_nav_{{ $category['id'] }}_1.jpg"/></a>
                    <a><img src="/images/pic_nav_{{ $category['id'] }}_2.jpg"/></a>
                    <a></a>
                    @endif
                </div>
                @endif
            </div>
        </div>
    </div>

@endif

