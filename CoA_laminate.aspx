<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoA_laminate.aspx.cs" Inherits="CoA_laminate" %>

<%@ Register Src="menu.ascx" TagName="menu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CoA Laminate</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
    <script src="ais.js" type="text/javascript"></script>
    <script src="utility.js" type="text/javascript"></script>
<script type="text/javascript">
    tbl = "tAttr_laminate";

    function reset_form(f) {
        var div = document.getElementById("tmp");
        div.innerHTML = "";
        for (var i = 0; i < f.length; i++) {
            div.innerHTML += f[i].name + "<br />";
        }
    }

    function __doViewLaminateCoA(dataId, Vers, T_UPRN, Vendor) 
    {
        __newWin("CoA_Laminate_Form.aspx?Item=" + dataId + "&Vers=" + Vers + "&UPRN=" + T_UPRN + "&Vendor=" + Vendor, 1200, 700);
        return false;
    }

    function __newWin(Url, WindowWidth, WindowHeight) {
        var L = (screen.width - WindowWidth) / 2 - 5;
        var T = (screen.height - WindowHeight) / 2 - 26;

        window.open(Url, '_blank', "width=" + WindowWidth + ",height=" + WindowHeight + ",left=" + L + ",top=" + T + ",resizable=yes,scrollbars=yes");
    }
    </script>
</head>
<body>
    <div id="tmp">
    </div>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/filtering.asmx" />
            </Services>
        </asp:ScriptManager>
        <uc1:menu ID="menu1" runat="server" />
        <div style="padding: 0px 1px;">
            <div style="background-color: Blue;">
                <span onclick="OOthis(this)" style="padding: 1px 4px; color: #ffffff; cursor: pointer">
                    Close</span>
            </div>
            <div id="search_panel" style="display: block; background-color: #dedede;">
                <table cellspacing="1" cellpadding="1" border="0" class="stbTbl">
                    <tr>
                        <td>
                            P/N
                        </td>
                        <td>
                            CoA No.
                        </td>
                        <td>
                            Vendor<img src="images/icon_wand.gif" onclick="getAllValue('vendor','vdor')" style="cursor: pointer" />
                        </td>
                        <td>
                            Manufacturer<img src="images/icon_wand.gif" onclick="getAllValue('manufacturer','mafr')"
                                style="cursor: pointer" />
                        </td>
                        <td>
                            Vendor P/N<img src="images/icon_wand.gif" onclick="getAllValue('vendor_part_number','vdpn')"
                                style="cursor: pointer" />
                        </td>
                        <td>
                            Location<img src="images/icon_wand.gif" onclick="getAllValue('location','loca')"
                                style="cursor: pointer" />
                        </td>
                        <td>
                            Delivery Date
                        </td>
                        <td>
                            Lot No.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="part_number" runat="server" onkeyup="return getCoAValue(this,'IG004','#STDN!');"
                                CssClass="txtbox_small"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txCoANo" runat="server" CssClass="txtbox_small" onkeyup="return getCoAValue(this,'IG004','#STSO!');"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="vendor" runat="server" onkeyup="return getValue(this,'vdor');"
                                CssClass="txtbox_small" />
                        </td>
                        <td>
                            <asp:TextBox ID="manufacturer" runat="server" onkeyup="return getValue(this,'mafr');"
                                CssClass="txtbox_small"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="vendor_part_number" runat="server" onkeyup="return getValue(this,'vdpn');"
                                CssClass="txtbox_small"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="location" runat="server" onkeyup="return getValue(this,'loca');"
                                CssClass="txtbox_small" />
                        </td>
                        <td>
                            <asp:TextBox ID="txDeliveryDate" runat="server" CssClass="txtbox_small" />
                        </td>
                        <td>
                            <asp:TextBox ID="txLotNo" runat="server" CssClass="txtbox_small" onkeyup="return getCoAValue(this,'IG004','#STLT!');" />
                        </td>
                    </tr>
                </table>
            </div>
            <table cellspacing="1" cellpadding="1" border="0">
                <tr>
                    <td>
                        <asp:CheckBox ID="excatMatch" runat="server" Text="Exact Match" Checked="true" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download Excel file" />
                    </td>
                    <td>
                        <asp:Button ID="reset_btn" runat="server" OnClick="reset_btn_Click" Text="Reset" />
                    </td> 
                </tr>
            </table>
            <asp:GridView ID="GridView1" runat="server" Height="125px" Width="207px" AutoGenerateColumns="false"
                OnRowCommand="GridView1_RowCommand" AllowPaging="True"
                OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20" 
                onrowdatabound="GridView1_RowDataBound" ondatabound="GridView1_DataBound">
                <Columns>
                    <asp:BoundField DataField="PN" HeaderText="P/N" />
                    <asp:BoundField DataField="Vendor" HeaderText="Vendor" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" />
                    <asp:BoundField DataField="ManufacturingLocation" HeaderText="Manufacturing Location" />
                    <asp:BoundField DataField="VendorPN" HeaderText="Vendor P/N" />
                    <asp:BoundField DataField="MaterialsDescription" HeaderText="Materials Description" />
                    <asp:BoundField DataField="CoANo" HeaderText="CoA No." />
                    <asp:BoundField DataField="LotNo" HeaderText="Lot No." />
                    <asp:BoundField DataField="ManufactureDate" HeaderText="Manufacture Date" />
                    <asp:BoundField DataField="DeliveryDate" HeaderText="Delivery Date" />
                    <asp:BoundField DataField="Thickness" HeaderText="Thickness" />
                    <asp:BoundField DataField="Tg" HeaderText="Tg" />
                    <asp:BoundField DataField="DimensionalStability" HeaderText="Dimensional Stability" />
                    <asp:BoundField DataField="PeelStrength" HeaderText="Peel Strength" />
                    <asp:BoundField DataField="MoistureAbsorption" HeaderText="Moisture Absorption" />
                    <asp:BoundField DataField="ThermalExpansionCoefficient" HeaderText="Thermal Expansion Coefficient" />
                    <asp:BoundField DataField="FlexuralStrength" HeaderText="Flexural Strength" />
                    <asp:BoundField DataField="WarpTwist" HeaderText="Warp/Twist" />
                    <asp:BoundField DataField="Permittivity" HeaderText="Permittivity" />
                    <asp:BoundField DataField="LossTangent" HeaderText="Loss Tangent" />
                    <asp:TemplateField HeaderText="PDF Version">
                        <ItemTemplate>                            
                            <asp:Label ID="lblT_UPRN" runat="server" Text='<%# Eval("UPRN")%>' Visible="false"></asp:Label>
                            <asp:ImageButton ID="ImgbtnModify" runat="server" ImageUrl="~/Images/modify.png" ToolTip="CoA" />
                        </ItemTemplate>
                        <ItemStyle Wrap="false" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Go To :"></asp:Label>
                <asp:TextBox ID="currentPage" runat="server" Width="80px" AutoPostBack="true" ontextchanged="currentPage_TextChanged"></asp:TextBox>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Page Size :"></asp:Label>
                <asp:TextBox ID="pageSize" runat="server" Width="80px"  AutoPostBack="true" ontextchanged="pageSize_TextChanged"></asp:TextBox>
                        &nbsp;&nbsp;<asp:Label ID="pageInfo" runat="server"></asp:Label>
                        &nbsp;&nbsp;<asp:Button ID="perviousPage" runat="server" Text="&lt;&lt;" onclick="perviousPage_Click" />
                <asp:Button ID="nextPage" runat="server" Text="&gt;&gt;" onclick="nextPage_Click" style="height: 26px" />
            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>