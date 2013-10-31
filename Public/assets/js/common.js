/* 获取日历背景颜色*/
function schedule_bg(j) {
	var myArray = new Array(5);
	myArray[0] = "#CCCCCC";
	myArray[1] = "#99CCFF";
	myArray[2] = "#CCFFCC";
	myArray[3] = "#FFFFCC";
	myArray[4] = "#FFCCCC ";
	return myArray[j - 1];
}


/*联系人显示格式转换*/
function conv_address_item(id, name) {
	html = '<label>';
	html += '		<input class="ace" type="checkbox" name="addr_id" value="' + id + '"/>';
	html += '		<span class="lbl">' + name + '</span></label>';
	return html;
}

function conv_inputbox_item(id,name,title,data){
	if(data!==undefined){
		html = "<span data=\"" + data + "\" id=\"" + id + "\">";
	}else{
		html = "<span id=\"" + id + "\">";
	}	
	html+="<nobr><b  title=\"" + title + "\">" + name + "</b>";
	html+="<a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
	return html;
}

/* 关闭弹出窗口*/
function myclose() {
	parent.winclose();
}

function winclose() {
	$("html,body").css("overflow", "auto");
	$("div.shade").hide();
	$("#dialog").html("");
	$("#dialog").remove();
}

/* 在iframe里显示textarea的内容*/
function show_content() {
	var iframe = $("#content_iframe").get(0).contentWindow;
	var div = document.createElement("div");
	div.innerHTML = $("#content_1").val();
	div.className = "height";
	iframe.document.body.appendChild(div);
	height = $(iframe.document.body).find("div.height").height();
	if (height < 300) {
		height = 300;
	}
	iframe.height = height;
	$("#content_wrap").height(height + 30);
	$("#content_wrap").parent().height(height + 40);
	$("#content_iframe").height(height + 30);
}

/*返回到上一页*/
function go_return_url() {
	window.open(get_cookie("return_url"), "_self");
	return false;
}

function toggle_adv_search() {
	if ($("#adv_search").attr("class").indexOf("display-none") < 0) {
		$("#adv_search").addClass("display-none");
		$("#toggle_adv_search_icon").addClass("icon-chevron-down");
		$("#toggle_adv_search_icon").removeClass("icon-chevron-up");
	} else {
		$("#adv_search").removeClass("display-none");
		$("#toggle_adv_search_icon").addClass("icon-chevron-up");
		$("#toggle_adv_search_icon").removeClass("icon-chevron-down");
	}
}

function close_adv_search() {
	$("#adv_search").addClass("display-none");
	$("#toggle_adv_search_icon").addClass("icon-chevron-down");
	$("#toggle_adv_search_icon").removeClass("icon-chevron-up");
}

