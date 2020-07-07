<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/Webtextile/admin/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/Webtextile/admin/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="/Webtextile/admin/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/Webtextile/admin/assets/css/app.css">
    <script src="/Webtextile/admin/assets/js/jquery.min.js"></script>
</head>
<body data-type="widgets">
    <script src="/Webtextile/admin/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;"><img src="/Webtextile/admin/assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                        <span>

                    </span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search"></button>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>${Session.currentUser.username}</span> </a>
                        </li>

                        <!-- 新邮件 -->
                        <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                            <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
                                <i class="am-icon-envelope"></i>
                                <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
                            </a>
                            <!-- 弹出列表 -->
                            <ul class="am-dropdown-content tpl-dropdown-content">
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="/Webtextile/admin/assets/img/user04.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            3小时前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-success"></i>
                                                <span>夕风色</span>
                                            </div>
                                            <div class="am-text-truncate"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </div>
                                            <div class="menu-messages-content-time">2016-09-21 下午 16:40</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <div class="menu-messages-ico">
                                            <img src="/Webtextile/admin/assets/img/user02.png" alt="">
                                        </div>
                                        <div class="menu-messages-time">
                                            5天前
                                        </div>
                                        <div class="menu-messages-content">
                                            <div class="menu-messages-content-title">
                                                <i class="am-icon-circle-o am-text-warning"></i>
                                                <span>禁言小张</span>
                                            </div>
                                            <div class="am-text-truncate"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </div>
                                            <div class="menu-messages-content-time">2016-09-16 上午 09:23</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="tpl-dropdown-menu-messages">
                                    <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                        <i class="am-icon-circle-o"></i> 进入列表…
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="javascript:;">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="/Webtextile/admin/assets/img/user04.png" alt="">
                    </div>
                    <span class="user-panel-logged-in-text">
                  <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
                  禁言小张
              </span>
                    <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
                </div>
            </div>

            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <#--<li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>-->
                <li class="sidebar-nav-link">
                    <a href="/Webtextile/index">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="/Webtextile/admin/userManage" class="active">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 用户管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="calendar.html">
                        <i class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="form.html">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 表单

                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="chart.html">
                        <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

                    </a>
                </li>

                <li class="sidebar-nav-heading">Page<span class="sidebar-nav-heading-info"> 常用页面</span></li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title ">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 数据列表
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
                        <li class="sidebar-nav-link">
                            <a href="table-list.html" class="sub-active">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文字列表
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="table-list-img.html">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 图文列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-nav-link">
                    <a href="sign-up.html">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
                        <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="login.html">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 登录
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="404.html">
                        <i class="am-icon-tv sidebar-nav-link-logo"></i> 404错误
                    </a>
                </li>

            </ul>
        </div>

        <#--<#include "../common/header.ftl"/>-->
        <#--<#include "../common/skiner.ftl"/>-->
        <#--<#include "../common/sidebar.ftl"/>-->

        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">


            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">用户列表</div>
                            </div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 添加</button>
                                                <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 批量删除</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3" style="float: right;">
                                    <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" class="am-form-field ">
                                        <span class="am-input-group-btn">
                                            <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="button"></button>
                                        </span>
                                    </div>
                                </div>

                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-bordered tpl-table-black " >
                                        <thead>
                                        <tr>
                                            <th style="text-align: center;"><input type="checkbox"></th>
                                            <th style="text-align: center;">用户编号</th>
                                            <th style="text-align: center;">用户名称</th>
                                            <th style="text-align: center;">用户地址</th>
                                            <th style="text-align: center;">用户邮箱</th>
                                            <th style="text-align: center;">用户号码</th>
                                            <th style="text-align: center;">创建时间</th>
                                            <th style="text-align: center;">公司编号</th>
                                            <th style="text-align: center;">操作</th>
                                        </tr>
                                        </thead>

                                        <tbody id="enterpriseTableTbody">

                                        </tbody>

                                    </table>
                                </div>
                                <div class="am-u-lg-12 am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="/Webtextile/admin/assets/js/amazeui.min.js"></script>
    <script src="/Webtextile/admin/assets/js/amazeui.datatables.min.js"></script>
    <script src="/Webtextile/admin/assets/js/dataTables.responsive.min.js"></script>
    <script src="/Webtextile/admin/assets/js/app.js"></script>


    <script>

        $(function () {
            $.ajax({
                url: '/Webtextile/user/initEnterpriseUserTable',
                type: 'get',
                success: function (dt) {
                    if(dt.code === 200){
                        var enterpriseTableTbody = $("#enterpriseTableTbody");
                        for(var i=0;i<dt.data.length;i++){

                            var html = "<tr>" +
                                            "<td style='text-align: center;'><input type='checkbox'></td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].userId +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].username +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].address +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].email +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].telephone +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].registerTime +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].enterName +"</td>" +
                                            "<td style='text-align: center;'>" +
                                                "<div class='tpl-table-black-operation'>" +
                                                    "<button class=\"am-btn am-btn-success am-round am-btn-xs\"><i class='am-icon-cog'></i>重置密码</button>" +
                                                    "<button class=\"am-btn am-btn-secondary am-round am-btn-xs\"><i class='am-icon-cog'></i>查看</button>" +
                                                    "<button class=\"am-btn am-btn-warning am-round am-btn-xs\"><i class='am-icon-cog'></i>编辑</button>" +
                                                    "<button class=\"am-btn am-btn-danger am-round am-btn-xs\"><i class='am-icon-cog'></i>删除</button>" +
                                                "</div>" +
                                            "</td>" +
                                        "</tr>";

                            enterpriseTableTbody.append(html);
                        }


                    }
                }
            })
        })

    </script>
</body>
</html>