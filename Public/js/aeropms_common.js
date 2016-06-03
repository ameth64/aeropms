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