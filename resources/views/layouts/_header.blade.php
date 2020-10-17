<div id="div_hd">
    <div class="div_common">
        <div class="menu">
            @guest
            <div class="user">你好，请<a href="{{ route('login') }}" target="_blank" title="登录">登录</a> 或 <a href="{{ route('register') }}" target="_blank" title="免费注册">免费注册</a></div>
            @else
            <div class="user">你好 <a href="#" target="_blank" title="">{{ Auth::user()->name }}</a>
                <a id="logout" href="#"
                   onclick="event.preventDefault();document.getElementById('logout-form').submit();">退出登录</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            </div>
            @endguest
            <div class="helper"><a href="#" target="_blank" title="我的订单">我的订单</a><a href="#" target="_blank" title="我的购物车">我的购物车</a></div>
        </div>
        <div class="top">
            <div class="logo"><a href="/" target="_blank" title="武汉欣悦医疗美容医院"><img src="/images/logo.png" /></a></div>
            <div class="search"><div class="it"><input type="text" value="玻尿酸1元秒杀"/></div><div class="bt"><input name="" type="button"/></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>