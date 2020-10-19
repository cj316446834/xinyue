@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

@section('title', $user->name . ' 的个人中心')

@section('content')

<div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 > 个人中心</div></div>
<!-- shop -->
<div class="div_common">

    <div class="ww_paper">
        <div class="ww_paper_left">
            <div class="www_view">
                <P style="padding-top:7px;"><img src="/images/member.jpg" /></P>
                <div class="text">
                    <P><table width="800" border="0" align="center" cellpadding="10" cellspacing="0">
                        <tr>
                            <td width="145" align="right" class="rline bline">用户名：</td>
                            <td width="361" class="bline">{{ $user->name }}</td>
                            <td width="234" rowspan="13" align="right" valign="top"><img src="/images/comment_bask_1.jpg" width="214" height="230" /></td>
                            <td><a href="{{ route('users.edit', Auth::id()) }}">完善资料</a></td>
                        </tr>

                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">性别：</td>
                            <td class="bline">女</td>
                        </tr>
                        <!--
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">生日：</td>
                            <td class="bline">1990.1.1</td>
                        </tr>
                        -->
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">兴趣爱好：</td>
                            <td class="bline">购物、旅游</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">对自己不满意的部位：</td>
                            <td class="bline">眼睛</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">职业：</td>
                            <td class="bline">学生</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">居住地地址：</td>
                            <td class="bline">汉口江岸区德玛西亚大道5662号部落小区2栋1101号</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">电子邮箱：</td>
                            <td class="bline">{{ $user->email }}</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">QQ号码：</td>
                            <td class="bline">22651154112</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">手机号码：</td>
                            <td class="bline">17025337425</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">真实姓名：</td>
                            <td class="bline">卫歆予</td>
                        </tr>
                        <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                            <td align="right" class="bline rline">身份证号码：</td>
                            <td class="bline">420002199001012248</td>
                        </tr>
                    </table>
                    </P>
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