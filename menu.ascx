<%@ Control Language="C#" AutoEventWireup="true" Inherits="menu" Codebehind="menu.ascx.cs" %>
<script type="text/javascript">
function addFavorite(pageName){
    if (window.external){
        window.external.AddFavorite(location.href,pageName)
    }else{
        alert("Sorry! Your browser doesn't support this function.");
    }
}
</script>

<div>

           <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; padding:0px;">
                 <tr>
                     <td >
                        <img alt="Multek" id="HeaderImage" src="images/Multek-ID-PMS.gif" style="height:47px;border-width:0px;" />
                    </td>
                    <td align="center" width="600px">
                        <span id="Span1" class="MasterTile" style="display:inline-block;width:460px;">
                        Material Attribute & Information Search (MAIS)
                        </span></td>
                    <td  
                         style="background-image: url('images/flex_curve.gif'); width: 423px; text-align: center">
                        &nbsp;
                        <span style="color:#ffffff; cursor:pointer; text-decoration:underline;" onclick="addFavorite('Material Attribute Information Search (MAIS) System');">Add To Favorite</span>
                        <br />
                        <a href="mailto:CN-HKGMultekApplications%26Business@cn.flextronics.com?subject=comments%20for%20Material%20Attribute%20Information%20System" style="color:#ffffff; cursor:pointer; text-decoration:underline;">Send your comments</a>
                    </td>
                 </tr>
                <tr><td colspan="3">
                <div style="height:4px; background-color:#003366;">&nbsp;</div>
                <div>
                    <ul id="channel">
						<li id='li_ais' runat="server" ><asp:HyperLink ID="lnk_ais" Text="AIS" runat="server" NavigateUrl="default.aspx"/></li>
						<li runat="server" id="li_databank"><asp:HyperLink ID="lnk_databank" runat="server" Text="Databank" NavigateUrl="databank_laminate.aspx" /></li>
						<li runat="server" id="li_iqc"><asp:HyperLink ID="lnk_iqc" runat="server" Text="IQC Spec" NavigateUrl="iqc_laminate.aspx" /></li>
						<li runat="server" id="li_CoA"><asp:HyperLink ID="lnk_CoA" runat="server" Text="CoA" NavigateUrl="CoA_laminate.aspx"/></li>   
						<li runat="server" id="li_upload"><asp:HyperLink ID="lnk_upload" runat="server" Text="Upload" NavigateUrl="~/upload.aspx" /></li>
                        <li runat="server" id="li_logout"><asp:LinkButton ID="lnk_logout" runat="server" 
                                Text="Logout" onclick="lnk_logout_Click" /></li>

			        </ul>
			        <div style="border-top:1px solid #444; width:auto; height:5px; ">&nbsp;</div>
                </div>
                </td></tr>
            </table>
</div>
<asp:Panel ID="AISPanel" Visible="false" runat="server">
<div style="padding:3px 1px;">
AIS:
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="board.aspx">IG001-Board</asp:ListItem>
            <asp:ListItem Value="copperFoil.aspx">IG002-Copper Foil</asp:ListItem>
            <asp:ListItem Value="dryFilm.aspx">IG003-Dry Film</asp:ListItem>
            <asp:ListItem Value="laminate.aspx">IG004-Laminate</asp:ListItem>
            <asp:ListItem Value="prepreg.aspx">IG005-Prepreg</asp:ListItem>
            <asp:ListItem Value="rcc.aspx">IG006-RCC</asp:ListItem>
            <asp:ListItem Value="smcm.aspx">IG007-SMCM</asp:ListItem>
            <asp:ListItem Value="tools.aspx">IG008-Tools</asp:ListItem>
            <asp:ListItem Value="general.aspx">IG009-General</asp:ListItem>
            <asp:ListItem Value="fccl.aspx">IG011-FCCL</asp:ListItem>
            <asp:ListItem Value="coverLay.aspx">IG012-Cover Lay</asp:ListItem>
            <asp:ListItem Value="adhesive.aspx">IG013-Adhesive</asp:ListItem>
            <asp:ListItem Value="stiffener.aspx">IG014-Stiffener</asp:ListItem>
            <asp:ListItem Value="shieldlingFilm.aspx">IG015-Shieldling_Film</asp:ListItem>
            <asp:ListItem Value="chemical.aspx">IG080-Chemical</asp:ListItem>
            <asp:ListItem Value="smd.aspx">IG200-SMD</asp:ListItem>
            <asp:ListItem Value="metal.aspx">IG201-Metal</asp:ListItem>
            <asp:ListItem Value="packing.aspx">IG204-Packing</asp:ListItem>
            <asp:ListItem Value="pcbaPacking.aspx">IG206-PCBA Packing</asp:ListItem>
            <asp:ListItem Value="coin.aspx">IG207-Coin</asp:ListItem>
            <asp:ListItem Value="nonInventory.aspx">IG500-Non Prod</asp:ListItem>
            <asp:ListItem Value="productionConsumables.aspx">NIV-Non Inventory</asp:ListItem>
        </asp:DropDownList>
</div>
<asp:Panel ID="remarkX" runat="server" CssClass="remarkDiv" Visible="false">
Remark:<br />
<ol>
<li>If shelf life is 0, that's mean Store no need to control FIFO for the material.</li>
<li>If Shelf life is >0, but MRA is 0, shelf life will be calculated from "Receiving Date" or "Shipping Date" for the material;<br />
     That's mean store should input "Receiving Date" or "Shipping Date" into "Manufacturing Date" on FIFO Label instead of MD. 
</li>
</ol>
</asp:Panel>
</asp:Panel>

<asp:Panel ID="DatabankPanel" Visible="false" runat="server">
<div style="padding:3px 1px;">
Databank:
<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="databank_laminate.aspx">IG004-Laminate</asp:ListItem>
            <asp:ListItem Value="databank_prepreg.aspx">IG005-Prepreg</asp:ListItem>
            <asp:ListItem Value="databank_rcc.aspx">IG006-RCC</asp:ListItem>
</asp:DropDownList>
</div>
</asp:Panel>

<asp:Panel ID="IQCPanel" Visible="false" runat="server">
<div style="padding:3px 1px;">
IQC Spec:
<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="iqc_laminate.aspx">IG004-Laminate</asp:ListItem>
            <asp:ListItem Value="iqc_prepreg.aspx">IG005-Prepreg</asp:ListItem>
            <asp:ListItem Value="iqc_rcc.aspx">IG006-RCC</asp:ListItem>
            <asp:ListItem Value="iqc_drillBit.aspx">IG008-Tools (Drill bit)</asp:ListItem>
</asp:DropDownList>
</div>
</asp:Panel>

<!--CoA-->
<asp:Panel ID="CoAPanel" Visible="false" runat="server">
<div style="padding:3px 1px;">
CoA:
<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem Value="CoA_laminate.aspx">IG004-Laminate</asp:ListItem>
            <asp:ListItem Value="CoA_prepreg.aspx">IG005-Prepreg</asp:ListItem> 
</asp:DropDownList>
</div>
</asp:Panel>