<%@ Control Language="C#" AutoEventWireup="true" Inherits="GridView_btn" Codebehind="GridView_btn.ascx.cs" %>
<div id="su_panel" style="display:block; background-color:#dedede;">
    <asp:CheckBox ID="excatMatch" runat="server" Text="Exact Match" Checked="true" />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Download Excel file" />
<asp:Button ID="reset_btn" runat="server" onclick="reset_btn_Click" 
                        Text="Reset" />
<asp:Panel ID="remarkX" runat="server" CssClass="remarkDiv" >
<div runat="server" id="remarkDIV">
Remark:<br />
<ol>
<li>If shelf life is 0, that's mean Store no need to control FIFO for the material.</li>
<li>If Shelf life is >0, but MRA is 0, shelf life will be calculated from "Receiving Date" or "Shipping Date" for the material;<br />
     That's mean store should input "Receiving Date" or "Shipping Date" into "Manufacturing Date" on FIFO Label instead of MD. 
</li>
</ol>
</div>
</asp:Panel>
</div>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="false"
                onpageindexchanging="GridView1_PageIndexChanging" onsorting="GridView1_Sorting" 
                PageSize="50" onrowdatabound="GridView1_RowDataBound" 
    ondatabound="GridView1_DataBound">
        <EmptyDataTemplate>
            <span id="norsfound">No record found.</span>
        </EmptyDataTemplate>
        <PagerSettings Visible="true" />
    </asp:GridView>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Go To :"></asp:Label>
        <asp:TextBox ID="currentPage" runat="server" Width="80px" AutoPostBack="true"
            ontextchanged="currentPage_TextChanged"></asp:TextBox>
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Page Size :"></asp:Label>
        <asp:TextBox ID="pageSize" runat="server" Width="80px"  AutoPostBack="true"
            ontextchanged="pageSize_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;<asp:Label ID="pageInfo" runat="server"></asp:Label>
                &nbsp;&nbsp;<asp:Button ID="perviousPage" runat="server" Text="&lt;&lt;" 
                            onclick="perviousPage_Click" />
        <asp:Button ID="nextPage" runat="server" Text="&gt;&gt;" onclick="nextPage_Click" 
                style="height: 26px" />
    </asp:Panel>
        
