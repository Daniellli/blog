<%--
  Created by IntelliJ IDEA.
  User: 895311923
  Date: 2019/4/21
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="../static/css/uGlobal.css"/>
    <link rel="stylesheet" type="text/css" href="../static/css/uRegiest.css"/>
    <script src="../static/js/jquery-1.9.0.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../static/js/cxregister.js" type="text/javascript" charset="utf-8"></script>
    <style>
        body{
            background:url(../static/images/134.jpg) no-repeat center;
            background-size: cover;
        }
    </style>
</head>
<body>

<!--用户注册-->
<form  id="form" name="form" action="../controller/checkLogin.jsp" method="post" autocomplete="off">
    <div class="g_register posCenter" style="display: block;">
            <div class="g_r_title">用户注册</div>
            <div class="g_r_form">
                <p class="g_r_tel">
                    <input class="g_tel" readonly type="text" placeholder="登录手机号" onblur="verifyPhone(this);"
                        onfocus="verifyPhoneFocus(this);" id="phone" name="phoneNumber" autocomplete="off" />
                    <span></span>
                </p>
                <p class="g_v_err" id="error_phone"></p>
                <p class="g_r_name mt30">
                    <input class="g_tel" type="text" placeholder="姓名" id="realname" name="userName"
                        onblur="verifyRealnameBlur(this);" onfocus="verifyRealnameFocus(this);" />
                    <span class=""></span>
                </p>
                <p class="g_v_err" id="error_realname"></p>
                <p class="g_r_pass mt30">
                    <input class="g_tel" type="password" maxlength="16" placeholder="密码" id="password" name="password"
                        onkeyup="verifyPassword(this);" onblur="verifyPwdBlur(this);" onfocus="verifyPwdFocus(this);" />
                    <span class=""></span>
                    <em onclick="changeType(this);" class=""></em>
                </p>
                <ul class="g_pass_style" style="display:none;" id="pwdtip">
                    <li class="g_r_style" id="pwdli1"><span class="g_span_pass" id="span1"></span>不能包含空格</li>
                    <li class="g_r_style" id="pwdli2"><span class="g_span_nopass" id="span2"></span>长度为8-16个字符</li>
                    <li class="g_r_style" id="pwdli3"><span class="g_span_nopass" id="span3"></span>必须包含字母、数字、符号中至少两种
                    </li>
                </ul>

                <p class="g_r_name mt30">
                    <input class="g_tel" type="text" placeholder="学号" name="userID" />
                </p>



                <p class="g_r_name mt30">
                    <input class="g_tel" type="text" placeholder="班级" name="classId" />
                </p>


                <p  style="line-height:5px;margin-bottom:5px;font-size:20px;color:#333333;text-align:center;">
                    <input class="radio" type="radio" name="shenfen" value="0" checked/> 用户
                    <input class="radio"  type="radio" name="shenfen" value="1" />管理员

                </p>
                
                <p  style="line-height:5px;margin-bottom:5px;font-size:20px;color:#333333;text-align:center;">
                    <input class="radio" type="radio" name="sex" value="男" checked/>男
                    <input  class="radio" type="radio" name="sex" value="女" /> 女
                </p>

                <p class="g_submit mt40" onclick="backZhuye();" style="cursor:pointer;">取 消</p>
                <p class="g_submit mt40" onclick="register();" style="cursor:pointer;">注 册</p>
                <%--<a href="/">返回主页</a>--%>
            </div>
        </div>
    <style>
        .g_register .g_r_style span.pwderror{
            background: url(../static/images/ver_error.png) no-repeat center;
        }
    </style>
    <!--登录跳转-->
    <div class="g_l_skip g_skip" style="display:none;">
        <h6 class="g_skip_title">恭喜注册成功!</h6>
        <p class="g_sikp_time">（<i>3</i>） 秒后将自动跳转...</p>
    </div>

    <input type="hidden" id="refer" value="http://localhost"/>
    <!--弹窗-->
    <div class="g_dialog"  style="display:none;" id="loginSkip">
        <div class="g_tip_reg posCenter">
            <p class="g_reg_title mt40">该账号已注册</p>
        </div>
    </div>
</form>

</body>
</html>
