<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 注册</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="${APP_PATH }/favicon.ico">
    <link href="${APP_PATH }/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${APP_PATH }/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${APP_PATH }/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${APP_PATH }/css/animate.min.css" rel="stylesheet">
    <link href="${APP_PATH }/css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">H+</h1>

        </div>
        <h3>欢迎注册 H+</h3>
        <p>创建一个H+新账户</p>
        <form class="form-horizontal m-t" id="signupForm" role="form" action="/registerSave" method="post"
              enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="请输入用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码"
                       required="">
            </div>
            <div class="form-group">
                <input type="password" id="confirm_password" name="confirm_password" class="form-control"
                       placeholder="请再次输入密码" required="">
            </div>
            <div class="form-group text-left">
                <div class="checkbox i-checks">
                    <label class="no-padding">
                        <input type="checkbox" class="checkbox" name="agree" id="agree"><i></i> 我已经认真阅读并同意《H+使用协议》</label>
                </div>
            </div>
            <div class="form-group">

                    <button type="submit" class="btn btn-primary block full-width m-b">注 册</button>

            </div>
            <p class="text-muted text-center">
                <small>已经有账户了？</small>
                <a href="/loginMain">点此登录</a>
            </p>

        </form>
    </div>
</div>
<script src="${APP_PATH }/js/jquery.min.js?v=2.1.4"></script>
<script src="${APP_PATH }/js/bootstrap.min.js?v=3.3.5"></script>
<script src="${APP_PATH }/js/plugins/iCheck/icheck.min.js"></script>
<script src="${APP_PATH }/js/jquery.min.js?v=2.1.4"></script>
<script src="${APP_PATH }/js/bootstrap.min.js?v=3.3.5"></script>
<script src="${APP_PATH }/js/content.min.js?v=1.0.0"></script>
<script src="${APP_PATH }/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${APP_PATH }/js/plugins/validate/messages_zh.min.js"></script>
<script src="${APP_PATH }/js/demo/form-validate-demo.min.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>