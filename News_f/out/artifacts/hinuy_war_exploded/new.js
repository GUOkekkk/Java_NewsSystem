﻿addAnimate($(".new1container"),"bounceIn");fangda();$(".firefly").swipe({swipeStatus:function(event,phase,direction,distance,duration,fingerCount){if(direction=='up'){bottom1()}else if(direction=='down'){top1()}}});var zhuangtai=true;var scrollFunc=function(e){e=e||window.event;if(e.wheelDelta){if(e.wheelDelta==120){top1()}else if(e.wheelDelta==-120){bottom1()}}else if(e.detail){if(e.detail==3){top1()}else if(e.detail==-3){bottom1()}}};$(".new_footer").live('click',function(e){bottom1()});function bottom1(){if(zhuangtai==true&&$(".new_right_yuanlihvoer").index()!=5&&$(".nav-el").hasClass("active")==false){var index=$(".new_right_yuanlihvoer").index();if(index!=5){$(".new_right_yuanlihvoer").removeClass("new_right_yuanlihvoer");$(".new_right_yuan li").eq(index+1).addClass("new_right_yuanlihvoer");addAnimate($(".new"+(index+1+1)+"container"),"bounceIn")}if(index==4){$(".new_footer").css("display","none")}zhuangtai=false;yidongxia(index+1);setTimeout(function(){zhuangtai=true},1000);fangda();}}function top1(){if(zhuangtai==true&&$(".new_right_yuanlihvoer").index()!=0&&$(".nav-el").hasClass("active")==false){var index=$(".new_right_yuanlihvoer").index();if(index!=0){$(".new_footer").css("display","block");$(".new_right_yuanlihvoer").removeClass("new_right_yuanlihvoer");$(".new_right_yuan li").eq(index-1).addClass("new_right_yuanlihvoer");addAnimate($(".new"+(index)+"container"),"bounceIn")}zhuangtai=false;yidongshang(index);setTimeout(function(){zhuangtai=true},1000);fangda()}}function yidongxia(e){haiyuan();var index=e+1;$(".new"+index).css({"top":"0%","z-index":"99"});for(var i=1;i<=6;i++){if(i!=index){$(".new"+i).css({"z-index":"1","top":parseInt($(".new"+i).css("top"))-parseInt($(".new"+index).height())})}}}function yidongshang(e){haiyuan();var index=e;$(".new"+index).css({"top":"0%","z-index":"99"});for(var i=1;i<=6;i++){if(i!=index){$(".new"+i).css({"z-index":"1","top":parseInt($(".new"+i).css("top"))+parseInt($(".new"+index).height())})}}}function haiyuan(){for(var i=1;i<=$(".new_right_yuan li").length;i++){$(".new"+i).css("top",(i-1)*100+"%")}}$(".new_right_yuan li").live('click',function(e){var yuan=$(".new_right_yuanlihvoer").index();if($(this).index()==5){$(".new_footer").css("display","none")}else{$(".new_footer").css("display","block")}$(".new_right_yuanlihvoer").removeClass("new_right_yuanlihvoer");$(this).addClass("new_right_yuanlihvoer");if(yuan<$(this).index()){yidongxia($(this).index())}else if(yuan>$(this).index()){yidongshang($(this).index()+1)}});$(document).keyup(function(e){var yuan=$(".new_right_yuanlihvoer").index();if(yuan==5){$(".new_footer").css("display","none")}else{$(".new_footer").css("display","block")}if(e.keyCode==38){if(yuan!=0){top1()}}else if(e.keyCode==40){if(yuan!=5){bottom1()}}});$(".Imtoo").live('click',function(e){addAnimateHide($(".tanchuceng"),"fadeIn");$(".new3").css("z-index","99991")});$(".tanchuceng a").live('click',function(e){$(".tanchuceng").fadeOut(1000);$(".new3").css("z-index","99")});function fangda(){setTimeout(function(){$(".newbg"+($(".new_right_yuanlihvoer").index()+1)).addClass("add_animation")},10);}if(document.addEventListener){document.addEventListener('DOMMouseScroll',scrollFunc,false)}document.onmousewheel=scrollFunc;function addAnimateHide(obj,amt){if(obj.is(":hidden")){obj.show().addClass(amt+" animated").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',function(){$(this).removeClass(amt+" animated")})}else{obj.addClass(amt+" animated").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',function(){$(this).removeClass(amt+" animated").hide()})}}function addAnimate(obj,amt){obj.addClass(amt+" animated").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',function(){$(this).removeClass(amt+" animated")})}var AnimEnd='animationend webkitAnimationEnd mozAnimationEnd MSAnimationEnd oAnimationEnd';var nav=$('.new5ul');var navButton=$('.new5ul .nav-el');var overlay=$('.overlay');$(navButton).click(function(event){if($(this).hasClass("inactive")){event.preventDefault()}else{$(navButton).removeClass('inactive_reverse active_reverse');$(nav).removeClass('fx-box_rotate fx-box_rotate_reverse');$(overlay).removeClass('active active_reverse');$(this).siblings().addClass('inactive');$(this).addClass('active');$(nav).addClass('fx-box_rotate');var o_target=$(this).data('id');$('#'+o_target).addClass('active').children().show();$("body").addClass('noscroll')}});$(".new5ul li").live('click',function(e){$(".new5").css("z-index","9999");zhankai()});function zhankai(){$(".moniright").css({"right":"10%"});setTimeout(function(){$(".overlayone").css({"left":"10%"}).children(".overlayonebg").css({"width":"450px"});$(".overlayoneimg").css({"width":"413px","height":"224px","top":"19px","left":"19px"});$(".overlaytwo").css({"left":"10%"}).children(".overlaytwobg").css({"width":"450px"});$(".overlaytwoimg").css({"width":"413px","height":"224px","top":"19px","left":"19px"})},1000);setTimeout(function(){$(".xiangyou").fadeIn(1000)},2000);setTimeout(function(){$(".overlaytwo").css({"left":$(".moniright").offset().left});$(".overlay i").fadeIn(1000)},3000);$(".guanbi").click(function(){guanbi();$(".new5").css("z-index","99")});$(window).resize(function(e){$(".overlaytwo").css({"left":$(".moniright").offset().left})})}function guanbi(){$('.active',nav).removeClass('active').addClass('active_reverse');$('.inactive',nav).addClass('inactive_reverse');$(nav).addClass('fx-box_rotate_reverse');$(".guanbi").parent().addClass('active_reverse').children().hide();$('.inactive_reverse').bind(AnimEnd,function(){$('body').removeClass('noscroll');$(navButton).removeClass('inactive');$('.inactive_reverse').unbind(AnimEnd)});$(".overlayone").css({"left":"10%"}).children(".overlayonebg").css({"width":"450px"});$(".overlayoneimg").css({"width":"413px","height":"224px","top":"19px","left":"19px"});$(".overlaytwo").css({"left":"10%"}).children(".overlaytwobg").css({"width":"450px"});$(".overlaytwoimg").css({"width":"413px","height":"224px","top":"19px","left":"19px"})}