@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

@section('title','会员注册')

@section('content')

    <div class="ww_login">
        <div class="login_bg">
            <div class="login_div">
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                <table width="320" border="0" align="center" cellpadding="7" cellspacing="0">
                    <tr>
                        <td width="63" align="right">用户名</td>
                        <td colspan="2"><input name="name" type="text" class="input form-control @error('name') is-invalid @enderror" maxlength="11"  value="{{ old('name') }}" required autocomplete="name" autofocus style="width:215px;"/></td>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </tr>
                    <tr>
                        <td width="63" align="right">邮 箱</td>
                        <td colspan="2"><input name="email" type="email" class="input form-control @error('email') is-invalid @enderror"  value="{{ old('email') }}" required autocomplete="email" style="width:215px;"/></td>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </tr>
                    <tr>
                        <td align="right">密 码</td>
                        <td width="125"><input name="password" type="password" class="input form-control @error('password') is-invalid @enderror"  required autocomplete="new-password" maxlength="18" style="width:215px;"/></td>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </tr>
                    <tr>
                        <td align="right">确认密码</td>
                        <td colspan="2"><input name="password_confirmation" required autocomplete="new-password" type="password" class="input form-control @error('password') is-invalid @enderror" maxlength="18"style="width:215px;"/></td>
                    </tr>
                    <tr>
                        <td align="center"></td>
                        <td colspan="2">已有帐号，直接<a href="{{ route('login') }}" target="_blank">登录</a>？ </td>
                    </tr>

                    <tr>
                        <td colspan="3" align="center"><div class="bt1"><input name="submit" type="submit" style="text-indent: -9999px;"/>
                            </div></td>
                    </tr>
                </table>
                </form>
            </div>
        </div>
    </div>

@endsection
