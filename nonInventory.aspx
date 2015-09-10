<%@ Page Language="C#" AutoEventWireup="true" Inherits="nonInventory" Codebehind="nonInventory.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="GridView_btn.ascx" tagname="GridView_btn" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Non Inventory</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="utility.js" type="text/javascript"></script>
    <script src="ais.js" type="text/javascript"></script>
    <script type="text/javascript">
    tbl = "tAttr_non_inventory";
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
            <tr valign="bottom">
                <td>P/N</td>
                <td>Description</td>
                <td>Vendor</td>
                <td>Manufacturer</td>
                <td>Location</td>
                <td>Signal Code</td>
                <td>Material Species</td>
            </tr>
            <tr valign="bottom">
                <td><asp:TextBox ID="part_number" runat="server" 
                        onkeyup="return getValue(this,'item');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="description" runat="server" 
                        onkeyup="return getValue(this,'dsca');" CssClass="txtbox_small"></asp:TextBox>
                </td>
                <td><asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vdor');" 
                        CssClass="txtbox_small"></asp:TextBox>
                </td>
                <td><asp:TextBox ID="manufacturer" runat="server" 
                        onkeyup="return getValue(this,'mafr');" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="location" runat="server" CssClass="txtbox_small"></asp:TextBox></td>
                <td><asp:TextBox ID="signalCode" runat="server" Text="RDY" 
                        CssClass="txtbox_small" /></td>
                <td><asp:TextBox ID="materialSpecies" runat="server" CssClass="txtbox_small" /></td>
            </tr>
            </table>
 </div>
        </div>
    </div>

    <uc2:GridView_btn ID="GridView_btn1" runat="server" />

    </form>
</body>
</html>
