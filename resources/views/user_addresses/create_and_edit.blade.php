@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
@endsection
@section('title', '新增收货地址')

@section('content')
    <div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 >  新增收货地址</div></div>
    <!-- shop -->
    <div class="div_common">

        <div class="ww_paper">
            <div class="ww_paper_left">
                <div class="www_view">
                    <P style="padding-top:7px;"><img src="/images/member.jpg" /></P>
                    <div class="text">
                        @if($address->id)
                            <form class="form-horizontal" role="form" action="{{ route('user_addresses.update', ['user_address' => $address->id]) }}" method="post">
                                {{ method_field('PUT') }}
                                @else
                        <form class="form-horizontal" role="form" action="{{ route('user_addresses.store') }}" method="post">
                            @endif
                            {{ csrf_field() }}
                        <table width="875" border="0" align="center" cellpadding="12" cellspacing="0" style="margin: 0 auto;">
                           <caption style="background-color:#2BAEB7; color:#FFFFFF; width: 875px;line-height: 400%">新增收货地址</caption>

                            <tr style="height: 50px; border-bottom: 1px solid #eee;">
                                <td><span>省:</span><input type="text" name="province" value="{{ old('province', $address->province) }}"/></td>
                                <td><span>市:</span><input type="text" name="city" value="{{ old('city', $address->city) }}"/></td>
                                <td><span>区:</span><input type="text" name="district"  value="{{ old('district', $address->district) }}"/></td>
                            </tr>
                            <tr style="height: 50px; border-bottom: 1px solid #eee;">
                                <td colspan="3"><span>详细地址:</span><input type="text" name="address" value="{{ old('address', $address->address) }}" style="width: 696px"/></td>

                            </tr>
                            <tr style="height: 50px; border-bottom: 1px solid #eee;">
                                <td colspan="3"><span>邮编:</span><input type="text" name="zip" value="{{ old('zip', $address->zip) }}" style="width: 725px"/></td>

                            </tr>
                            <tr style="height: 50px; border-bottom: 1px solid #eee;">
                                <td colspan="3"><span>姓名:</span><input type="text" name="contact_name" value="{{ old('contact_name', $address->contact_name) }}" style="width: 725px"/></td>

                            </tr>
                            <tr style="height: 50px; border-bottom: 1px solid #eee;">
                                <td colspan="3"><span>电话:</span><input type="text" name="contact_phone" value="{{ old('contact_phone', $address->contact_phone) }}" style="width: 725px"/></td>

                            </tr>

                        </table>
                            <button type="submit" class="btn btn-primary" style="margin: 0 auto; width: 100px;height: 30px; background: #2BAEB7; border: 0; color: #fff; margin-left: 360px;">提交</button>
                        </form>

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