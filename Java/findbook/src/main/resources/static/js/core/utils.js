var utils = {};
utils.fnListToObj = function (list) {
    var map = {};
    for (var i in list) {
        map[list[i]["id"]] = list[i]['text'];
    }
    return map;

}
/**
* 格式化字符串
* 用法:
.formatString("{0}-{1}","a","b");
*/
utils.formatString = function () {
    for (var i = 1; i < arguments.length; i++) {
        var exp = new RegExp('\\{' + (i - 1) + '\\}', 'gm');
        arguments[0] = arguments[0].replace(exp, arguments[i]);
    }
    return arguments[0];
};

/**
* 格式化时间显示方式
* 用法:format="yyyy-MM-dd hh:mm:ss";
*/
utils.formatDate = function (v, format) {
    if (!v) return "";
    var d = v;
    if (typeof v === 'string') {
        if (v.indexOf("/Date(") > -1)
            d = new Date(parseInt(v.replace("/Date(", "").replace(")/", ""), 10));
        else
            d = new Date(Date.parse(v.replace(/-/g, "/").replace("T", " ").split(".")[0]));//.split(".")[0] 用来处理出现毫秒的情况，截取掉.xxx，否则会出错
    }
    var o = {
        "M+": d.getMonth() + 1,  //month
        "d+": d.getDate(),       //day
        "h+": d.getHours(),      //hour
        "m+": d.getMinutes(),    //minute
        "s+": d.getSeconds(),    //second
        "q+": Math.floor((d.getMonth() + 3) / 3),  //quarter
        "S": d.getMilliseconds() //millisecond
    };
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (d.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
};

/**  
* 格式化数字显示方式   
* 用法  
* formatNumber(12345.999,'#,##0.00');  
* formatNumber(12345.999,'#,##0.##');  
* formatNumber(123,'000000');
*/
utils.formatNumber_1 = function (v, pattern) {
    if (v == null)
        return v;
    var strarr = v ? v.toString().split('.') : ['0'];
    var fmtarr = pattern ? pattern.split('.') : [''];
    var retstr = '';
    // 整数部分   
    var str = strarr[0];
    var fmt = fmtarr[0];
    var i = str.length - 1;
    var comma = false;
    for (var f = fmt.length - 1; f >= 0; f--) {
        switch (fmt.substr(f, 1)) {
            case '#':
                if (i >= 0) retstr = str.substr(i--, 1) + retstr;
                break;
            case '0':
                if (i >= 0) retstr = str.substr(i--, 1) + retstr;
                else retstr = '0' + retstr;
                break;
            case ',':
                comma = true;
                retstr = ',' + retstr;
                break;
        }
    }
    if (i >= 0) {
        if (comma) {
            var l = str.length;
            for (; i >= 0; i--) {
                retstr = str.substr(i, 1) + retstr;
                if (i > 0 && ((l - i) % 3) == 0) retstr = ',' + retstr;
            }
        }
        else retstr = str.substr(0, i + 1) + retstr;
    }
    retstr = retstr + '.';
    // 处理小数部分   
    str = strarr.length > 1 ? strarr[1] : '';
    fmt = fmtarr.length > 1 ? fmtarr[1] : '';
    i = 0;
    for (var f = 0; f < fmt.length; f++) {
        switch (fmt.substr(f, 1)) {
            case '#':
                if (i < str.length) retstr += str.substr(i++, 1);
                break;
            case '0':
                if (i < str.length) retstr += str.substr(i++, 1);
                else retstr += '0';
                break;
        }
    }
    return retstr.replace(/^,+/, '').replace(/\.$/, '');
};
/*---------------------------------------------------------------------------------------------*/
/**
* 格式化数字显示方式，非截取字符串形式，按照四舍六入五成双的修约规则--20160717 陈娟娟
*/

utils.formatNumber = function (v, pattern) {

    var digit = 0;

    var addzero = "", model = "";
    digit = pattern.indexOf('.') > 0 ? pattern.split('.')[1].length : 0; //保留的小数点位数
    //如 v=12.64502,保留三位 
    var temp = parseFloat(v);
    var s = parseFloat(v) * parseInt(Math.pow(10, digit + 1));

    var v1 = Math.floor(s); // v1=12645
    var v2 = v1 / Math.pow(10, digit + 1); //v2=12.645 保留小数位之前的数如 v1=12.645

    temp = parseFloat(v) - v2; //temp = 12.64502-12.645 = 0.0002   小数位之后的数据 如temp=0.00002
    var vtemp = Math.abs(v2) * Math.pow(10, digit + 1); // vtemp = 12.645 * 10^2=1264.5

    if (Math.floor(vtemp) - Math.floor(vtemp / 10) * 10 == 5) {
        if (temp == 0) {
            if (vtemp - Math.floor(vtemp) == 0) {
                if (parseInt(Math.floor(vtemp / 10)) % 2 == 0)
                    vtemp = Math.floor(vtemp / 10) / Math.pow(10, digit);
                else
                    vtemp = (vtemp / Math.pow(10, digit + 1)).toFixed(digit);
            }
            else
                vtemp = (vtemp / Math.pow(10, digit + 1)).toFixed(digit);
        }
        else
            vtemp = ((vtemp + 1) / Math.pow(10, digit + 1)).toFixed(digit);
    }
    else
        vtemp = parseFloat(v).toFixed(digit);

    if (vtemp.toString().split('.').length != 1) {
        var dt = vtemp.toString().split('.')[1].length;
        if (dt < digit) {
            for (var i = 0; i < digit - dt; i++)
                addzero += "0";
        }
        model = vtemp.toString() + addzero;
    }
    else {
        switch (digit) {
            case 0: model = vtemp.toString(); break;
            case 1: model = vtemp.toFixed(1); break;
            case 2: model = vtemp.toFixed(2); break;
            case 3: model = vtemp.toFixed(3); break;
            case 4: model = vtemp.toFixed(4); break;
            default: break;
        }
    }
    return model;
}