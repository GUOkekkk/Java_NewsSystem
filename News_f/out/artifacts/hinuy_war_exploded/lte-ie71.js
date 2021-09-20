/* Use this script if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'linecons\';FONT-SIZE: 25px;font-style: normal;">' + entity + '</span>' + html;
	}
	var icons = {
			'newlitub_heart' : '&#xe000;',
			'newlitub_cloud' : '&#xe001;',
			'newlitub_star' : '&#xe002;',
			'newlitub_tv' : '&#xe003;',
			'newlitub_sound' : '&#xe004;',
			'newlitub_video' : '&#xe005;',
			'newlitub_trash' : '&#xe006;',
			'newlitub_user' : '&#xe007;',
			'newlitub_key' : '&#xe008;',
			'newlitub_search' : '&#xe009;',
			'newlitub_settings' : '&#xe00a;',
			'newlitub_camera' : '&#xe00b;',
			'newlitub_tag' : '&#xe00c;',
			'newlitub_lock' : '&#xe00d;',
			'newlitub_bulb' : '&#xe00e;',
			'newlitub_pen' : '&#xe00f;',
			'newlitub_diamond' : '&#xe010;',
			'newlitub_display' : '&#xe011;',
			'newlitub_location' : '&#xe012;',
			'newlitub_eye' : '&#xe013;',
			'newlitub_bubble' : '&#xe014;',
			'newlitub_stack' : '&#xe015;',
			'newlitub_cup' : '&#xe016;',
			'newlitub_phone' : '&#xe017;',
			'newlitub_news' : '&#xe018;',
			'newlitub_mail' : '&#xe019;',
			'newlitub_like' : '&#xe01a;',
			'newlitub_photo' : '&#xe01b;',
			'newlitub_note' : '&#xe01c;',
			'newlitub_clock' : '&#xe01d;',
			'newlitub_paperplane' : '&#xe01e;',
			'newlitub_params' : '&#xe01f;',
			'newlitub_banknote' : '&#xe020;',
			'newlitub_data' : '&#xe021;',
			'newlitub_music' : '&#xe022;',
			'newlitub_megaphone' : '&#xe023;',
			'newlitub_study' : '&#xe024;',
			'newlitub_lab' : '&#xe025;',
			'newlitub_food' : '&#xe026;',
			'newlitub_t-shirt' : '&#xe027;',
			'newlitub_fire' : '&#xe028;',
			'newlitub_clip' : '&#xe029;',
			'newlitub_shop' : '&#xe02a;',
			'newlitub_calendar' : '&#xe02b;',
			'newlitub_vallet' : '&#xe02c;',
			'newlitub_vynil' : '&#xe02d;',
			'newlitub_truck' : '&#xe02e;',
			'newlitub_world' : '&#xe02f;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; i < els.length; i += 1) {
		el = els[i];
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/newlitub_[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};