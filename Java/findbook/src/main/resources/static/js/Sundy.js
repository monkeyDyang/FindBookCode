//处理键盘事件 禁止后退键（Backspace）密码或单行、多行文本框除外  
function forbidBackSpace(e) {
    var ev = e || window.event; //获取event对象  
    var obj = ev.target || ev.srcElement; //获取事件源  
    var t = obj.type || obj.getAttribute('type'); //获取事件源类型  
    //获取作为判断条件的事件类型  
    var vReadOnly = obj.readOnly;
    var vDisabled = obj.disabled;
    //处理undefined值情况  
    vReadOnly = (vReadOnly == undefined) ? false : vReadOnly;
    vDisabled = (vDisabled == undefined) ? true : vDisabled;
    //当敲Backspace键时，事件源类型为密码或单行、多行文本的，  
    //并且readOnly属性为true或disabled属性为true的，则退格键失效  
    var flag1 = ev.keyCode == 8 && (t == "password" || t == "text" || t == "textarea" || t == "search" || t == "number") && (vReadOnly == true || vDisabled == true);
    //当敲Backspace键时，事件源类型非密码或单行、多行文本的，则退格键失效  
    var flag2 = ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea" && t != "search" && t != "number";
    //判断  
    if (flag2 || flag1) return false;
}
//禁止后退键 作用于Firefox、Opera  
document.onkeypress = forbidBackSpace;
//禁止后退键  作用于IE、Chrome  
document.onkeydown = forbidBackSpace;



//只能输入浮点数方法
function CheckInputIntFloat(oInput) {
    if ('' != oInput.value.replace(/\d{1,}\.{0,1}\d{0,}/, '')) {
        oInput.value = oInput.value.match(/\d{1,}\.{0,1}\d{0,}/) == null ? '' : oInput.value.match(/\d{1,}\.{0,1}\d{0,}/);
    }
}

//根据时间求取与当前时间的差值
function GetDateDiff(startTime, diffType) {
    startTime = startTime.replace(/\-/g, "/");
    //将计算间隔类性字符转换为小写
    diffType = diffType.toLowerCase();
    var sTime = new Date(startTime); //开始时间
    var eTime = new Date(new Date().toLocaleDateString()); //结束时间
    //作为除数的数字
    var timeType = 1;
    switch (diffType) {
        case "second":
            timeType = 1000;
            break;
        case "minute":
            timeType = 1000 * 60;
            break;
        case "hour":
            timeType = 1000 * 3600;
            break;
        case "day":
            timeType = 1000 * 3600 * 24;
            break;
        default:
            break;
    }
    return parseInt((sTime.getTime() - eTime.getTime()) / parseInt(timeType));
}