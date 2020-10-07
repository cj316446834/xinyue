//nav
$('#nav > li').hover(
		function(){
			var $height = 370;
			var $nav_menu = $(this).find('.nav_menu');
			if($nav_menu.attr('height') == undefined){
				$height = $nav_menu.outerHeight();
				$nav_menu.attr('height',$height);
			}
			else{
				$height = $nav_menu.attr('height');
			}
			$nav_menu.height($height);
			$(this).stop().addClass("on").find('.nav_menu').animate({height:'show'}, {queue:false, duration:1000, easing:'easeOutBounce'});
		},
		function(){
			$(this).stop().removeClass("on").find('.nav_menu').hide();
		}
);

// tag
function tag_func(elementid, tag){
	try{
		var tags = document.getElementById(elementid).getElementsByTagName(tag);
		var more = document.getElementById(elementid+'_more');
	}
	catch(e){
		//throw new Error('Not find tags'); return ;
	}
	for(var i=0; i<tags.length; i++){
		tags[i].onmouseover = function(){
			for(var j=0; j<tags.length; j++){
				var cnt = document.getElementById(elementid + '_con_' +(j+1));
				if(this == tags[j]){
					tags[j].className = tags[j].className.replace('off','on');
					if(cnt) cnt.style.display = 'block';
					if(more){
						if(tags[j].childNodes[0]){
							more.href = tags[j].childNodes[0].href;
						}
					}
				}
				else{
					tags[j].className = tags[j].className.replace('on','off');
					if(cnt) cnt.style.display = 'none';
				}
			}
		};
	}
};

function addToFavorite(title){
	if(!title){
		title = document.title;
	}
	if(document.all){
		window.external.AddFavorite(location.href,title);
	}
	else if (window.sidebar){
		window.sidebar.addPanel(title,window.location.href,"");
	}
}

function switch_item(){
	try{
		var itemlist = document.getElementById('topitem').getElementsByTagName('li');
	}
	catch(e){
		//throw new Error('Not find item'); return ;
		return ;
	}
	for(var i=0; i<itemlist.length; i++){
		itemlist[i].onmouseover = function(){
			for(var i=0; i<itemlist.length; i++){
				if(this == itemlist[i]){
					itemlist[i].className = itemlist[i].className.replace('off','on');
				}
				else{
					itemlist[i].className = itemlist[i].className.replace('on','off');
				}
			}
		};
	}
}
switch_item();

// list nav
var list_lis = $("#list_nav").find("> li");
var cur_li = $("#list_nav").find("> .on");
list_lis.hover(
	function(){
		if(this != cur_li[0]){
			cur_li.attr("class", cur_li.attr("class").replace("on","") );
			$(this).addClass("on");
		}
	},
	function(){
		if(this != cur_li[0]){
			$(cur_li).addClass("on");
			$(this).removeClass("on");
		}
	}
);

// banner


