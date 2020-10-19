@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

@section('title', $user->name . ' 的个人中心')

@section('content')

<div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 > 个人中心 > 完善资料</div></div>
<!-- shop -->
<div class="div_common">

    <div class="ww_paper">
        <div class="ww_paper_left">
            <div class="www_view">
                <P style="padding-top:7px;"><img src="/images/member.jpg" /></P>
                <div class="text">
                    <form action="{{ route('users.update', $user->id) }}" method="POST"
                          accept-charset="UTF-8" enctype="multipart/form-data">
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        @include('shared._error')
                        <P><table width="520" border="0" align="center" cellpadding="10" cellspacing="0">
                        <tr>
                            <td height="46" colspan="3" align="center" class="bline"><span>武汉欣悦医疗美容医院承诺绝不会以各种方式泄露您的个人信息。</span></td>
                        </tr>

                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">用户名：</td>
                            <td colspan="2" class="bline"><label>
                                    <input type="text" name="name" class="input" value="{{ old('name',$user->name) }}"/>
                                </label></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">上传头像：</td>
                            <td colspan="2" class="bline"><input type="file" name="avatar" class="input" style="width:300px;"/>
                                @if($user->avatar)
                                    <br>
                                    <img class="thumbnail img-responsive" src="{{ $user->avatar }}" width="200" />
                                @endif
                            </td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline"><span>*</span>性别：</td>
                            <td colspan="2" class="bline">
                                <select name="sex" id="sex">
                                    @if (old('sex',$user->sex) == '女')
                                        <option value="女">女</option>
                                        <option value="男">男</option>
                                        @else
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    @endif

                                </select>
                            </td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">兴趣爱好：</td>
                            <td colspan="2" class="bline"><input type="text" name="interest" class="input" value="{{ old('interest',$user->interest) }} "style="width:300px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">对自己不满意的部位：</td>
                            <td colspan="2" class="bline"><input type="text" name="yawp" class="input" value="{{ old('yawp',$user->yawp) }}"  style="width:300px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">职业：</td>
                            <td colspan="2" class="bline"><input type="text" name="profession" class="input" value="{{ old('profession',$user->profession) }}" style="width:200px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">居住地地址：</td>
                            <td colspan="2" class="bline"><input type="text" name="address" class="input" value="{{ old('address',$user->address) }}"  style="width:300px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">电子邮箱：</td>
                            <td colspan="2" class="bline"><input type="email" name="email" class="input" value="{{ old('email',$user->email) }}" style="width:200px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">QQ号码：</td>
                            <td colspan="2" class="bline"><input type="text" name="qq" class="input"  value="{{ old('qq',$user->qq) }}" style="width:200px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline"><span>*</span>手机号码：</td>
                            <td colspan="2" class="bline"><input type="text" name="phone" class="input"  value="{{ old('phone',$user->phone) }}" style="width:200px;"/></td>
                        </tr>

                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">身份证号码：</td>
                            <td colspan="2" class="bline"><input type="text" name="identitycard" class="input" value="{{ old('identitycard',$user->identitycard) }}"  style="width:300px;"/></td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">&nbsp;</td>
                            <td colspan="2" class="bline"><label>
                                    <div class="bt"><input name=""  type="submit" style="text-indent: -999px;"/></div>
                                </label></td>
                        </tr>
                    </table>
                    </P>
                    </form>
                </div>


            </div>

        </div>


        @include('layouts._right')
    <div class="clear"></div>
</div>
</div>
<!-- end shop -->




</body>
</html>
@endsection