@extends('layouts.app')
@section('title', '首页')
@section('banner')
	@include('layouts._banner')
@stop
@section('content')
	<div class="baby_color_1">
		<!-- shop -->
		<div class="div_common">
			<div class="sh_title_time">
				<div class="s_abox"><a href="#" target="_blank" class="suburl">昨日日秒杀</a></div>
				<div class="s_bbox"><a href="#" target="_blank" class="suburl">今日秒杀</a></div>
				<div class="s_cbox"><a href="#" target="_blank" class="suburl">明日秒杀</a></div>
			</div>
			<div class="ww_shop_main" style="margin:0;">
				<div class="sh_title">
					<div class="s_abox"><a href="#" target="_blank"><img src="images/shop_title_1.jpg" /></a></div>
					<div class="s_bbox">距离开始：<span class="sh_time">01小时</span>:<span class="sh_time">54分</span>:<span class="sh_time">41秒</span>    开抢时间每天：<span class="sh_time">12：00-14：00</span></div>
					<div class="s_cbox"><a href="#" target="_blank">更多秒杀</a></div>
				</div>
				<div class="sh_today"><a href="#" target="_blank" title="瑞兰玻尿酸 直降4799元 逆转肌肤轮廓"><img src="images/index_ms.jpg" /></a></div>
				<div class="clear"></div>
			</div>

		</div>
		<!-- end shop -->
	</div>

	<!-- shop -->
	<div class="div_common">
		<div class="ww_shop_main">
			<div class="sh_title">
				<div class="s_abox"><a href="#" target="_blank"><img src="images/shop_title_2.jpg" /></a></div>
				<div class="s_bbox">距离结束：<span class="sh_time">23小时</span>:<span class="sh_time">18分</span>:<span class="sh_time">59秒</span></div>
				<div class="s_cbox"><a href="#" target="_blank">更多团购</a></div>
			</div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="sh_list"><P><a href="#" target="_blank"><img src="images/shop_t_1.jpg" border="0" /></a></P><P><a href="#" target="_blank">瑞兰玻尿酸 直降4500元 逆转肌肤轮廓</a></P></div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- end shop -->

	<div class="div_common">
		<div class="ww_main">
			<div class="events">
				<div class="ev_t"><img src="images/ww_main_t1.jpg" /></div>
				<div class="a_special">
					<!-- special -->
					<div class=long_block_index>
						<div class=js_imgs_block>
							<div id=slideshow_wrapper>
								<div id=slideshow_photo><a style="z-index: 2" href="javascript:void(0)" index="1"><img border=0 src="images/special_1.jpg"></a> <a style="z-index: 1" href="javascript:void(0)" index="2"><img border=0 src="images/special_2.jpg"></a></div>
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
					<!-- end special -->
				</div>

				<div class="it"><P><a href="#" target="_blank"><img src="images/events_it_1.jpg" /></a></P><P><a href="#" target="_blank">韩式美瞳术</a></P></div>
				<div class="it"><P style="padding-left:10px;"><a href="#" target="_blank"><img src="images/events_it_2.jpg" /></a></P><P><a href="#" target="_blank">达拉斯综合美鼻术</a></P></div>

			</div>
			<div class="news">
				<div class="n_t"><img src="images/ww_main_t2.jpg" /></div>
				<div class="news_box">
					<div class="headline">
						<h3>李白的水袖、张九龄的天涯、杜甫的故乡</h3>
						<P>总有些什么，是和历史的长河一同趟过，李白的水袖、张九龄的天涯、杜甫的故乡，初照人的江月，初见月的江人使得国内一线的三家卫视...<a href="#" target="_blank" class="more">更多...</a></P>
					</div>

					<div class="headline">
						<h3>在广大求美人士心里获得广泛赞誉</h3>
						<P>近几年，欣悦整形在医美界声誉鹊起，在广大求美人士心里获得广泛赞誉，使得国内一线的三家卫视：东方使得国内一线的三家卫视...<a href="#" target="_blank" class="more">更多...</a></P>
					</div>

					<ul>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
						<li class="dot"><span>2013-06-10</span><a href="#" target="_blank">注射瘦脸针要多少钱? 特价1980元</a></li>
					</ul>
				</div>

			</div>
			<div class="experts">
				<div class="ex_t"><img src="images/ww_main_t3.jpg" /></div>
				<div class="ex_slide"><img src="images/experts_1.jpg" /></div>

				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>
				<div class="ex_list"><a href="#" target="_blank"><img src="images/ex_list_1.jpg" /></a></P><P><a href="#" target="_blank">陆忠凯</a></P></div>

			</div>
		</div>
	</div>

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
					<div class="c_b_l_photo"><img src="images/comment_bask_1.jpg" /></div>
					<P class="font14">网友：方脸美少女</P>
					<P class="c_b_line">2015-05-13  更新</P>
					<P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
					<div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="images/comment_more.jpg" /></a></div>
				</div>

				<div class="c_b_l">
					<div class="c_b_l_photo"><img src="images/comment_bask_1.jpg" /></div>
					<P class="font14">网友：方脸美少女</P>
					<P class="c_b_line">2015-05-13  更新</P>
					<P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
					<div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="images/comment_more.jpg" /></a></div>
				</div>

				<div class="c_b_l">
					<div class="c_b_l_photo"><img src="images/comment_bask_1.jpg" /></div>
					<P class="font14">网友：方脸美少女</P>
					<P class="c_b_line">2015-05-13  更新</P>
					<P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
					<div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="images/comment_more.jpg" /></a></div>
				</div>

				<div class="c_b_l">
					<div class="c_b_l_photo"><img src="images/comment_bask_1.jpg" /></div>
					<P class="font14">网友：方脸美少女</P>
					<P class="c_b_line">2015-05-13  更新</P>
					<P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
					<div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="images/comment_more.jpg" /></a></div>
				</div>

				<div class="c_b_l">
					<div class="c_b_l_photo"><img src="images/comment_bask_1.jpg" /></div>
					<P class="font14">网友：方脸美少女</P>
					<P class="c_b_line">2015-05-13  更新</P>
					<P>6年，是我努力的长度，16年，是我梦想的高度。噢对，没错，我就是被长辈们喊着“好丑啊你为何这么丑啊”长大的那种姑娘，所以我有多想改变自己...</P>
					<div class="c_b_more"><a href="#" target="_blank" title="更多详情"><img src="images/comment_more.jpg" /></a></div>
				</div>

			</div>

		</div>
	</div>
	<!-- end 网友晒单 -->
	<!-- 医院环境 -->
	<div class="div_common">
		<div class="zx_sb tab_mt">
			<ul class="zx_sb_ul" style=" display:block;">
				<li id="ons02"  class="hot2" onmouseover="setTab4('ons0',2,3)"><a href="#">品牌荣誉</a></li>
				<li id="ons01" onmouseover="setTab4('ons0',1,3)"><a href="#">五星环境</a></li>
				<li id="ons03" onmouseover="setTab4('ons0',3,3)"><a href="#">尖端设备</a></li>
			</ul>
			<br class="clear"/>
			<ul class="tab_bor zx_sb_ul3 " id="con4_ons0_1" style="display: none;">
				<li><img src="images/pic_index_environment.png" /></li>
			</ul>
			<!--品牌荣誉-->
			<ul class="tab_bor clear zx_sb_ul3 " id="con4_ons0_2" style="display:block;">
				<li><img src="images/pic_index_honor.png" /></li>
			</ul>
			<!--尖端设备-->
			<ul class="tab_bor clear zx_sb_ul3" id="con4_ons0_3" style="display:none;">
				<li><img src="images/pic_index_equipment.png" /></li>
			</ul>

		</div>
	</div>

	<!-- end 医院环境 -->

    
@stop
