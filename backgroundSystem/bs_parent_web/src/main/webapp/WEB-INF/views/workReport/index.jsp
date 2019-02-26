<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>workReport</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navbar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/leftTree.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shouye.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/navbar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/leftTree.js"></script>
</head>
<body>

<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <nav class="navbar navbar-inverse" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <div><a class="navbar-brand" style="font-size:32px;" href="#">brand</a></div>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">智能交互平台</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="padding-top:8px;">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
                                        <i class="glyphicon glyphicon-user"></i> ${loginUser.userName} <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li class="disabled"><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
                                        <li class="disabled"><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
                                        <li class="divider"></li>
                                        <li><a href="${APP_PATH}/logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li style="margin-left:10px;padding-top:8px;" class="disabled">
                                <button type="button" class="btn btn-default btn-danger">
                                    <span class="glyphicon glyphicon-question-sign"></span> 帮助
                                </button>
                            </li>
                        </ul>
                        <%--<form class="navbar-form navbar-right">
                            <input type="text" class="form-control" placeholder="Search...">
                        </form>--%>
                    </div>
                </div>
            </nav>

        </div>
    </div>

    <div class="row clearfix">

        <div class="col-sm-2 sidebar" style="margin-top: 20px;margin-left:15px">
            <div class="tree">
                <ul style="padding-left:0px;" class="list-group">
                    <li class="list-group-item tree-closed" >
                        <a href="${APP_PATH}/shouye"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a>
                    </li>

                    <li class="list-group-item tree-closed">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> 用户管理<span class="badge" style="float: right">2</span></span>
                        <ul style="margin-top: 10px;">
                            <li style="height: 30px;">
                                <a href="${APP_PATH}/user/index" style="color: red;"><i class="glyphicon glyphicon-user"></i>系统用户</a>
                            </li>
                            <li style="height: 30px;">
                                <a href="#"><i class="glyphicon glyphicon-king"></i> 微信用户</a>
                            </li>
                        </ul>
                    </li>

                    <li class="list-group-item active">
                        <span><i class="glyphicon glyphicon glyphicon-tasks"></i> 工作报表 </span>
                    </li>
                    <li class="list-group-item tree-closed">
                        <span><i class="glyphicon glyphicon-ok"></i> <a href="${APP_PATH}/dialog/index">对话管理</a> </span>
                    </li>

                    <li class="list-group-item disabled">
                        <span><i class="glyphicon glyphicon-list-alt"></i> 操作流水 </span>
                    </li>
                    <li class="list-group-item disabled">
                        <span><i class="glyphicon glyphicon-asterisk"></i> 活跃度 </span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-sm-10 col-sm-offset-2">
            <div class="tabbable" id="tabs-381221">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-909611" data-toggle="tab">基础数据</a>
                    </li>
                    <%--<li>
                        <a href="#panel-748926" data-toggle="tab">Section 2</a>
                    </li>--%>
                </ul>
                <br/>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-909611">
                        <p>
                            数据总览
                        </p>
                        <br/>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <td align="center">
                                                    <br/>
                                                    <p>${numOfDialog}</p>
                                                    <p>总会话量</p>
                                                    <hr/>
                                                    <p>
                                                        机器人会话量：
                                                        <span>${numOfBotAns}</span>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <td align="center">
                                                    <br/>
                                                    <p>${ratioOfSolved}</p>
                                                    <p>问题解决率</p>
                                                    <hr/>
                                                    <p>
                                                        已解决问题总量：
                                                        <span>${numOfBotAns}</span>
                                                    </p>
                                                    <p>
                                                        未解决问题总量：
                                                        <span>${queOfUnResolved}</span>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <td align="center">
                                                    <br/>
                                                    <p>${aveNumOfDialog4User}</p>
                                                    <p>人均会话量</p>
                                                    <hr/>
                                                    <p>
                                                        会话人次：
                                                        <span>${NumOfUserInDialog}</span>
                                                    </p>
                                                    <p>
                                                        总会话量：
                                                        <span>${numOfDialog}</span>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--<div class="tab-pane" id="panel-748926">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>--%>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
