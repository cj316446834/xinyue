<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function qq()
    {
        return \Socialite::with('qq')->redirect();
    }
    public function qqlogin()
    {
        $oauthUser = \Socialite::driver('qq')->user();
// var_dump($oauthUser->getId());
        $name=$oauthUser->getNickname();
//  // var_dump($oauthUser->getName());
//  // var_dump($oauthUser->getEmail());
        $img=$oauthUser->getAvatar();
        if(DB::table('users')->where('name','=',$name)->first()){
            $arr = array('name' => $name, 'img' => $img);
            \Session::put('hy_id', $arr);
            $cookie = cookie('hy_id', $arr);
            echo 'Login success';
            response('登陆成功')->cookie($cookie);
        }else{
            $arr = array('name' => $name, 'img' => $img);
            $info = DB::table('users')->insertGetId($arr);
            \Session::put('hy_id', $info);
            $cookie = cookie('hy_id', $info);
            echo 'Login success';
            response('登陆成功')->cookie($cookie);
        }
    }

    //获取微博登录页面
    public function weibo() {
        return \Socialite::with('weibo')->redirect();
        // return \Socialite::with('weibo')->scopes(array('email'))->redirect();
    }
    //获取登录用户信息
    public function callback() {
        $oauthUser = \Socialite::with('weibo')->user();
        var_dump($oauthUser->getId());
        var_dump($oauthUser->getNickname());
        var_dump($oauthUser->getName());
        var_dump($oauthUser->getEmail());
        var_dump($oauthUser->getAvatar());
    }
}
