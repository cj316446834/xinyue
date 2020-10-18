@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

@section('title', '收货地址')

@section('content')
<div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 > 收货地址</div></div>
<!-- shop -->
<div class="div_common">

    <div class="ww_paper">
        <div class="ww_paper_left">
            <div class="www_view">
                <P style="padding-top:7px;"><img src="/images/member.jpg" /></P>
                <div class="text">
                    <P><table width="875" border="0" align="center" cellpadding="12" cellspacing="0">
                        <caption style="background-color:#2BAEB7; color:#FFFFFF; width: 875px;line-height: 400%">收货地址列表<a href="{{ route('user_addresses.create') }}" style="float:right; margin-right: 20px;color: #fff;">新增收货地址</a></caption>
                        <tr>
                            <td width="77" align="center">收货人 </td>
                            <td width="500" align="center">地址</td>
                            <td width="68" align="center">邮编</td>
                            <td width="68" align="center">电话</td>
                            <td width="200" align="center">操作</td>
                        </tr>
                        @foreach($addresses as $address)
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="center" class="bline">{{ $address->contact_name }} </td>
                            <td align="center" class="bline">{{ $address->full_address }}</td>
                            <td align="center" class="bline">{{ $address->zip }}</td>
                            <td align="center" class="bline">{{ $address->contact_phone }}</td>

                            <td align="center" class="bline"><a href="{{ route('user_addresses.edit', ['user_address' => $address->id]) }}" class="blue" target="_blank">修改</a> | <form action="{{ route('user_addresses.destroy', ['user_address' => $address->id]) }}" method="post" style="display: inline-block">
                                    {{ csrf_field() }}
                                    {{ method_field('DELETE') }}
                                    <button class="btn btn-danger" type="submit" class="blue">删除</button>
                                </form> </td>
                        </tr>
                        @endforeach

                        <tr>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td colspan="2" align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td colspan="2" align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                    </table>
                    </P>
                </div>

        </div>



        <div class="clear"></div>
    </div>
        @include('layouts._right')
    <div class="clear"></div>

</div>
</div>
<!-- end shop -->
@endsection