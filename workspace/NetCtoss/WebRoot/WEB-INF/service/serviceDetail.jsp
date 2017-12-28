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
                <li><a href="../admin/admin_list.html" class="admin_off"></a></li>
                <li><a href="../fee/fee_list.html" class="fee_off"></a></li>
                <li><a href="../account/account_list.html" class="account_off"></a></li>
                <li><a href="../service/service_list.html" class="service_on"></a></li>
                <li><a href="../bill/bill_list.html" class="bill_off"></a></li>
                <li><a href="../report/report_list.html" class="report_off"></a></li>
                <li><a href="../user/user_info.html" class="information_off"></a></li>
                <li><a href="../user/user_modi_pwd.html" class="password_off"></a></li>
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <form action="toServiceDetail.action" method="post" class="main_form">
                <!--必填项-->
                <div class="text_info clearfix"><span>业务账号ID：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.serviceId" readonly="true"/></div>
                <div class="text_info clearfix"><span>账务账号ID：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.accountId" readonly="true"/></div>
                <div class="text_info clearfix"><span>客户姓名：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.realName" readonly="true"/></div>
                <div class="text_info clearfix"><span>身份证号码：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.idcardNo" readonly="true"/></div>
                <div class="text_info clearfix"><span>服务器 IP：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.unixHost" readonly="true"/></div>
                <div class="text_info clearfix"><span>OS 账号：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.osUsername" readonly="true"/></div>
                <div class="text_info clearfix"><span>状态：</span></div>
                <div class="input_info">
                	<s:select name="service.status" list="#{'0':'开通','1':'暂停','2':'删除'}" disabled="true"></s:select>
                </div>
                <div class="text_info clearfix"><span>开通时间：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.createDate" readonly="true"/></div>
                <div class="text_info clearfix"><span>资费 ID：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.costId" readonly="true"/></div>
                <div class="text_info clearfix"><span>资费名称：</span></div>
                <div class="input_info"><s:textfield name="serviceVo.costName" readonly="true" cssClass="width200"/></div>
                <div class="text_info clearfix"><span>资费说明：</span></div>
                <div class="input_info_high">
                    <s:textarea name="serviceVo.descr" readonly="true" cssClass="width300 height70"></s:textarea>
                </div>  
                <!--操作按钮-->
                <div class="button_info clearfix">
                    <input type="button" value="返回" class="btn_save" onclick="location.href='findService.action';" />
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