var ul_table = {
	//displays a toolbar according to the number of selected messages
	display_bar : function(count) {
		if (count == 0) {
			$('#id-toggle-all').removeAttr('checked');
			$('#id-message-list-navbar .message-toolbar').addClass('hide');
			$('#id-message-list-navbar .message-infobar').removeClass('hide');
		} else {
			$('#id-message-list-navbar .message-infobar').addClass('hide');
			$('#id-message-list-navbar .message-toolbar').removeClass('hide');
		}
	},
	select_all : function() {
		var count = 0;
		$('.tbody input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});

		$('#id-toggle-all').get(0).checked = true;

		ul_table.display_bar(count);
	},
	select_none : function() {
		$('.tbody input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');
		$('#id-toggle-all').get(0).checked = false;

		ul_table.display_bar(0);
	},
	select_read : function() {
		$('.message-unread input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');

		var count = 0;
		$('.tbody:not(.message-unread) input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});
		ul_table.display_bar(count);
	},
	select_unread : function() {
		$('.tbody:not(.message-unread) input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');

		var count = 0;
		$('.message-unread input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});

		ul_table.display_bar(count);
	}
}

var Inputbox = {
	//displays a toolbar according to the number of selected messages
	display_bar : function(count) {
		if (count == 0) {
			$('#id-toggle-all').removeAttr('checked');
			$('#id-message-list-navbar .message-toolbar').addClass('hide');
			$('#id-message-list-navbar .message-infobar').removeClass('hide');
		} else {
			$('#id-message-list-navbar .message-infobar').addClass('hide');
			$('#id-message-list-navbar .message-toolbar').removeClass('hide');
		}
	},
	select_all : function() {
		var count = 0;
		$('.tbody input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});

		$('#id-toggle-all').get(0).checked = true;

		ul_table.display_bar(count);
	},
	select_none : function() {
		$('.tbody input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');
		$('#id-toggle-all').get(0).checked = false;

		ul_table.display_bar(0);
	},
	select_read : function() {
		$('.message-unread input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');

		var count = 0;
		$('.tbody:not(.message-unread) input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});
		ul_table.display_bar(count);
	},
	select_unread : function() {
		$('.tbody:not(.message-unread) input[type=checkbox]').removeAttr('checked').closest('.tbody').removeClass('selected');

		var count = 0;
		$('.message-unread input[type=checkbox]').each(function() {
			this.checked = true;
			$(this).closest('.tbody').addClass('selected');
			count++;
		});
		ul_table.display_bar(count);
	}
}

/*赋值*/

function set_val(name, val) {
	if ($("#" + name + " option").length > 0) {
		$("#" + name + " option[value='" + val + "']").attr("selected", "selected");
		return;
	}

	if (($("#" + name).attr("type")) === "checkbox") {
		if (val == 1) {
			$("#" + name).attr("checked", true);
			return;
		}
	}
	if (($("#" + name).attr("type")) === "text") {
		$("#" + name).val(val);
		return;
	}
	if (($("#" + name).attr("type")) === "hidden") {
		$("#" + name).val(val);
		return;
	}
	if (($("#" + name).attr("rows")) > 0) {
		$("#" + name).text(val);
		return;
	}
}

/*设置要返回的URL*/
function set_return_url(url) {
	if (url != undefined) {
		set_cookie("return_url", url);
	} else {
		set_cookie("return_url", document.location);
	}
}

/*打开弹出窗口*/
function winopen(url, w, h) {
	url = fix_url(url);
	$("html,body").css("overflow", "hidden");
	$("div.shade").show();
	var _body = $("body").eq(0);
	if ($("#dialog").length == 0) {
		if (!is_mobile()) {
			_body.append("<div id=\"dialog\"><iframe src='" + url + "' style='width:" + w + "px;height:100%' scrolling='auto' ></iframe></div>");
			$("#dialog").css({
				width : w,
				height : h,
				position : "fixed",
				"z-index" : "2000",
				top : ($(window).height() / 2 - h / 2),
				left : (_body.width() / 2 - w / 2),
				"background-color" : "#ffffff"
			});
		} else {
			$("div.shade").css("width", _body.width());
			_body.append("<div id=\"dialog\"><iframe src='" + url + "' style='width:100%;height:100%' scrolling='auto' ></iframe></div>");
			$("#dialog").css({
				width : _body.width(),
				height : h,
				position : "fixed",
				"z-index" : "2000",
				top : 0,
				left : 0,
				"background-color" : "#ffffff"
			});
		}
	} else {
		$("#dialog").show();
	}
}

/*联系人显示格式转换*/
function contact_conv(val) {
	var arr_temp = val.split(";");
	var html = "";
	for (key in arr_temp) {
		if (arr_temp[key] != '') {
			html += '<span title="' + arr_temp[key].split("|")[1] + '" emp_no="' + arr_temp[key].split("|")[1] + '" onmousedown="return false"><nobr>' + arr_temp[key].split("|")[0] + '<a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>';
		}
	}
	return html;
}

/* 判断是否是移动设备 */
function is_mobile() {
	return navigator.userAgent.match(/mobile/i);
}

/*联系人显示格式转换*/
function fix_url(url) {
	var ss = url.split('?');
	url = ss[0] + "?";
	for (var i = 1; i < ss.length; i++) {
		url += ss[i] + "&";
	}
	if (ss.length > 0) {
		url = url.substring(0, url.length - 1);
	}
	return url;
}

function check_form(form_id) {
	var check_flag = true;
	$("#" + form_id + " :input").each(function(i) {
		if ($(this).attr("check")) {
			if (!validate($(this).val(), $(this).attr("check"))) {
				alert($(this).attr("msg"));
				$(this).focus();
				check_flag = false;
				return check_flag;
			}
		}
	})
	return check_flag;
}

/* 验证数据类型*/
function validate(data, datatype) {
	if (datatype.indexOf("|")) {
		tmp = datatype.split("|");
		datatype = tmp[0];
		data2 = tmp[1];
	}
	switch (datatype) {
		case "require":
			if (data == "") {
				return false;
			} else {
				return true;
			}
			break;
		case "email":
			var reg = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
			return reg.test(data);
			break;
		case "number":
			var reg = /^[0-9]+\.{0,1}[0-9]{0,3}$/;
			return reg.test(data);
			break;
		case "html":
			var reg = /<...>/;
			return reg.test(data);
			break;
		case "eqt":
			data2 = $("#" + data2).val();
			return data >= data2
			break;
	}
}

/* ajax提交*/
function sendAjax(url, vars, callback) {
	return $.ajax({
		type : "POST",
		url : url,
		data : vars + "&ajax=1",
		dataType : "json",
		success : callback
	});
}

/*提交表单*/
function sendForm(formId, post_url, return_url) {
	if ($("#ajax").val() == 1) {
		var vars = $("#" + formId).serialize();
		$.ajax({
			type : "POST",
			url : post_url,
			data : vars,
			dataType : "json",
			success : function(data) {
				alert(data.info);
				if (return_url) {
					location.href = return_url;
				}
			}
		});
	} else {
		$("#" + formId).attr("action", post_url);
		if (return_url) {
			set_cookie('return_url', return_url);
		}
		$("#" + formId).submit();
	}
}

function click_nav_menu(obj_node) {
	url = $(obj_node).attr("href");
	if (url.length > 0 && (url != "#")) {
		node = $(obj_node).attr("node");
		set_cookie("current_node", node);
	} else {
		//node = $(obj_node).parent().find("ul li a:first").attr("node");
		//set_cookie("current_node", node);
		//url = $(obj_node).parent().find("ul li a:first").attr("href");
		//if (url !== undefined) {
		//	location.href = url;
		//}
		//return false;
	}
}

/*设置 cookie*/
function set_cookie(key, value, exp, path, domain, secure) {
	path = "/";
	var cookie_string = key + "=" + escape(value);
	if (exp) {
		cookie_string += "; expires=" + exp.toGMTString();
	}
	if (path)
		cookie_string += "; path=" + escape(path);
	if (domain)
		cookie_string += "; domain=" + escape(domain);
	if (secure)
		cookie_string += "; secure";
	document.cookie = cookie_string;
}

/*读取 cookie*/
function get_cookie(cookie_name) {
	var results = document.cookie.match('(^|;) ?' + cookie_name + '=([^;]*)(;|$)');
	if (results)
		return (unescape(results[2]));
	else
		return null;
}

/*删除 cookie*/
function del_cookie(cookie_name) {
	var cookie_date = new Date();
	//current date & time
	cookie_date.setTime(cookie_date.getTime() - 1);
	document.cookie = cookie_name += "=; expires=" + cookie_date.toGMTString();
}


$(document).ready(function() {
	$(".sidebar .nav a").click(function() {
		click_nav_menu($(this));
	})
	/* 查找联系人input 功能*/
	$(".inputbox .search li").on("click", function() {
		name = $(this).text().replace(/<.*>/, '');
		email = $(this).find("a").attr("title");
		html = "<span email=\"" + email + "\"><nobr><b  title=\"" + email + "\">" + name + "</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
		inputbox = $(this).parents(".inputbox");
		inputbox.find("span.address_list").append(html);
		inputbox.find("input.letter").val("");
		inputbox.find(".search ul").html("");
		inputbox.find(".search ul").hide();
		inputbox.find(".search").hide();
	})
	/* 查找联系人input 功能*/
	$(".inputbox .letter").keyup(function(e) {
		switch(e.keyCode) {
			case 40:
				var $curr = $(this).parents(".inputbox").find(".search li.active").next();
				if ($curr.html() != null) {
					$(this).parents(".inputbox").find(".search li").removeClass("active");
					$curr.addClass("active");
				}
				break;
			case 38:
				var $curr = $(this).parents(".inputbox").find(".search li.active").prev();
				if ($curr.html() != null) {
					$(this).parents(".inputbox").find(".search li").removeClass("active");
					$curr.addClass("active");
				}
				break;
			case 13:
				if ($(this).parents(".inputbox").find(".search ul").html() != "") {
					name = $(".search li.active").text().replace(/<.*>/, '');
					email = $(".search li.active a").attr("title");
					html = "<span email=\"" + email + "\"><nobr><b  title=\"" + email + "\">" + name + "</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
					$(this).parents(".inputbox").find("span.address_list").append(html);
					$(this).parents(".inputbox").find(".search ul").html("");
					$(this).val("");
					$(this).parents(".inputbox").find(".search ul").hide();
				} else {
					email = $(this).val();
					if (validate(email, 'email')) {
						name = email;
						html = "<span email=\"" + email + "\"><nobr><b  title=\"" + email + "\">" + name + "</b><a class=\"del\" title=\"删除\"><i class=\"icon-remove\"></i></a></nobr></span>";
						$(this).parents(".inputbox").find("span.address_list").append(html);
						$(this).val("");
					} else {
						alert("邮件格式错误");
					}
				}
				break;
			default:
				var search = $(this).parents(".inputbox").find("div.search ul");
				if ($(this).val().length > 1) {
					$.getJSON("/contact/json", {
						key : $(this).val()
					}, function(json) {
						if (json != "") {
							if (json.length > 0) {
								search.html("");
								$.each(json, function(i) {
									search.append('<li><a title="' + json[i].email + '">' + json[i].name + '&lt;' + json[i].email + '&gt;</a></li>')
								})
								search.children("li:first").addClass("active");
								search.show();
							}
						} else {
							search.html("");
							search.hide();
						}
					});
				} else {
					search.hide();
				}
		}
	});
	$('.ul_table .tbody input[type=checkbox]').removeAttr('checked');
	$('.ul_table').delegate('.tbody input[type=checkbox]', 'click', function() {
		$(this).closest('.tbody').toggleClass('selected');
		if (this.checked)
			ul_table.display_bar(1);
		//display action toolbar when a message is selected
		else {
			ul_table.display_bar($('.ul_table input[type=checkbox]:checked').length);
			//determine number of selected messages and display/hide action toolbar accordingly
		}
	});

	$('#id-toggle-all').removeAttr('checked').on('click', function() {
		if (this.checked) {
			ul_table.select_all();
		} else
			ul_table.select_none();
	});

	current_node = get_cookie("current_node");
	$(".sidebar .nav a[node='" + current_node + "']").parents("li").addClass("active open");
}); 