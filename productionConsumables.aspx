<%@ Page Language="C#" AutoEventWireup="true" Inherits="productionConsumables" Codebehind="productionConsumables.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Production Consumables</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="utility.js" type="text/javascript"></script>
    <script src="ais.js" type="text/javascript"></script>
    <script type="text/javascript">
    tbl = "tAttr_production_consumables";
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
                <td>Description<img src="images/icon_wand.gif" onclick="getAllValue('description','dsca')" style="cursor:pointer" /></td>
                <td>Main Category<img src="images/icon_wand.gif" onclick="getAllValue('mainCategory','matg')" style="cursor:pointer" /></td>
                <td>Category<img src="images/icon_wand.gif" onclick="getAllValue('category','catg')" style="cursor:pointer" /></td>
                <td>Sub Category<img src="images/icon_wand.gif" onclick="getAllValue('subCategory','satg')" style="cursor:pointer" /></td>
                <td>Sub Category(CN)<img src="images/icon_wand.gif" onclick="getAllValue('subCategoryCN','satc')" style="cursor:pointer" /></td>
                <td>A/C Code<img src="images/icon_wand.gif" onclick="getAllValue('acCode','accd')" style="cursor:pointer" /></td>
                <td>A/C Code Description</td>
                <td>Signal Code</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="part_number" runat="server"  
                        onkeyup="return getValue(this,'item');" CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="description" runat="server" 
                        onkeyup="return getValue(this,'dsca');" CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="mainCategory" runat="server" 
                        onkeyup="return getValue(this,'matg');" CssClass="txtbox_small"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="category" runat="server" 
                        onkeyup="return getValue(this,'catg');" CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="subCategory" runat="server" 
                        onkeyup="return getValue(this,'satg');" CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="subCategoryCN" runat="server" 
                        onkeyup="return getValue(this,'satc');" CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="acCode" runat="server" onkeyup="return getValue(this,'accd');" 
                        CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="acCodeDescription" runat="server" 
                        onkeyup="return getValue(this,'acde');" CssClass="txtbox_small"/></td>
<td><asp:TextBox ID="signalCode" runat="server" Text="RDY" CssClass="txtbox_small"
                        /></td>
            </tr>
            <!--
            <tr valign="bottom">
            
                <td>Size<img src="images/icon_wand.gif" onclick="getAllValue('size','size')" style="cursor:pointer" /></td>
                <td>Color<img src="images/icon_wand.gif" onclick="getAllValue('color','colr')" style="cursor:pointer" /></td>
                <td>Brand<img src="images/icon_wand.gif" onclick="getAllValue('brand','brnd')" style="cursor:pointer" /></td>
                <td>Model<img src="images/icon_wand.gif" onclick="getAllValue('model','mdel')" style="cursor:pointer" /></td>
            </tr>
            <tr valign="bottom">
                <td>
                    <asp:TextBox ID="size" runat="server" onkeyup="return getValue(this,'size');" 
                        CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="color" runat="server" onkeyup="return getValue(this,'colr');" 
                        CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="brand" runat="server" onkeyup="return getValue(this,'brnd');" 
                        CssClass="txtbox_small"/></td>
                <td>
                    <asp:TextBox ID="model" runat="server" onkeyup="return getValue(this,'mdel');" 
                        CssClass="txtbox_small"/></td>
            </tr>-->
            </table>

        </div>
        </div>
    </div>
    <uc2:GridView_btn ID="GridView_btn1" runat="server" />
    </form>
</body>
</html>
