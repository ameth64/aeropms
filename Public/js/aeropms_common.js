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

/** 将指定选择集进行map操作
 */
function dom_map(selector, f)
{
    return $(selector).map(f).get();
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