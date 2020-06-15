layui.define(['jquery', 'layer'], function (exports) {
    var $ = layui.jquery;
    var customUtil = {
        /**
         * 是否前后端分离
         */
        isFrontendBackendSeparate: true,
        /**
         * 服务器地址
         */
        baseUrl: "http://127.0.0.1:8080/",
        /**
         * ajax()函数二次封装
         * @param url
         * @param type
         * @param params
         * @param load
         * @returns {*|never|{always, promise, state, then}}
         */
        ajax: function (url, type, params, load) {
            var deferred = $.Deferred();
            var loadIndex;
            console.log(customUtil.isFrontendBackendSeparate ? customUtil.baseUrl + url : url);
            $.ajax({
                url: url,
                type: type || "get",
                data: params || {},
                dataType: "json",
                headers: { 'Content-Type': 'application/json;charset=utf8', 'token': window.localStorage.getItem("token") },
                beforeSend: function (request) {
                    if (load) {
                        loadIndex = layer.load(0, {shade: 0.3});
                    }
                },
                success: function (data) {
                    if (data.success) {
                        // 业务正常
                        deferred.resolve(data)
                    } else {
                        // 业务异常
                        layer.msg(data.msg, {icon: 7, time: 2000});
                        deferred.reject("customUtil.ajax warn: " + data.msg);
                    }
                },
                complete: function () {
                    if (load) {
                        layer.close(loadIndex);
                    }
                },
                error: function () {
                    debugger
                    layer.close(loadIndex);
                    layer.msg("服务器错误", {icon: 2, time: 2000});
                    deferred.reject("customUtil.ajax error: 服务器错误");
                }
                // error: function (XMLHttpRequest, textStatus, errorThrown) {
                //     debugger
                //     // 状态码
                //     console.log(XMLHttpRequest.status);
                //     // 状态
                //     console.log(XMLHttpRequest.readyState);
                //     // 错误信息
                //     console.log(textStatus);
                //     layer.close(loadIndex);
                // }
            });
            return deferred.promise();
        }
    };
    //输出接口
    exports('customUtil', customUtil);
});