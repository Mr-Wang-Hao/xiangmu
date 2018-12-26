<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>Bootstrap左右结构响应式后台管理模板</title>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    	<link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/common.css" />
        <link rel="stylesheet" type="text/css" href="css/slide.css" />
        <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
    
    </head>

    <body>
    <script type="text/javascript">
    $(function() {
        $(".meun-item").click(function() {
            $(".meun-item").removeClass("meun-item-active");
            $(this).addClass("meun-item-active");
            var itmeObj = $(".meun-item").find("img");
            itmeObj.each(function() {
                var items = $(this).attr("src");
                items = items.replace("_grey.png", ".png");
                items = items.replace(".png", "_grey.png")
                $(this).attr("src", items);
            });
            var attrObj = $(this).find("img").attr("src");
            ;
            attrObj = attrObj.replace("_grey.png", ".png");
            $(this).find("img").attr("src", attrObj);
        });
        $("#topAD").click(function() {
            $("#topA").toggleClass(" glyphicon-triangle-right");
            $("#topA").toggleClass(" glyphicon-triangle-bottom");
        });
        $("#topBD").click(function() {
            $("#topB").toggleClass(" glyphicon-triangle-right");
            $("#topB").toggleClass(" glyphicon-triangle-bottom");
        });
        $("#topCD").click(function() {
            $("#topC").toggleClass(" glyphicon-triangle-right");
            $("#topC").toggleClass(" glyphicon-triangle-bottom");
        });
        $(".toggle-btn").click(function() {
            $("#leftMeun").toggleClass("show");
            $("#rightContent").toggleClass("pd0px");
        })
    })
</script>
        <div id="wrap">
            <!-- 左侧菜单栏目块 -->
            <div class="leftMeun" id="leftMeun">
                <div id="logoDiv">
                    <p id="logoP"><img id="logo" alt="左右结构项目" src="images/logo.png"><span>左右结构项目</span></p>
                </div>
								
                <div id="personInfor">
                    <p id="userName">王豪</p>
                    <p>
					<span>yangxp@qq.com</span> 
                    <p>
                        <a>退出登录</a>
                    </p>
                </div>
								
                <div class="meun-title">账号管理</div>
                <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">修改密码</div>
                <div class="meun-title">学生管理</div>
                <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab"><img src="images/icon_house_grey.png">学生住宿管理</div>
                <div class="meun-item" href="#regu" aria-controls="regu" role="tab" data-toggle="tab"><img src="images/icon_rule_grey.png">学生退宿管理</div>
                <div class="meun-item" href="#stud" aria-controls="stud" role="tab" data-toggle="tab"><img src="images/icon_card_grey.png">物资购买信息</div>
                <div class="meun-item" href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab"><img src="images/icon_char_grey.png">物资分配管理</div>
            </div>
            <!-- 右侧具体内容栏目 -->
            <div id="rightContent">
                <a class="toggle-btn" id="nimei">
                    <i class="glyphicon glyphicon-align-justify"></i>
                </a>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- 资源管理模块 -->
                    <div role="tabpanel" class="tab-pane active">
												<h1>默认选中莫快  （t21)班欢迎你！！！</h1>
                    </div>
                    <!-- 权限管理模块 -->
                    <div role="tabpanel" class="tab-pane" id="char">
													<h1>权限管理模块</h1>
									</div>
            <!--用户管理模块-->
            <div role="tabpanel" class="tab-pane" id="user">
                <h1>用户管理模块</h1>
            </div>
            <!-- 修改密码模块 -->
            <div role="tabpanel" class="tab-pane" id="chan">
                <div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">原密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">新密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
                            <div class="col-xs-5">
                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="" style="margin-top: 7px;">
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                                <button type="reset" class="btn btn-xs btn-white">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保存</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!--学生住宿管理-->
            <div role="tabpanel" class="tab-pane" id="scho">
							<h1>学生住宿管理</h1>
            </div>
            <!--学生退宿管理-->
            <div role="tabpanel" class="tab-pane" id="regu">
                <h1>学生退宿管理</h1>
            </div>
            <!--物资购买信息-->
            <div role="tabpanel" class="tab-pane" id="time">
                <h1>物资购买信息</h1>
            </div>
            <!--物资分配信息-->
            <div role="tabpanel" class="tab-pane" id="sitt">
							<h1>物资分配信息</h1>
            </div>
          
        </div>
    </div>
</div>

</body>
</html>