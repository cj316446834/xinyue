// JavaScript Document
// JavaScript Document

   function setTab(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con_"+name+"_"+i);
	  menu.className=i==cursel?"hot5":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
 
 function setTab2(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con2_"+name+"_"+i);
	  if(menu)menu.className=i==cursel?"hove":"";
	  if(con) con.style.display=i==cursel?"block":"none";
	} 
  }
  
 function setTab3(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con3_"+name+"_"+i);
	  var ton=document.getElementById("tan3_"+name+"_"+i);
	  menu.className=i==cursel?"hot":"";
	  con.style.display=i==cursel?"block":"none";
	  if(ton){ton.style.display=i==cursel?"block":"none";}
	} 
  }
    
 function setTab4(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con4_"+name+"_"+i);
	  menu.className=i==cursel?"hot2":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
  
 function setTab5(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con5_"+name+"_"+i);
	  menu.className=i==cursel?"ent":"";
	  con.style.display=i==cursel?"block":"none";
	 } 
  }
  
  function setTab6(name,cursel,n){
	  for(var i=1;i<=n;i++){
	  var menu=document.getElementById(name+'_'+i);
	  var menu1=document.getElementById('m'+name+'_'+i);
	  var con=document.getElementById("con_"+name+"_"+i);
	  if(menu1)menu1.className=i==cursel?"hot1":"";
	 // menu.style.display
	  if(menu)menu.style.display=i==cursel?"block":"none";
	  if(con)con.style.display=i==cursel?"block":"none";
	 }   
  
  
  }

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
