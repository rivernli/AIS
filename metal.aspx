﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="metal" Codebehind="metal.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>Metal</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="utility.js" type="text/javascript"></script>
    <script src="ais.js" type="text/javascript"></script>
    <script type="text/javascript">
    tbl = "tAttr_metal";
    </script>
</head>
<body>
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
                <td>P/N</td>
                <td>Description</td>
                <td>Vendor<img src="images/icon_wand.gif" onclick="getAllValue('vendor','vdor')" style="cursor:pointer" /></td>
                <td>Manufacturer<img src="images/icon_wand.gif" onclick="getAllValue('manufacturer','mafr')" style="cursor:pointer" /></td>
                <td>Location</td>
                <td>Signal Code</td>
                <td>MAF#<img src="images/icon_wand.gif" onclick="getAllValue('maf','mafa')" style="cursor:pointer" /></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="part_number" runat="server" 
                        onkeyup="return getValue(this,'item');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="description" runat="server" 
                        onkeyup="return getValue(this,'dsca');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vdor');" 
                        CssClass="txtbox_small"/></td>
                <td><asp:TextBox ID="manufacturer" runat="server" 
                        onkeyup="return getValue(this,'mafr');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="location" runat="server" CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="signalCode" runat="server" Text="RDY" 
                        CssClass="txtbox_small" /></td>
                <td>
                <asp:TextBox ID="maf" runat="server" onkeyup="return getValue(this,'mafa');" 
                        CssClass="txtbox_small"/></td>
            </tr><tr>
                <td colspan="7">Plant
                    <asp:CheckBox ID="b1" Text="B1" runat="server" /> &nbsp;
                    <asp:CheckBox ID="b3" Text="B3" runat="server" /> &nbsp;
                    <asp:CheckBox ID="b4" Text="B4" runat="server" /> &nbsp;
                    <asp:CheckBox ID="b5" Text="B5" runat="server" /> &nbsp;
                    <asp:CheckBox ID="b2f" Text="B2F" runat="server" />
                </td>
            </tr>
            </table>
</div>
        </div>
    </div>
    <uc2:GridView_btn ID="GridView_btn1" runat="server" />
    </form>
</body>
</html>
