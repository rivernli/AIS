<%@ Page Language="C#" AutoEventWireup="true" Inherits="shieldlingFilm" Codebehind="shieldlingFilm.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Shielding Film</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="utility.js" type="text/javascript"></script>
    <script src="ais.js" type="text/javascript"></script>
    <script type="text/javascript">
    tbl = "tAttr_sheildling_film";
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
                <td>Location<img src="images/icon_wand.gif" onclick="getAllValue('location','loca')" style="cursor:pointer" /></td>
                <td>ADH Thickness<img src="images/icon_wand.gif" onclick="getAllValue('adhThickness','adth')" style="cursor:pointer" /></td>
                <td>Vendor P/N<img src="images/icon_wand.gif" onclick="getAllValue('vendor_part_number','vdpn')" style="cursor:pointer" /></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="part_number" runat="server" 
                        onkeyup="return getValue(this,'item');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="description" runat="server" 
                        onkeyup="return getValue(this,'dsca');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vdor');" 
                        CssClass="txtbox_small"></asp:TextBox>
                </td>
                <td><asp:TextBox ID="manufacturer" runat="server" 
                        onkeyup="return getValue(this,'mafr');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="location" runat="server" 
                        onkeyup="return getValue(this,'loca');" CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="adhThickness" runat="server" 
                        onkeyup="return getValue(this,'adth');" CssClass="txtbox_small"/></td>
                <td><asp:TextBox ID="vendor_part_number" runat="server" 
                        onkeyup="return getValue(this,'vdpn');" CssClass="txtbox_small"/></td>
            </tr>
            <tr valign="bottom">
                <td>Dim Length</td>
                <td>Dim Width</td>
                <td>Halogen Free</td>
                <td>Signal Code</td>
                <td>MAF#<img src="images/icon_wand.gif" onclick="getAllValue('maf','mafa')" style="cursor:pointer" /></td>
               
                <td colspan="2">
                    Plant</td>
            </tr>
            <tr valign="bottom">
                <td><asp:TextBox ID="dimLength" runat="server" CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="dimWidth" runat="server" /></td>
                <td><asp:TextBox ID="halogenFree" runat="server" CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="signalCode" runat="server" Text="RDY" 
                        CssClass="txtbox_small" /></td>
                <td>
                <asp:TextBox ID="maf" runat="server" onkeyup="return getValue(this,'mafa');" 
                        CssClass="txtbox_small"/></td>
               
                <td colspan="2">
                    <asp:CheckBox ID="b1" runat="server" Text="B1" />
                    <asp:CheckBox ID="b3" runat="server" Text="B3" />
                    <asp:CheckBox ID="b4" runat="server" Text="B4" />
                    <asp:CheckBox ID="b5" runat="server" Text="B5" />
                    <asp:CheckBox ID="b2f" runat="server" Text="B2F" />
                </td>
            </tr>
            </table>
</div>
        </div>   </div>
    <uc2:GridView_btn ID="GridView_btn1" runat="server" />
    </form>
</body>
</html>
