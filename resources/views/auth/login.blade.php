@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

@section('title', '会员登陆')

@section('content')

    <div class="ww_login">
        <div class="login_bg">
            <div class="login_div">
                <form method="post" action="{{ route('login') }}">
                    @csrf
                    <table width="320" border="0" align="center" cellpadding="7" cellspacing="0">
                        <tr>
                            <td width="46" align="right">邮箱</td>
                            <td width="246" colspan="2"><input name="email" type="email" class="input form-control @error('email') is-invalid @enderror"  required autocomplete="email" autofocus value=" {{old('email')}}" /></td>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </tr>
                        <tr>
                            <td align="right">密码</td>
                            <td colspan="2"><input name="password" type="password" class="input form-control @error('password') is-invalid @enderror" maxlength="20" required autocomplete="current-password"/></td>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </tr>
                        <tr>
                            <td colspan="3" align="center"><div class="bt"><input name="submit" type="submit" style="text-indent: -9999px;"/>
                                </div></td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center"><a href="{{ route('register') }}" target="_blank">注册新帐号</a>
                                @if (Route::has('password.request'))
                                <a href="{{route('password.request')}}" target="_blank">忘记密码?</a>
                                    @endif
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">你还可以用以下方式登录</td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <a href="{{route('weibo')}}" target="_blank" style="margin-left:10px;"><img src="/images/other_login_1.png" width="48" height="48" /></a>
                                <a href="{{ route('qq') }}" target="_blank" style="margin-left:10px;"><img src="/images/other_login_2.png" width="48" height="48" /></a>
                            </td>

                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>


@endsection
