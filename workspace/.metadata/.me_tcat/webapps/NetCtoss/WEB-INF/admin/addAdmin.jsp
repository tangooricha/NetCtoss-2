<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>达内－NetCTOSS</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
        <script language="javascript" type="text/javascript" src="../js/jquery-1.4.3.js"></script>
        <script language="javascript" type="text/javascript">
        
            //检验页面是否存在错误;
        	var adminNameFlag;
        	var adminCodeFlag;
        	var loginPasswordFlag;
        	var validateLoginPasswordFlag;
        	var telephoneFlag;
        	var emailFlag;
        	var roleFlag;
        
            //管理员姓名输入框添加焦点移出事件;
            $(function(){
            	$("#adminName").blur(function(){
            		//取得输入框中的值;
            		var adminName = $(this).val();
            		//若为空,则提示,并给出错误提示的样式;
            		if(adminName == null||adminName==""){
            		    $("#adminName_msg").text("管理员姓名不能为空");
            			$("#adminName_msg").addClass("error_msg");
            			adminNameFlag=false;
            			return;
            		}
            		$("#adminName_msg").text("20长度以内的汉字、字母、数字的组合");
            		$("#adminName_msg").removeClass("error_msg"); 
            		adminNameFlag=true;
            	});
            });
            
            //管理员账号输入框添加焦点移出事件;
            $(function(){
            	$("#adminCode").blur(function(){
            		//取得输入框中的值;
            		var adminCode = $(this).val();
            		//若为空,则提示,并给出错误提示的样式;
            		if(adminCode == null||adminCode==""){
            		    $("#adminCode_msg").text("管理员账号不能为空");
            			$("#adminCode_msg").addClass("error_msg");
            			adminCodeFlag=false;
            			return;
            		}
            		$("#adminCode_msg").text("30长度以内的字母、数字和下划线的组合");
            		$("#adminCode_msg").removeClass("error_msg"); 
            		adminCodeFlag=true;
            	});
            });
            
            //给密码输入框添加焦点移出事件;
             $(function(){
            	$("#password").blur(function(){
            		//取得输入框中的值;
            		var password = $(this).val();
            		//若为空,则提示,并给出错误提示的样式;
            		if(password == null||password==""){
            			$("#loginPasswordMsg").text("密码不能为空");
            			$("#loginPasswordMsg").addClass("error_msg");
            			loginPasswordFlag=false;
            			return;
            		}
            		$("#loginPasswordMsg").text("30长度以内的字母、数字和下划线的组合");
            		$("#loginPasswordMsg").removeClass("error_msg");
            		loginPasswordFlag=true;
            		var validatePassword = $("#validatePassword").val();
            	 	if(password!=validatePassword){
            			$("#validatePasswordMsg").addClass("error_msg");
            			validateLoginPasswordFlag=false;
            		}else{
            			$("#validatePasswordMsg").removeClass("error_msg");
            			validateLoginPasswordFlag=true;
            		}
            	 });
              });
            	
            //给密码验证输入框添加焦点移出事件;
             $(function(){
            	$("#validatePassword").blur(function(){  
            	var validatePassword = $(this).val();          	
            	var password = $("#password").val();
            	if(password!=validatePassword){
            		$("#validatePasswordMsg").addClass("error_msg");
            		validateLoginPasswordFlag=false;
            	}else{
            		$("#validatePasswordMsg").removeClass("error_msg");
            		validateLoginPasswordFlag=true;
            	}
            	});
             });
             
            //管理员电话输入框添加焦点移出事件;
            $(function(){
            	$("#telephone").blur(function(){
            		//取得输入框中的值;
            		var telephone = $(this).val();
            		//若为空,则提示,并给出错误提示的样式;
            		if(telephone == null||telephone==""){
            		    $("#telephone_msg").text("管理员电话不能为空");
            			$("#telephone_msg").addClass("error_msg");
            			telephoneFlag=false;
            			return;
            		}
            		$("#telephone_msg").text("正确的电话号码格式：手机或固话");
            		$("#telephone_msg").removeClass("error_msg"); 
            		telephoneFlag=true;
            	});
            });
            
            //管理员邮箱输入框添加焦点移出事件;
            $(function(){
            	$("#email").blur(function(){
            		//取得输入框中的值;
            		var email = $(this).val();
            		//若为空,则提示,并给出错误提示的样式;
            		if(email == null||email==""){
            		    $("#email_msg").text("管理员邮箱不能为空");
            			$("#email_msg").addClass("error_msg");
            			emailFlag=false;
            			return;
            		}
            		$("#email_msg").text("50长度以内，正确的 email 格式");
            		$("#email_msg").removeClass("error_msg"); 
            		emailFlag=true;
            	});
            });
        
            //保存成功的提示消息
            function showResult() {
            	var $obj = $("#roleSelect input:checked");
            	if($obj.length>0){
            		roleFlag=true;
            		$("#roleSelect_msg").removeClass("error_msg"); 
            	}else{
            		roleFlag=false;
            		$("#roleSelect_msg").addClass("error_msg"); 
            	}
            	if(adminNameFlag&&adminCodeFlag&&loginPasswordFlag&&validateLoginPasswordFlag&&telephoneFlag&&emailFlag&&roleFlag){
            		$("#save_result_info").text("保存成功！");
            		showResultDiv(true);
            		document.getElementById("addAdminForm").submit();
            	}else{
            		$("#save_result_info").text("保存失败！");
                	showResultDiv(true);;
                }
            }
            
            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
            }
        </script>
        
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
            <a href="#">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
            <ul id="menu">
                <li><a href="../index.html" class="index_off"></a></li>
                <li><a href="../role/role_list.html" class="role_off"></a></li>
                <li><a href="../admin/admin_list.html" class="admin_on"></a></li>
                <li><a href="../fee/fee_list.html" class="fee_off"></a></li>
                <li><a href="../account/account_list.html" class="account_off"></a></li>
                <li><a href="../service/service_list.html" class="service_off"></a></li>
                <li><a href="../bill/bill_list.html" class="bill_off"></a></li>
                <li><a href="../report/report_list.html" class="report_off"></a></li>
                <li><a href="../user/user_info.html" class="information_off"></a></li>
                <li><a href="../user/user_modi_pwd.html" class="password_off"></a></li>
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="addAdmin.action" method="post" id="addAdminForm" class="main_form">
                    <div class="text_info clearfix"><span>姓名：</span></div>
                    <div class="input_info">
                        <input type="text" id="adminName" name="admin.name"/>
                        <span class="required">*</span>
                        <div id="adminName_msg" class="validate_msg_long">20长度以内的汉字、字母、数字的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>管理员账号：</span></div>
                    <div class="input_info">
                        <input type="text" id="adminCode" name="admin.adminCode" />
                        <span class="required">*</span>
                        <div id="adminCode_msg" class="validate_msg_long">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>密码：</span></div>
                    <div class="input_info">
                        <input type="password" id="password" name="admin.password"/>
                        <span class="required">*</span>
                        <div id="loginPasswordMsg" class="validate_msg_long">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>重复密码：</span></div>
                    <div class="input_info">
                        <input id="validatePassword" type="password"  />
                        <span class="required">*</span>
                        <div id="validatePasswordMsg" class="validate_msg_long">两次密码必须相同</div>
                    </div>      
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" id="telephone" name="admin.telephone" class="width200"/>
                        <span class="required">*</span>
                        <div id="telephone_msg" class="validate_msg_medium">正确的电话号码格式：手机或固话</div>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" id="email" name="admin.email" class="width200"/>
                        <span class="required">*</span>
                        <div id="email_msg" class="validate_msg_medium">50长度以内，正确的 email 格式</div>
                    </div>
                    <div class="text_info clearfix"><span>角色：</span></div>
                    <div class="input_info_high">
                        <div id="roleSelect" class="input_info_scroll">
                        	<s:checkboxlist name="admin.roleIds" list="roleList" listKey="id" listValue="name" ></s:checkboxlist>
                        </div>
                        <span class="required">*</span>
                        <div id="roleSelect_msg" class="validate_msg_tiny">至少选择一个</div>
                    </div>
                    <div class="button_info clearfix">
                        <input type="button" value="保存" class="btn_save" onclick="showResult();" />
                        <input type="button" value="取消" class="btn_save" onclick="location.href='findAdmin.action';"/>
                    </div>
                </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <span>[源自北美的技术，最优秀的师资，最真实的企业环境，最适用的实战项目]</span>
            <br />
            <span>版权所有(C)加拿大达内IT培训集团公司 </span>
        </div>
    </body>
</html>
