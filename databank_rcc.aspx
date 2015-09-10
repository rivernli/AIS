<%@ Page Language="C#" AutoEventWireup="true" Inherits="databank_rcc" Codebehind="databank_rcc.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>RCC Databank</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />

    <script src="ais.js" type="text/javascript"></script>
    <script src="utility.js" type="text/javascript"></script>
    <script type="text/javascript">
     tbl = "databank_rcc";
     
     function reset_form(f){
        var div = document.getElementById("tmp");
        div.innerHTML = "";
        for(var i=0; i < f.length; i++){
            div.innerHTML += f[i].name +"<br />"; 
        }
     }
    </script>
</head>
<body>
    <div id="tmp"></div>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/filtering.asmx" />
        </Services>
        </asp:ScriptManager>
        <uc1:menu ID="menu1" runat="server" />

        <div style="padding:0px 1px;">
        <div style="background-color:Blue;">
            <span onclick="OOthis(this)" style="padding:1px 4px;color:#ffffff;cursor:pointer">Close</span>
        </div>
        <div id="search_panel" style="display:block; background-color:#dedede;">
            <table cellspacing="1" cellpadding="1" border="0" class="stbTbl" >
            <tr>
                <td>Vendor<img src="images/icon_wand.gif" onclick="getAllValue('vendor','vendor')" style="cursor:pointer" /></td>
                <td>Manufacturer<img src="images/icon_wand.gif" onclick="getAllValue('manufacturer','manufacturer')" style="cursor:pointer" /></td>
                <td>Vendor P/N<img src="images/icon_wand.gif" onclick="getAllValue('vendor_part_number','vendorpn')" style="cursor:pointer" /></td>
                <td>Ply Up</td>
                <td>Halogen Free</td>
                <td>Location<img src="images/icon_wand.gif" onclick="getAllValue('location','location')" style="cursor:pointer" /></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vendor');" 
                        CssClass="txtbox_small" /></td>
                <td>
                <asp:TextBox ID="manufacturer" runat="server" 
                        onkeyup="return getValue(this,'manufacturer');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="vendor_part_number" runat="server" 
                        onkeyup="return getValue(this,'vendorPN');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="plyup" runat="server" 
                        CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="halogen_free" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="location" runat="server" 
                        onkeyup="return getValue(this,'location');" CssClass="txtbox_small"/></td>
            </tr>
            </table>
        </div>
        </div>
        <uc2:GridView_btn ID="GridView_btn1" runat="server" />
    </div>
    </form>
</body>
</html>

