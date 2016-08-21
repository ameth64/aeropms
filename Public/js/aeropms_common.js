/**
 * Created by MobiuS on 16-6-2.
 */
function click_project_list(obj_node) {
    node = $(obj_node).attr("node");
    set_cookie("top_menu", node);

    return_url = $(obj_node).attr("return_url");
    set_return_url(return_url);

    url = $(obj_node).attr("url");

    form = $("<form></form>");
    form.attr('action', url);
    form.attr('method', 'post');
    form.appendTo("body");
    form.css('display', 'none');
    form.submit();
}

/** 生成WBS输出列表项
 *
 */
function conv_wbs_output_item(o_name, o_type, fa_style, container, id)
{
    var opt = {"data-output-type": o_type};
    if(id){
        opt["data"] = id;
    }
    $("<li></li>", opt)
        .html("<i class='" + fa_style + "' aria-hidden='true'></i>" + o_name)
        .append("<a href='#' onclick='remove_wbs_output(this)' class='pull-right'><i class='fa fa-times red' aria-hidden='true'></i></a>")
        .appendTo(container);
}

/** 将指定选择集进行map操作
 */
function dom_map(selector, f)
{
    return $(selector).map(f).get();
}

/**
 * 根据给定json对象设置select, text, textarea, hidden 等元素的值
 */
function set_select_dom(name, value)
{
    if ($("#" + name + " option").length > 0) {
        //$("#" + name + " option[value='" + value + "']").attr("selected", "true");
        $("#" + name).val(value);
    }
}

function set_text_dom(name, value)
{
    if (($("#" + name).attr("type")) === "text") {
        $("#" + name).val(value);
    }
    if (($("#" + name).attr("rows")) > 0) {
        $("#" + name).text(value);
    }
}

function set_hidden_dom(name, value)
{
    if (($("#" + name).attr("type")) === "hidden") {
        $("#" + name).val(value);
    }
}

function set_input_box(container, id, name, position, email)
{
    var disp_name = position? name + "/" + position: name;
    var html = conv_inputbox_item(id, disp_name, email, id);
    $(container, parent.document).html(html)
}


/**
 计算两个日期之间的工作日
 */
function calc_workday(d1, d2)
{
    //日期差值,即包含周六日、以天为单位的工时，86400000=1000*60*60*24.
    var workDayVal = (d2 - d1)/86400000 + 1;
    //工时的余数
    var remainder = workDayVal % 7;
    //工时向下取整的除数
    var divisor = Math.floor(workDayVal / 7);
    var weekendDay = 2 * divisor;
    //起始日期的星期，星期取值有（1,2,3,4,5,6,0）
    var nextDay = d1.getDay();
    //从起始日期的星期开始 遍历remainder天
    for(var tempDay = remainder; tempDay>=1; tempDay--) {
        //第一天不用加1
        if(tempDay == remainder) {
            nextDay = nextDay + 0;
        } else if(tempDay != remainder) {
            nextDay = nextDay + 1;
        }
        //周日，变更为0
        if(nextDay == 7) {
            nextDay = 0;
        }

        //周六日
        if(nextDay == 0 || nextDay == 6) {
            weekendDay = weekendDay + 1;
        }
    }
    //实际工时（天） = 起止日期差 - 周六日数目。
    workDayVal -= weekendDay;
    return workDayVal;
}