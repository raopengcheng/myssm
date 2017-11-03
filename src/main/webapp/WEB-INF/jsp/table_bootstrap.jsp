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


    <title>H+ 后台主题UI框架 - Bootstrap Table</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="${APP_PATH}/img/favicon.ico">
    <link href="${APP_PATH}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${APP_PATH}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${APP_PATH}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${APP_PATH}/css/animate.min.css" rel="stylesheet">
    <link href="${APP_PATH}/css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">


    <!-- Panel Other -->
    <div class="ibox float-e-margins">

        <div class="ibox-content">
            <div class="row row-lg">


                <div class="col-sm-12">
                    <!-- Example Events -->
                    <div class="example-wrap">

                        <div class="example">
                            <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                </button>
                            </div>
                            <table id="exampleTableEvents" data-height="400" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <th data-field="state" data-checkbox="true"></th>
                                    <th data-field="id">ID</th>
                                    <th data-field="name">用户名</th>
                                    <th data-field="price">密码</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:if test="${!empty userList}">
                                    <c:forEach var="user" items="${userList}">
                                        <tr>
                                            <td>${user.id }</td>
                                            <td>${user.username }</td>
                                            <td>${user.password }</td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Events -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Other -->
</div>
<script src="${APP_PATH}/js/jquery.min.js?v=2.1.4"></script>
<script src="${APP_PATH}/js/bootstrap.min.js?v=3.3.5"></script>
<script src="${APP_PATH}/js/content.min.js?v=1.0.0"></script>
<script src="${APP_PATH}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${APP_PATH}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${APP_PATH}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="${APP_PATH}/js/demo/bootstrap-table-demo.min.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>

</html>