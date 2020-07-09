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

        <#include "../../common/header.ftl"/>
        <#include "../../common/skiner.ftl"/>


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
                </div>
            </div>

            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <#--<li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>-->
                <li class="sidebar-nav-link">
                    <a href="/Webtextile/index" >
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>

                <@shiro.hasRole name="admin">
                    <li class="sidebar-nav-link">
                        <a href="javascript:;" class="sidebar-nav-sub-title">
                            <i class="am-icon-table sidebar-nav-link-logo"></i> 基础信息
                            <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                        </a>
                        <ul class="sidebar-nav sidebar-nav-sub">
                            <li class="sidebar-nav-link">
                                <a href="/Webtextile/admin/enterManage">
                                    <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 企业管理
                                </a>
                            </li>

                            <li class="sidebar-nav-link">
                                <a href="table-list-img.html">
                                    <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 生命周期管理
                                </a>
                            </li>

                            <li class="sidebar-nav-link">
                                <a href="table-list-img.html">
                                    <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 量纲管理
                                </a>
                            </li>

                            <li class="sidebar-nav-link">
                                <a href="table-list-img.html">
                                    <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 基础流管理
                                </a>
                            </li>

                            <li class="sidebar-nav-link">
                                <a href="table-list-img.html">
                                    <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 群组管理
                                </a>
                            </li>
                        </ul>

                    </li>
                </@shiro.hasRole>


                <@shiro.hasAnyRoles name="admin,enterprise">

                    <li class="sidebar-nav-link">
                        <a href="javascript:;" class="sidebar-nav-sub-title active" >
                            <i class="am-icon-table sidebar-nav-link-logo"></i> 用户管理
                            <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                        </a>
                        <@shiro.hasRole name="admin">
                            <ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
                                <li class="sidebar-nav-link">
                                    <a href="/Webtextile/admin/enterpriseManage" class="sub-active">
                                        <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 企业负责人管理
                                    </a>
                                </li>

                                <li class="sidebar-nav-link">
                                    <a href="table-list-img.html">
                                        <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 其他用户管理
                                    </a>
                                </li>
                            </ul>
                        </@shiro.hasRole>

                        <@shiro.hasRole name="enterprise">
                            <ul class="sidebar-nav sidebar-nav-sub">
                                <li class="sidebar-nav-link">
                                    <a href="/Webtextile/admin/userManage">
                                        <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 供应商管理
                                    </a>
                                </li>

                                <li class="sidebar-nav-link">
                                    <a href="table-list-img.html">
                                        <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 内部协作人管理
                                    </a>
                                </li>
                            </ul>
                        </@shiro.hasRole>

                    </li>
                </@shiro.hasAnyRoles>

                <li class="sidebar-nav-link">
                    <a href="form.html">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 产品管理
                    </a>
                </li>

                <li class="sidebar-nav-link">
                    <a href="login.html">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 消息管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="login.html">
                        <i class="am-icon-key sidebar-nav-link-logo"></i> 报告管理
                    </a>
                </li>

                <li class="sidebar-nav-link">
                    <a href="sign-up.html">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 个人信息
                    </a>
                </li>
            </ul>
        </div>


        <#-- 添加用户窗口 -->
        <div class="am-modal am-modal-no-btn" tabindex="-1" id="user-add-modal">
            <div class="am-modal-dialog widget" style="width: 35%;height: 60%">
                <div class="am-modal-hd">添加用户
                    <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                </div>
                <div class="am-modal-bd">
                    <div class="row">

                        <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                            <div class="widget am-cf">
                                <div class="widget-body am-fr">

                                    <form class="am-form tpl-form-border-form tpl-form-border-br" data-am-validator>
                                        <div class="am-form-group">
                                            <label for="userId" class="am-u-sm-3 am-form-label">用户编号 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="userId" name="userId" placeholder="请输入用户编号" required>
                                            </div>
                                            <div class="am-u-sm-2">
                                                <small id="result"></small>
                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="password" class="am-u-sm-3 am-form-label">用户密码 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="password" name="password" placeholder="请输入用户密码" required>
                                                <#--<small>请填写标题文字10-20字左右。</small>-->
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="username" class="am-u-sm-3 am-form-label">用户名 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="username" name="username" placeholder="请输入用户名" required>
                                                <#--<small>请填写标题文字10-20字左右。</small>-->
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="address" class="am-u-sm-3 am-form-label">用户地址 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="address" name="address" placeholder="请输入用户地址" >
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="email" class="am-u-sm-3 am-form-label">用户邮箱 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="email" name="email" placeholder="请输入用户邮箱" >
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="telephone" class="am-u-sm-3 am-form-label">用户号码 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="telephone" name="telephone" placeholder="请输入用户号码" >
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="remark" class="am-u-sm-3 am-form-label">备注 <span class="tpl-form-line-small-title">Title</span></label>
                                            <div class="am-u-sm-7">
                                                <input type="text" class="tpl-form-input" id="remark" name="remark">
                                            </div>
                                            <div class="am-u-sm-2">

                                            </div>
                                        </div>


                                        <div class="am-form-group">
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " id="ADDUSER">提交</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <#-- 编辑窗口 -->
        <div class="am-modal am-modal-no-btn" tabindex="-1" id="user-edit-modal">
            <div class="am-modal-dialog">
                <div class="am-modal-hd">Modal 标题
                    <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                </div>
                <div class="am-modal-bd">
                    Modal 内容。本 Modal 无法通过遮罩层关闭。
                </div>
            </div>
        </div>

        <#-- 查看窗口 -->
        <div class="am-modal am-modal-no-btn" tabindex="-1" id="user-view-modal">
            <div class="am-modal-dialog">
                <div class="am-modal-hd">Modal 标题
                    <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                </div>
                <div class="am-modal-bd">
                    Modal 内容。本 Modal 无法通过遮罩层关闭。
                </div>
            </div>
        </div>

        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">
            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">企业负责人列表</div>
                            </div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button" class="am-btn am-btn-default am-btn-success" data-am-modal="{target: '#user-add-modal', closeViaDimmer: 0,dimmer: false}"><span class="am-icon-plus"></span> 添加</button>
                                                <button type="button" id="delAllUser" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 批量删除</button>
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
                                            <th style="text-align: center;"><input type="checkbox" name="enterpriseCheckboxs"></th>
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

    <script src="/Webtextile/admin/assets/js/amazeui.min.js"></script>
    <script src="/Webtextile/admin/assets/js/amazeui.datatables.min.js"></script>
    <script src="/Webtextile/admin/assets/js/dataTables.responsive.min.js"></script>
    <script src="/Webtextile/admin/assets/js/app.js"></script>
    <script src="/Webtextile/layer/layer.js"></script>


    <script>
        // 判断用户是否存在
        var flag = false;

        // 初始化加载企业负责人表格
        $(function () {
            $.ajax({
                url: '/Webtextile/user/initEnterpriseUserTable',
                type: 'get',
                success: function (dt) {
                    if(dt.code === 200){
                        var enterpriseTableTbody = $("#enterpriseTableTbody");
                        for(var i=0;i<dt.data.length;i++){

                            var html = "<tr>" +
                                            "<td style='text-align: center;'><input type='checkbox' name='enterpriseCheckbox' value='"+ dt.data[i].userId +"'></td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].userId +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].username +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].address +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].email +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].telephone +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].registerTime +"</td>" +
                                            "<td style='text-align: center;'>"+ dt.data[i].enterName +"</td>" +
                                            "<td style='text-align: center;'>" +
                                                "<div class='tpl-table-black-operation'>" +
                                                    "<button type='button' onclick='reset(\""+ dt.data[i].userId +"\")' class=\"am-btn am-btn-success am-round am-btn-xs\" ><i class='am-icon-cog'></i>重置密码</button>" +
                                                    "<button type='button' onclick='view(\""+ dt.data[i].userId +"\")' class=\"am-btn am-btn-secondary am-round am-btn-xs\" data-am-modal=\"{target: '#user-view-modal', closeViaDimmer: 0, width: 400, height: 225,dimmer: false}\"><i class='am-icon-cog'></i>查看</button>" +
                                                    "<button type='button' onclick='edit(\""+ dt.data[i].userId +"\")' class=\"am-btn am-btn-warning am-round am-btn-xs\" data-am-modal=\"{target: '#user-edit-modal', closeViaDimmer: 0, width: 400, height: 225,dimmer: false}\"><i class='am-icon-cog'></i>编辑</button>" +
                                                    "<button type='button' onclick='del(\""+ dt.data[i].userId +"\")' class=\"am-btn am-btn-danger am-round am-btn-xs\"><i class='am-icon-cog'></i>删除</button>" +
                                                "</div>" +
                                            "</td>" +
                                        "</tr>";

                            enterpriseTableTbody.append(html);
                        }


                    }
                }
            })
        });

        // checkbox 全选和全不选
        $("input[name='enterpriseCheckboxs']").click(function () {
            if(this.checked){
                $("input[name='enterpriseCheckbox']").prop('checked','checked');
            }else {
                $("input[name='enterpriseCheckbox']").removeAttr('checked');
            }
        });

        // 批量删除企业负责人
        $("#delAllUser").click(function () {
            var userIds=[];
            $("input[name='enterpriseCheckbox']:checked").each(function () {
                userIds.push($(this).val());
            });

            if(userIds.length === 0){
                layer.msg("请选择用户", {icon: 5, time: 1000});
            }else {
                var index = layer.confirm("是否删除",{
                    title:'提示',
                    icon:3
                },function () {
                    layer.close(index);
                    $.ajax({
                        url: '/Webtextile/user/delAllUser',
                        type: 'post',
                        data: {
                            userIds: userIds
                        },
                        success: function (dt) {

                        }
                    })
                })
            }
        });

        // 监听用户编号input焦点失去事件
        $("input[name='userId']").on('blur',function () {
            if($("#userId").val() !== '') {
                $.ajax({
                    url: '/Webtextile/user/getUser/' + $("#userId").val(),
                    type: 'get',
                    success: function (dt) {
                        if (dt.code === 200) {
                            flag = true;
                            $("#result").text("用户已注册");
                            $("#result").css('color', 'red');
                        } else {
                            flag = false;
                            $("#result").text("用户未注册");
                            $("#result").css('color', 'green');
                        }
                    }
                })
            }
        });

        // 添加用户
        $("#ADDUSER").click(function () {
            var userId = $("#userId").val();
            var password = $("#password").val();
            var username = $("#username").val();

            if(userId === ''){
                layer.msg('用户编号为空',{icon: 5,time: 1000});
            }else if(password === ''){
                layer.msg('用户密码为空',{icon: 5,time: 1000});
            }else if(username === ''){
                layer.msg('用户名为空',{icon: 5,time: 1000});
            }else{
                if(flag === true){
                    layer.msg('用户已存在',{icon: 5,time: 1000});
                }else{
                    layer.msg('用户已存在',{icon: 5,time: 1000});
                }
            }

            return false;
        });

        // 重置用户密码
        function reset(value) {
            $.ajax({
                url: '/Webtextile/user/resetPassword/'+value,
                type: 'get',
                success: function (dt) {
                    if (dt.code === 200){
                        layer.msg("密码为"+dt.message,{icon: 6,time: 1000})
                    }
                }
            });
        }

        // 查看用户信息
        function view(value) {
            $.ajax({
                url: '/Webtextile/user/getUser/'+value,
                type: 'get',
                success: function (dt) {
                    if (dt.code === 200){
                        console.log(dt.data);
                    }
                }
            });

        }

        // 编辑用户信息
        function edit(value) {
            $.ajax({
                url: '/Webtextile/user/getUser/'+value,
                type: 'get',
                success: function (dt) {
                    if (dt.code === 200){
                        console.log(dt.data);
                    }
                }
            });
        }

        // 删除用户信息
        function del(value) {
            $.ajax({
                url: '/Webtextile/user/delUser/'+value,
                type: 'delete',
                success: function (dt) {
                    if (dt.code === 200){
                        layer.msg("删除成功",{icon: 6,time: 1000},function () {
                            location.reload();
                        })
                    }
                }
            });
        }

    </script>
</body>
</html>