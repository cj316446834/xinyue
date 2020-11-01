@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
@endsection
@section('title', '重置密码')

@section('content')


    <div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 > 会员中心 > 修改密码</div></div>
    <!-- shop -->
    <div class="div_common">

        <div class="ww_paper">
            <div class="ww_paper_left">
                <div class="www_view">
                    <P style="padding-top:7px;"><img src="/images/member.jpg" /></P>
                    <div class="text">
                        <P><table width="420" border="0" align="center" cellpadding="10" cellspacing="0">
                            <form method="POST" action="{{ route('password.update') }}">
                                @csrf
                                <input type="hidden" name="token" value="{{ $token }}">
                                <tr>

                                    <td height="61" colspan="3" align="center"  class="bline"><span>欣悦医疗美容医院承诺绝不会以各种方式泄露您的个人信息。</span></td>

                                </tr>
                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                                    <td align="right"  class="bline rline">邮箱：</td>
                                    <td colspan="2"  class="bline"><label>
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                            @error('email')
                                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                            @enderror
                                        </label></td>
                                </tr>
                                <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                                    <td align="right" class="bline rline">新密码：</td>
                                    <td colspan="2" class="bline"><input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                        @error('password')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror</td>
                                </tr>
                                <tr onMouseOver="this.className='mover_comm'" onMouseOut="this.className=''">
                                    <td align="right" class="bline rline">重复新密码：</td>
                                    <td colspan="2"  class="bline"> <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password"></td>
                                </tr>

                                <tr >

                                    <td colspan="2" style="margin:0 auto; text-align: center;"  class="bline"><label>
                                            <div class="bt"><button type="submit" class="btn btn-primary">
                                                    {{ __('Reset Password') }}
                                                </button></div>
                                        </label></td>
                                </tr>
                            </form>
                        </table>

                        </P>
                    </div>

                </div>

            </div>


            @include('layouts._right')
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>

    <!-- end shop -->
@endsection


@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.update') }}">
                        @csrf

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Reset Password') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
