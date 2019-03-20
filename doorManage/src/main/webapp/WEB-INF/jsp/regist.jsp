<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/toastr.min.css" rel="stylesheet">
    <link href="../css/project.css" rel="stylesheet" >
    <link href="../css/fileinput.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css">
    

    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datetimepicker.js"></script>
    <script src="../js/bootstrap-datetimepicker.zh-CN.js"></script>

    <!-- 自定义js -->
    <script type="text/javascript" src="../js/content.js"></script>
    <script type="text/javascript" src="../js/toastr.min.js"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../js/fileinput.min.js" ></script>
    <script type="text/javascript" src="../js/zh.min.js" ></script>

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="container-fluid" >
                                    <form role="form" class="form-horizontal">
                                        <div class="col-md-12">
                                            <div class="form-group" style="margin-top: 10px" >
                                                <h3 style="margin-right: 10px" >注册</h3>
                                            </div>
                                            <div class="hr-line-dashed"></div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="account" class="col-md-1 control-label" >账号*</label>
                                            <div class="col-md-10" >
                                                <input class="form-control" type="text" placeholder="请输入账号" id="account" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="username" class="col-md-1 control-label" >用户名*</label>
                                            <div class="col-md-10" >
                                                <input class="form-control" type="text" placeholder="请输入用户名" id="name" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="password" class="col-md-1 control-label" >密码*</label>
                                            <div class="col-md-10" >
                                                <input class="form-control" type="password" placeholder="请输入密码" id="password" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="_password" class="col-md-1 control-label" >确认密码*</label>
                                            <div class="col-md-10" >
                                                <input class="form-control" type="password" placeholder="请输入确认密码" id="_password" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="address" class="col-md-1 control-label" >地址*</label>
                                            <div class="col-md-10" >
                                                <input class="form-control" type="text" placeholder="请输入地址" id="address" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="gender" class="col-md-1 control-label" >性别*</label>
                                            <div class="col-md-2"  >
                                                <select class="form-control" id="gender" >
											      <option value="男" >男</option>
											      <option value="女" >女</option>
											    </select>
                                            </div>
                                            <label for="birth" class="col-md-1 control-label" >出生日期*</label>
                                            <div class="col-md-2" >
                                                <input class="form-control" type="text" placeholder="请输入出生日期" id="birth" >
                                            </div>
                                        </div>
                                        <div class="form-group" style="margin-top: 10px" >
                                            <label for="phone" class="col-md-1 control-label" >手机*</label>
                                            <div class="col-md-4" >
                                                <input class="form-control" type="text" placeholder="请输入手机" id="phone" >
                                            </div>
                                            <label for="email" class="col-md-1 control-label" >邮箱*</label>
                                            <div class="col-md-5" >
                                                <input class="form-control" type="text" placeholder="请输入邮箱" id="email" >
                                            </div>
                                        </div>

										<div class="col-md-11">
                                            <div class="form-group" >
                                                <div class="col-md-3 control-label" style="float:right" >
                                                    <button type="button" class="btn btn-primary" id="save" >注册</button>
                                                    <button type="button" class="btn btn-white" style="margin-left: 20px" id="reset" >返回</button>
                                                </div>
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
    </div>
    <script>
    	
    	$("#birth").datetimepicker({//选择年月日
            format: 'yyyy-mm-dd',
            language: 'zh-CN',
            autoclose: true,
            todayBtn: true,
            pickerPosition: "bottom-left"
        });
    
    
        $("#save").on("click",function(){
            if(!$("#save").hasClass("disabled")){
            	var account = $("#account").val().trim();
            	var name = $("#name").val().trim();
                var password = $("#password").val().trim();
                var _password = $("#_password").val().trim();
                var gender = $("#gender option:selected").val().trim();
                var birth = $("#birth").val().trim();
                var address = $("#address").val().trim();
                var phone = $("#phone").val().trim();
                var email = $("#email").val().trim();
                
                if(!account){
                	alert("请填写账号！")
                	return false;
                }
                
                if(!name){
                    alert("请填写用户名！");
                    return false;
                }

                if(!password){
                    alert("请填写密码！");
                    return false;
                }

                if(!_password){
                    alert("请填确认密码！");
                    return false;
                }

                if(!gender){
                    alert("请填写性别！");
                    return false;
                }

                if(!birth){
                    alert("请填写出生日期！");
                    return false;
                }
                
                if(!address){
                    alert("请填写地址！");
                    return false;
                }

                if(!phone){
                    alert("请填写电话！");
                    return false;
                }
                
                if(!email){
                    alert("请填写邮箱！");
                    return false;
                }
                
                if(password != _password){
                    alert("两次密码不一致！");
                    return false;
                }
                
                $.ajax({
                    type: "post",
                    dataType: "json",
                    url:"/Manage/user/doRegist",
                    async:false,
                    contentType: 'application/json',
                    data:JSON.stringify({
                    	account:account,
                        name:name,
                        password:password,
                        gender:gender,
                        birth:birth,
                        address:address,
                        phone:phone,
                        email:email
                    }),
                    success: function (result){
                        if(null != result && "" != result && 0 == result.status){
                            toast("返回首页登录","添加成功","success");
                            $("#save").addClass("disabled");
                        }else{
                            alert(result.errorMsg);
                        }
                    },
                    error:function (result) {
                        toast("保存失败","保存失败","error");
                    }
                });
            }
        });

        $("#reset").on("click",function(){
        	window.location.href = "/Manage/";
        });

    </script>

</body>

</html>
