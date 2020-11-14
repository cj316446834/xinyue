@extends('layouts.app')
@section('style')
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
@section('title', '文章列表')
@section('banner')
@include('layouts._banner')
@stop
@section('content')

<!-- end theme -->
<div class="div_common"><div class="brenav">您现在的位置： 武汉欣悦医疗美容医院 >
        @if ($category)
            @foreach($category->ancestors as $ancestor)
                {{ $ancestor->name }} >
            @endforeach
                {{ $category->name }}
            <!-- 当前类目的 ID，当用户调整排序方式时，可以保证 category_id 参数不丢失 -->
                <input type="hidden" name="category_id" value="{{ $category->id }}">
            @endif
    </div>
</div>
<!-- shop -->
<div class="div_common">

    <div class="ww_paper">
        <div class="ww_paper_left">
            <dl>
                @foreach ($articles as $article)
                    

                <dt class="dot"><a href="#" target="_blank" title="{{ $article->title }}">{{ $article->title }}</a></dt>
                <dd><P>{{ $article->description }}<a href="#" target="_blank" class="more">详细>></a></P><P align="right">时间：{{ $article->created_at }}</P></dd>
                @endforeach



            </dl>
            <div class="pages">
                {{ $articles->links() }}
            </div>
        </div>


        <!--ww_mian_right-->
        <div class="ww_paper_right">
            <!-- special -->
            <div class=long_block_index>
                <div class=js_imgs_block>
                    <div id=slideshow_wrapper>
                        <div id=slideshow_photo><a style="z-index: 2" href="/swt/" index="1"><img border=0 src="/images/special_1.jpg"></a> <a style="z-index: 1" href="/swt/" index="2"><img border=0 src="/images/special_2.jpg"></a> <a style="z-index: 1" href="/swt/" target=_blank index="3"><img border=0 src="/images/special_1.jpg"></a></div>
                        <div id=slideshow_footbar></div>
                    </div>
                </div>
            </div>
            <div class=survey_block_index>
                <div class=title_survey_block_index>
                    <ul class=scrollUl>
                        <a id=m01 class=sd01 href="javascript:void(0)"></a>
                        <a id=m02 class=sd02 href="javascript:void(0)"></a>
                        <a style=" background-image:none" id=m03 class=sd03 href="javascript:void(0)"></a>
                    </ul>
                </div>
            </div>

            <div class="ex_t"><img src="/images/ww_main_t3.jpg" /></div>
            <div class="ex_slide"><img src="/images/experts_1.jpg" /></div>
            <div class="ex_show">
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
                <div class="ex_list"><a href="#" target="_blank"><img src="/images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
            </div>

        </div>
        <!--ww_mian_right-->
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>


</div>
<!-- end shop -->

<!-- 网友晒单 -->
<div class="div_common">
    <div class="ww_comment">

        <div class="c_tab">
            <div class="c_tab_list" onMouseOver="this.className='c_tab_l_m'" onMouseOut="this.className='c_tab_list'"><P>秒</P><P>杀</P><P>案</P><P>例</P></div>
            <div class="c_tab_list" onMouseOver="this.className='c_tab_l_m'" onMouseOut="this.className='c_tab_list'"><P>团</P><P>购</P><P>案</P><P>例</P></div>
            <div class="c_tab_list" onMouseOver="this.className='c_tab_l_m'" onMouseOut="this.className='c_tab_list'"><P>网</P><P>友</P><P>晒</P><P>单</P></div>
        </div>

        <div class="c_bask">

            <div class="c_b_l">
                <div class="c_b_l_photo"><img src="/images/comment_bask_1.jpg" /></div>
                <P class="font14">网友：方脸美少女</P>
                <P class="c_b_line">2015-05-13  更新</P>
                <P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
                <div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="/images/comment_more.jpg" /></a></div>
            </div>

            <div class="c_b_l">
                <div class="c_b_l_photo"><img src="/images/comment_bask_1.jpg" /></div>
                <P class="font14">网友：方脸美少女</P>
                <P class="c_b_line">2015-05-13  更新</P>
                <P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
                <div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="/images/comment_more.jpg" /></a></div>
            </div>

            <div class="c_b_l">
                <div class="c_b_l_photo"><img src="/images/comment_bask_1.jpg" /></div>
                <P class="font14">网友：方脸美少女</P>
                <P class="c_b_line">2015-05-13  更新</P>
                <P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
                <div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="/images/comment_more.jpg" /></a></div>
            </div>

            <div class="c_b_l">
                <div class="c_b_l_photo"><img src="/images/comment_bask_1.jpg" /></div>
                <P class="font14">网友：方脸美少女</P>
                <P class="c_b_line">2015-05-13  更新</P>
                <P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
                <div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="/images/comment_more.jpg" /></a></div>
            </div>

            <div class="c_b_l">
                <div class="c_b_l_photo"><img src="/images/comment_bask_1.jpg" /></div>
                <P class="font14">网友：方脸美少女</P>
                <P class="c_b_line">2015-05-13  更新</P>
                <P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
                <div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="/images/comment_more.jpg" /></a></div>
            </div>

        </div>

    </div>
</div>
<!-- end 网友晒单 -->
@include('layouts._surrounding')
@stop

