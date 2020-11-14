<!-- footer -->
@if(isset($categoryTree))

<div id="div_ftnav">
    <div class="div_common">
        @each('layouts._category_item_foot', $categoryTree, 'category')

    </div>
</div>
<div id="div_service"></div>
<div id="div_help">
    <div class="div_common">
        <div class="s_l_a">
            <div class="s_t"><P>购物指南</P></div>
            <P><a href="{{ route('register') }}" target="_blank">免费注册</a></P>
        </div>
        <div class="s_l_a">
            <div class="s_t"><P>品质保障</P></div>
            <P><a href="#" target="_blank">售后规则</a></P>
        </div>
        <div class="s_l_a">
            <div class="s_t"><P>支付方式</P></div>


            <P><a href="#" target="_blank">支付宝快捷支付</a></P>

            <P><a href="#" target="_blank">支付宝余额付款</a></P>
            <P><a href="#" target="_blank">支付宝钱包付款</a></P>
        </div>
        <div class="s_l_a">
            <div class="s_t"><P>售后服务</P></div>
            <P><a href="#" target="_blank">价格保护</a></P>
            <P><a href="#" target="_blank">退款说明</a></P>
            <P><a href="#" target="_blank">取消订单</a></P>
        </div>
        <div class="s_l_b">
            <div class="s_t"><P>官方合作</P></div>
            <P><img src="/images/footer_help_alipay.jpg" /></P>
        </div>
    </div>
</div>

@endif
@include('layouts._minfoot')