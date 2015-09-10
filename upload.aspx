<%@ Page Language="C#" AutoEventWireup="true" Inherits="upload" Codebehind="upload.aspx.cs" %>

<%@ Register src="menu.ascx" tagname="menu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload.</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="utility.js" type="text/javascript"></script>
    <script src="ais.js" type="text/javascript"></script>  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <uc1:menu ID="menu1" runat="server" />
        <asp:UpdatePanel runat="server" ID="updatePanel">
        <ContentTemplate>
        <div>
        Upload To: <asp:DropDownList ID="table" runat="server" AutoPostBack="true" 
                onselectedindexchanged="table_SelectedIndexChanged">
            <asp:ListItem Text="" Value="" />
            <asp:ListItem Text="Laminate Databank" Value="databank_laminate" />
            <asp:ListItem Text="Prepreg Databank" Value="databank_prepreg" />
            <asp:ListItem Text="RCC Databank" Value="databank_rcc" />
            <asp:ListItem Text="Prepreg IQC Spec" Value="iqc_prepreg" />
            <asp:ListItem Text="RCC IQC Spec" Value="iqc_rcc" />
            <asp:ListItem Text="Laminate IQC Spec" Value="iqc_ccl" />
            <asp:ListItem Text="Tool Drill Bit IQC Spce" Value="iqc_drillBit" />
        </asp:DropDownList>
        <asp:Button ID="bnt_delete" runat="server" Text="Delete and Upload Data" 
                onclick="bnt_delete_Click" Visible="false"
                 OnClientClick="return confirm('existing data will be truncated, are you sure?');" />
        <asp:Button ID="bnt_upload" runat="server" Text="Upload Data" 
                onclick="bnt_upload_Click" Visible="False" />
        <br />
        <div style="width:auto; padding:5px;">
        <table id="tblTil" runat="server" visible="false" cellspacing="0" cellpadding="1" border="1" 
        style="empty-cells:show; border-collapse:collapse;width:100%; background-color:#E3FFB7" bordercolor="#dddddd"></table>
        <asp:TextBox ID="tableContent" TextMode="MultiLine" Rows="20" Width="100%" runat="server" Visible="false" />
        </div>
        </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="bnt_upload" />
            <asp:PostBackTrigger ControlID="bnt_delete" />
        </Triggers>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
