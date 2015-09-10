<%@ Page Language="C#" AutoEventWireup="true" Inherits="login" Codebehind="login.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>MIS Login</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function loadpage(){
    var ft = document.getElementById("footer");
    var bg = document.getElementById("bgScreen");
    if(ft.offsetTop >0 && bg.offsetTop > 0){
        var y = parseInt(ft.offsetTop - bg.offsetTop);
        bg.style.height = y+"px";
    }else{
        bg.style.height = "500px";
    }
    /*
    bg.style.background = "#000000 url('http://bi.multek.com/ws/images/bg_space.png') no-repeat fixed center";
    bg.style.background = "#000000 url('http://bi.multek.com/ws/images/bg_map.png') no-repeat fixed center";
    bg.style.background = "#000000 url('http://bi.multek.com/ws/images/bg_hk.png') no-repeat fixed center";
    bg.style.background = "#000000 url('http://bi.multek.com/ws/images/bg_fast.png') no-repeat fixed center";
    bg.style.background = "#000000 url('http://bi.multek.com/ws/images/bg_car_brs.png') no-repeat fixed bottom right";
    //'http://bi.multek.com/ws/images/bg_speed.png'
    */
    
    var d = new Date().getMonth()+1;
    var p = "http://bi.multek.com/ws/images/bg_month/pm"+d+".png?d="+ new Date();
    bg.style.background = "#000000 url('"+p+"') no-repeat fixed center";
}

window.onresize = loadpage;
</script>
</head>
<body onload="loadpage()" style="margin:1px;">
    <form id="form1" runat="server">
    <div>
    <uc1:menu ID="menu1" runat="server" />
<div id="bgScreen" style="width:auto; padding:0px;">
<div id="login_panel" >
<br /><br />
<table align="center" width="400" style="position:relative; z-index:900">
<tr><td style="height:60px;">
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    </td></tr>
<tr><td align="center">
<div class="loginDiv">
        <div class="loginDivBtm">
        <br />
    <table style="width:300px;">
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="Domain:"></asp:Label>
            </td>
            <td>
                <asp:RadioButton runat="server" GroupName="domain" ID="americasCheck" Text="Americas" CssClass="domainSelect"/>
                <asp:RadioButton runat="server" GroupName="domain" ID="asiaCheck" Text="Asia" Checked="true" CssClass="domainSelect" />
                <asp:RadioButton runat="server" GroupName="domain" ID="europeCheck" Text="Europe" CssClass="domainSelect" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Text="User:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="username" runat="server" style="width:180px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="password" runat="server" TextMode="Password"  style="width:180px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
       
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
            </td>
        </tr>
        <tr><td colspan="2">
            <div style="color:White;font-size:10px; text-align:left; padding:4px 2px; border-top:1px #fff solid;">
            Please verify your domain,account and password <br /> 
            For example:<br />
            Domain:Asia; Account:HKGJOCHE ; Password:****** 
            </div>
        </td></tr>
    </table>
    </div>
</div>    

     <asp:Label ID="Label4" runat="server"></asp:Label>

</td></tr>
</table>
</div>
</div>
<div id="footer">
<span style="padding-top:3px;font-size:11px;">&copy; System Support: 
<a href="mailto:peter.xu@hk.multek.com">Peter Xu</a>, 
<a href="mailto:joe.cheng@hk.multek.com">Joe Cheng</a></span>
</div>
    </div>
    </form>
</body>
</html>
