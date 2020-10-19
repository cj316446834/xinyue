<!--ww_mian_right-->
<div class="ww_paper_right">

    <div class="ww_member">
        <ul>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="{{ route('users.show', Auth::id()) }}" target="_blank" class="suburl">我的资料</a></li>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="#" target="_blank" class="suburl">我的秒杀</a></li>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="#" target="_blank" class="suburl">我的团购</a></li>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="{{ route('users.edit', Auth::id()) }}" target="_blank" class="suburl">完善资料</a></li>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="{{ route('user_addresses.index') }}" target="_blank" class="suburl">收货地址</a></li>
            <li onMouseOver="this.className='member_m'" onMouseOut="this.className=''"><a href="#" target="_blank" class="suburl">修改密码</a></li>
        </ul>
    </div>

</div>
<!--ww_mian_right-->