<%@ Page Language="C#" AutoEventWireup="true" Inherits="laminate" Codebehind="laminate.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Laminate</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />

    <script src="ais.js" type="text/javascript"></script>
    <script src="utility.js" type="text/javascript"></script>
    <script type="text/javascript">
     tbl = "tAttr_laminate";
     
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
                <td>P/N</td><td>Description</td>
                <td>Vendor<img src="images/icon_wand.gif" onclick="getAllValue('vendor','vdor')" style="cursor:pointer" /></td>
                <td>Manufacturer<img src="images/icon_wand.gif" onclick="getAllValue('manufacturer','mafr')" style="cursor:pointer" /></td>
                <td>Vendor P/N<img src="images/icon_wand.gif" onclick="getAllValue('vendor_part_number','vdpn')" style="cursor:pointer" /></td>
                <td>Core Thickness</td>
                <td>Construction<img src="images/icon_wand.gif" onclick="getAllValue('Construction','cons')" style="cursor:pointer" /></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="part_number" runat="server" 
                        onkeyup="return getValue(this,'item');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="description" runat="server" 
                        onkeyup="return getValue(this,'dsca');" CssClass="txtbox_small"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vdor');" 
                        CssClass="txtbox_small" /></td>
                <td>
                <asp:TextBox ID="manufacturer" runat="server" 
                        onkeyup="return getValue(this,'mafr');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="vendor_part_number" runat="server" 
                        onkeyup="return getValue(this,'vdpn');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="core_thickness" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="Construction" runat="server" 
                        onkeyup="return getValue(this,'cons');" CssClass="txtbox_small"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Dim Fill</td>
                <td>Dim Wrap</td>
                <td>With Logo</td>
                <td>ZBC</td>
                <td>Halogen Free</td>
                <td>Copper Thickness<img src="images/icon_wand.gif" onclick="getAllValue('copper_thickness','cutk')" style="cursor:pointer" /></td>
                <td>Copper Treatment<img src="images/icon_wand.gif" onclick="getAllValue('copper_treatment','cutr')" style="cursor:pointer" /></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="dim_fill" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="dim_warp" runat="server" CssClass="txtbox_small" Width="120px"></asp:TextBox></td>
                <td><asp:TextBox ID="with_logo" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="zbc" runat="server" CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="halogen_free" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="copper_thickness" runat="server" 
                        onkeyup="return getValue(this,'cutk');" CssClass="txtbox_small"/></td>
                <td><asp:TextBox ID="copper_treatment" runat="server" 
                        onkeyup="return getValue(this,'cutr');" CssClass="txtbox_small" /></td>
            </tr>
            <tr>
                <td>Location<img src="images/icon_wand.gif" onclick="getAllValue('location','loca')" style="cursor:pointer" /></td>
                <td>Signal code </td>
                <td>MAF#<img src="images/icon_wand.gif" onclick="getAllValue('maf','mafa')" style="cursor:pointer" /></td>

                <td colspan="4">
                    Plant</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="location" runat="server" 
                        onkeyup="return getValue(this,'loca');" CssClass="txtbox_small"/></td>
                <td><asp:TextBox ID="signal_code" runat="server" Text="RDY" 
                        CssClass="txtbox_small" /></td>
                <td>
                <asp:TextBox ID="maf" runat="server" onkeyup="return getValue(this,'mafa');" 
                        CssClass="txtbox_small"/></td>

                <td colspan="4">
                    <asp:CheckBox ID="b1" Text="B1" runat="server" /> 
                    <asp:CheckBox ID="b3" Text="B3" runat="server" /> 
                    <asp:CheckBox ID="b4" Text="B4" runat="server" /> 
                    <asp:CheckBox ID="b5" Text="B5" runat="server" /> 
                    <asp:CheckBox ID="b2f" Text="B2F" runat="server" />
                </td>
            </tr>
            </table>
        </div>
        </div>
        <uc2:GridView_btn ID="GridView_btn1" runat="server" />
    </div>
    </form>
</body>
</html>

