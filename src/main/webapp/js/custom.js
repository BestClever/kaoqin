/**
 * ajax请求判断会话是否已过期
 */
$(document).ajaxError(function (event, jqXHR, options, errorMsg) {
    debugger
    var sessionStatus = jqXHR.getResponseHeader('SessionStatus');
    if (sessionStatus && sessionStatus === 'sessionTimeOut') {
        alert("您的会话已过期，请重新登录");
        location.href = "toLogin";
    }
});