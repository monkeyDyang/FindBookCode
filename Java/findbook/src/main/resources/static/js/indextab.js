(function ($) {
    $.Sundytab = {
        requestFullScreen: function () {
            var de = document.documentElement;
            if (de.requestFullscreen) {
                de.requestFullscreen();
            } else if (de.mozRequestFullScreen) {
                de.mozRequestFullScreen();
            } else if (de.webkitRequestFullScreen) {
                de.webkitRequestFullScreen();
            }
        },
        exitFullscreen: function () {
            var de = document;
            if (de.exitFullscreen) {
                de.exitFullscreen();
            } else if (de.mozCancelFullScreen) {
                de.mozCancelFullScreen();
            } else if (de.webkitCancelFullScreen) {
                de.webkitCancelFullScreen();
            }
        },
        refreshTab: function () {
            var currentId = $('.page-tabs-content').find('.active').attr('data-id');
            var target = $('.Sundy_iframe[data-id="' + currentId + '"]');
            var url = target.attr('src');
            $.loading(true);
            target.attr('src', url).load(function () {
                $.loading(false);
            });
        },
        activeTab: function () {
            var currentId = $(this).data('id');
            if (!$(this).hasClass('active')) {
                $('.mainContent .Sundy_iframe').each(function () {
                    if ($(this).data('id') == currentId) {
                        $(this).show(50, frameShowCallback).siblings('.Sundy_iframe').hide();
                        return false;
                    }
                });

                $('.menuTab').each(function () {
                    $(this).find("#icon").attr("style", "");
                });

                $(this).find("#icon").css("color","#ffffff");

                $(this).addClass('active').siblings('.menuTab').removeClass('active');
                $.Sundytab.scrollToTab(this);
            }
        },
        closeOtherTabs: function () {
            $('.page-tabs-content').children("[data-id]").find('.fa-times-circle').parents('a').not(".active").each(function () {
                $('.Sundy_iframe[data-id="' + $(this).data('id') + '"]').remove();
                $(this).remove();
            });
            $('.page-tabs-content').css("margin-left", "0");
        },
        closeTab: function () {            
            if ($(this).attr("id") == "icon") {
                var currentId = $(this).parents('.menuTab').data('id');
                if (!$(this).parents('.menuTab').hasClass('active')) {
                    $('.mainContent .Sundy_iframe').each(function () {
                        if ($(this).data('id') == currentId) {
                            $(this).show(50, frameShowCallback).siblings('.Sundy_iframe').hide();
                            return false;
                        }
                    });

                    $('.menuTab').each(function () {
                        $(this).find("#icon").attr("style", "");
                    });

                    $(this).parents('.menuTab').find("#icon").css("color", "#ffffff");

                    $(this).parents('.menuTab').addClass('active').siblings('.menuTab').removeClass('active');
                    $.Sundytab.scrollToTab($('.menuTab.active'));
                }
                return false;
            }

            var closeTabId = $(this).parents('.menuTab').data('id');
            if (closeTabId == "/Home/Default") {
                return false;
            }

            var currentWidth = $(this).parents('.menuTab').width();
            if ($(this).parents('.menuTab').hasClass('active')) {
                if ($(this).parents('.menuTab').next('.menuTab').size()) {
                    var activeId = $(this).parents('.menuTab').next('.menuTab:eq(0)').data('id');
                    $(this).parents('.menuTab').next('.menuTab:eq(0)').addClass('active');
                    $(this).parents('.menuTab').next('.menuTab:eq(0)').find("#icon").css("color", "#ffffff");
                    $('.mainContent .Sundy_iframe').each(function () {
                        if ($(this).data('id') == activeId) {
                            $(this).show(50, frameShowCallback).siblings('.Sundy_iframe').hide();
                            return false;
                        }
                    });
                    var marginLeftVal = parseInt($('.page-tabs-content').css('margin-left'));
                    if (marginLeftVal < 0) {
                        $('.page-tabs-content').animate({
                            marginLeft: (marginLeftVal + currentWidth) + 'px'
                        }, "fast");
                    }
                    $(this).parents('.menuTab').remove();
                    $('.mainContent .Sundy_iframe').each(function () {
                        if ($(this).data('id') == closeTabId) {
                            $(this).remove();
                            return false;
                        }
                    });
                }
                if ($(this).parents('.menuTab').prev('.menuTab').size()) {
                    var activeId = $(this).parents('.menuTab').prev('.menuTab:last').data('id');
                    $(this).parents('.menuTab').prev('.menuTab:last').addClass('active');
                    $(this).parents('.menuTab').prev('.menuTab:last').find("#icon").css("color", "#ffffff");
                    $('.mainContent .Sundy_iframe').each(function () {
                        if ($(this).data('id') == activeId) {
                            $(this).show(50, frameShowCallback).siblings('.Sundy_iframe').hide();
                            return false;
                        }
                    });
                    $(this).parents('.menuTab').remove();
                    $('.mainContent .Sundy_iframe').each(function () {
                        if ($(this).data('id') == closeTabId) {
                            $(this).remove();
                            return false;
                        }
                    });
                    $.Sundytab.scrollToTab($('.menuTab.active'));
                }
            }
            else {
                $(this).parents('.menuTab').remove();
                $('.mainContent .Sundy_iframe').each(function () {
                    if ($(this).data('id') == closeTabId) {
                        $(this).remove();
                        return false;
                    }
                });
                $.Sundytab.scrollToTab($('.menuTab.active'));
            }
            return false;
        },
        addTab: function () {
            $("#header-nav>ul>li.open").removeClass("open");
            var dataId = $(this).attr('data-id');
            if (dataId != "") {
                top.$.cookie('Sundy_currentmoduleid', dataId, { path: "/" });
            }
            var dataUrl = $(this).attr('href');
            var menuName = $.trim($(this).text());
            var flag = true;
            if (dataUrl == undefined || $.trim(dataUrl).length == 0) {
                return false;
            } 
            var iconClass = $(this).parent().find("i").attr("class");
            $('.menuTab').each(function () {
                $(this).find("#icon").attr("style", "");
            });            

            $('.menuTab').each(function () {
                if ($(this).data('id') == dataUrl) {

                    //文件管理菜单采用先关闭再重新打开的方式(方便合同/合同意向的附件管理)
                    var fileManagerUrl = "/CDM/FileManager"; 
                    if (dataUrl == fileManagerUrl) {
                        $(this).find('i').click();
                        //$("#left-menu a[href='" + fileManagerUrl + "']").click();
                        flag = true;
                        return false;
                    }

                    $(this).find("#icon").css("color", "#ffffff");

                    if (!$(this).hasClass('active')) {
                        $(this).addClass('active').siblings('.menuTab').removeClass('active');
                        $.Sundytab.scrollToTab(this);
                        $('.mainContent .Sundy_iframe').each(function () {
                            if ($(this).data('id') == dataUrl) {
                                $(this).show(50, frameShowCallback).siblings('.Sundy_iframe').hide();
                                return false;
                            }
                        });
                    }
                    flag = false;
                    return false;
                }
            });
            if (flag) {
                var str = '<a href="javascript:;" class="active menuTab" data-id="' + dataUrl + '"><i id="icon" class="' + iconClass + '" style="color:#ffffff;"></i>&nbsp;&nbsp;' + menuName + '&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-times-circle"></i></a>';
                $('.menuTab').removeClass('active');
                var str1 = '<iframe class="Sundy_iframe" id="iframe' + dataId + '" name="iframe' + dataId + '"  width="100%" height="100%" src="' + dataUrl + '" frameborder="0" data-id="' + dataUrl + '" seamless></iframe>';
                $('.mainContent').find('iframe.Sundy_iframe').hide();
                $('.mainContent').append(str1);
                $.loading(true);
                $('.mainContent iframe:visible').load(function () {
                    $.loading(false);
                });
                $('.menuTabs .page-tabs-content').append(str);
                $.Sundytab.scrollToTab($('.menuTab.active'));
            }
            return false;
        },
        scrollTabRight: function () {
            var marginLeftVal = Math.abs(parseInt($('.page-tabs-content').css('margin-left')));
            var tabOuterWidth = $.Sundytab.calSumWidth($(".content-tabs").children().not(".menuTabs"));
            var visibleWidth = $(".content-tabs").outerWidth(true) - tabOuterWidth;
            var scrollVal = 0;
            if ($(".page-tabs-content").width() < visibleWidth) {
                return false;
            } else {
                var tabElement = $(".menuTab:first");
                var offsetVal = 0;
                while ((offsetVal + $(tabElement).outerWidth(true)) <= marginLeftVal) {
                    offsetVal += $(tabElement).outerWidth(true);
                    tabElement = $(tabElement).next();
                }
                offsetVal = 0;
                while ((offsetVal + $(tabElement).outerWidth(true)) < (visibleWidth) && tabElement.length > 0) {
                    offsetVal += $(tabElement).outerWidth(true);
                    tabElement = $(tabElement).next();
                }
                scrollVal = $.Sundytab.calSumWidth($(tabElement).prevAll());
                if (scrollVal > 0) {
                    $('.page-tabs-content').animate({
                        marginLeft: 0 - scrollVal + 'px'
                    }, "fast");
                }
            }
        },
        scrollTabLeft: function () {
            var marginLeftVal = Math.abs(parseInt($('.page-tabs-content').css('margin-left')));
            var tabOuterWidth = $.Sundytab.calSumWidth($(".content-tabs").children().not(".menuTabs"));
            var visibleWidth = $(".content-tabs").outerWidth(true) - tabOuterWidth;
            var scrollVal = 0;
            if ($(".page-tabs-content").width() < visibleWidth) {
                return false;
            } else {
                var tabElement = $(".menuTab:first");
                var offsetVal = 0;
                while ((offsetVal + $(tabElement).outerWidth(true)) <= marginLeftVal) {
                    offsetVal += $(tabElement).outerWidth(true);
                    tabElement = $(tabElement).next();
                }
                offsetVal = 0;
                if ($.Sundytab.calSumWidth($(tabElement).prevAll()) > visibleWidth) {
                    while ((offsetVal + $(tabElement).outerWidth(true)) < (visibleWidth) && tabElement.length > 0) {
                        offsetVal += $(tabElement).outerWidth(true);
                        tabElement = $(tabElement).prev();
                    }
                    scrollVal = $.Sundytab.calSumWidth($(tabElement).prevAll());
                }
            }
            $('.page-tabs-content').animate({
                marginLeft: 0 - scrollVal + 'px'
            }, "fast");
        },
        scrollToTab: function (element) {
            var marginLeftVal = $.Sundytab.calSumWidth($(element).prevAll()), marginRightVal = $.Sundytab.calSumWidth($(element).nextAll());
            var tabOuterWidth = $.Sundytab.calSumWidth($(".content-tabs").children().not(".menuTabs"));
            var visibleWidth = $(".content-tabs").outerWidth(true) - tabOuterWidth;
            var scrollVal = 0;
            if ($(".page-tabs-content").outerWidth() < visibleWidth) {
                scrollVal = 0;
            } else if (marginRightVal <= (visibleWidth - $(element).outerWidth(true) - $(element).next().outerWidth(true))) {
                if ((visibleWidth - $(element).next().outerWidth(true)) > marginRightVal) {
                    scrollVal = marginLeftVal;
                    var tabElement = element;
                    while ((scrollVal - $(tabElement).outerWidth()) > ($(".page-tabs-content").outerWidth() - visibleWidth)) {
                        scrollVal -= $(tabElement).prev().outerWidth();
                        tabElement = $(tabElement).prev();
                    }
                }
            } else if (marginLeftVal > (visibleWidth - $(element).outerWidth(true) - $(element).prev().outerWidth(true))) {
                scrollVal = marginLeftVal - $(element).prev().outerWidth(true);
            }
            $('.page-tabs-content').animate({
                marginLeft: 0 - scrollVal + 'px'
            }, "fast");
        },
        calSumWidth: function (element) {
            var width = 0;
            $(element).each(function () {
                width += $(this).outerWidth(true);
            });
            return width;
        },
        init: function () {
            $('.menuItem').on('click', $.Sundytab.addTab);
            $('.menuTabs').on('click', '.menuTab i', $.Sundytab.closeTab);
            $('.menuTabs').on('click', '.menuTab', $.Sundytab.activeTab);
            $('.tabLeft').on('click', $.Sundytab.scrollTabLeft);
            $('.tabRight').on('click', $.Sundytab.scrollTabRight);
            $('.tabReload').on('click', $.Sundytab.refreshTab);
            $('.tabCloseCurrent').on('click', function () {
                $('.page-tabs-content').find('.active i').trigger("click");
            });
            $('.tabCloseAll').on('click', function () {
                //$('.page-tabs-content').children("[data-id]").find('.fa-times-circle').each(function () {//dropdown-menu
                //    $('.Sundy_iframe[data-id="' + $(this).data('id') + '"]').remove();
                //    $(this).parents('a').remove();
                //});
                //$('.page-tabs-content').children("[data-id]:first").each(function () {
                //    $('.Sundy_iframe[data-id="' + $(this).data('id') + '"]').show(50, frameShowCallback);
                //    $(this).addClass("active");
                //});
                //$('.page-tabs-content').css("margin-left", "0");
                //$('.menuTab').each(function () {
                //    $(this).find("#icon").css("color", "#ffffff");
                //});
                
                $('.page-tabs-content').find('.menuTab').each(function () {
                    $(this).find("i").eq(1).trigger("click");
                });
            });
            $('.tabCloseOther').on('click', $.Sundytab.closeOtherTabs);
            $('.fullscreen').on('click', function () {
                if (!$(this).attr('fullscreen')) {
                    $(this).attr('fullscreen', 'true');
                    requestFullScreen();
                } else {
                    $(this).removeAttr('fullscreen')
                    exitFullscreen();
                }
            });
        }
    };
    $(function () {
        $.Sundytab.init();
    });
})(jQuery);

frameShowCallback = function () {
    if ($(this)[0].contentWindow.frameShow != undefined) {
        $(this)[0].contentWindow.frameShow();
    }
}