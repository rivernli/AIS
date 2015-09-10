<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoA_prepreg_Form.aspx.cs" Inherits="CoA_prepreg_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function print()  
        {                     
            document.getElementById("divPrintButton").style.display="none";
            var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>'; 
            document.body.insertAdjacentHTML('beforeEnd', WebBrowser); 
            WebBrowser1.ExecWB(6, 1); 
            WebBrowser1.outerHTML = ""; 
            document.getElementById("divPrintButton").style.display="block";
        }    
        
        function printpr() //预览函数 
        {
            document.getElementById("divPrintButton").style.display="none";
            var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>'; 
            document.body.insertAdjacentHTML('beforeEnd', WebBrowser);
            WebBrowser1.ExecWB(7, 1); //打印预览 
            WebBrowser1.outerHTML = "";
            document.getElementById("divPrintButton").style.display="block";
        }

    </script>
       <style type="text/css">
        body
        {
            font-family: Tahoma, Arial, sans-serif;
            font-size: 8pt;
        }
        .page_title
        {
            font-weight: bold;
            font-size: 7pt;
        }
        .CurledLineMiddle
        {
            border-right: medium none;
            border-top: medium none;
            font-size: 8pt;
            border-left: medium none;
            border-bottom: black 1px solid;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="98%" id="listTable" border="0" align="center" cellpadding="0" cellspacing="0"
            bordercolor="#000000" align="center">
            <tr>                
                <td  colspan="4" align="right">
                    <div id="divPrintButton" >
                        <input type="button" onclick="print()" value="Print" />
                        <input type="button" onclick="printpr()" value="Print Preview" />                                    
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <font style="font-weight: bold;"><span style="font-size: medium">Certificate of Analysis of Prepreg</font></span></font>
                </td>                
            </tr>
            <tr>
                <td align="center" colspan="4">&nbsp;</td>
            </tr>
            <tr height="17px">
                <td width="18%" >Supplier:</td>
                <td width="43%" >
                    <asp:Label ID="lblSupplier" runat="server"></asp:Label>                    
                </td>
                <td width="16%" ></td>
                <td width="23%" ></td>
            </tr>
            <tr height="17px">
                <td>Manufacturer:</td>
                <td>
                    <asp:Label ID="lblManufacturer" runat="server"></asp:Label>                    
                </td >
                <td></td>
                <td></td>
            </tr>
            <tr height="17px">
                <td>Material Part Number:</td>
                <td>
                    <asp:Label ID="lblMaterialPartNumber" runat="server"></asp:Label> 
                </td>
                <td>Report Number:</td>
                <td>
                    <asp:Label ID="lblReportNumber" runat="server"></asp:Label>                                        
                </td>                
            </tr>
            <tr>
                <td>Materials Description:</td>
                <td>
                    <asp:Label ID="lblMaterialsDescription" runat="server"></asp:Label> 
                </td>
                <td>Delivery Date:</td>
                <td>
                    <asp:Label ID="lblDeliveryDate" runat="server"></asp:Label>                     
                </td>                
            </tr>
            <tr height="17px">
                <td>Manufacturing Location:</td>
                <td>    
                    <asp:Label ID="lblManufacturingLocation" runat="server"></asp:Label> 
                </td>
                <td>Purchase Order No.:</td>
                <td>
                    <asp:Label ID="lblPurchaseOrderNo" runat="server"></asp:Label> 
                </td>
            </tr>
            <tr height="17px">
                <td>Manufacture Date:</td>
                <td>
                    <asp:Label ID="lblManufactureDate" runat="server"></asp:Label> 
                </td>
                <td>Glass Fabric Supplier:</td>
                <td>
                    <asp:Label ID="lblGlassFabricSupplier" runat="server"></asp:Label> 
                </td>
            </tr>
            <tr height="17px">
                <td>Lot No./Batch No.:</td>
                <td>
                    <asp:Label ID="lblLotNo" runat="server"></asp:Label> 
                </td>
                <td>Quantity:</td>
                <td>
                    <asp:Label ID="lblQuantity" runat="server"></asp:Label> 
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    We hereby certify that the supplied materials are traceable to physical / chemical test reports on file at the point of manufacturing<br />
                    with reference to Industrial / International / National Standards as specified below :<br />
                    IPC-4101, IPC-TM-650
                    <hr>
                    The original test data and reports can be submitted to Multek for verification upon enquiry including the followings :
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
     </table>
     <table width="98%" style="border-collapse: collapse;" border="1" bordercolor="#000000" align="center">
            <tr height="30px">
                <td align="center" width="28%" height="15px">Test Item</td>
                <td align="center" width="50%" height="15px">Requirement</td>
                <td align="center" width="11%" height="15px">Testing result</td>
                <td align="center" width="11%" height="15px">Conclusion</td>
            </tr>               
            <tr height="30px">
                <td align="center">Surface inspection</td>
                <td align="center"><asp:Label ID="lblSI_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblSI_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblSI_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Dimension inspection (mm)</td>
                <td align="center"><asp:Label ID="lblDI_VALU" runat="server"></asp:Label></td>
                <td align="center">
                    <asp:Label ID="lblDI_value1" runat="server"></asp:Label>
                    <asp:Label ID="lblDI_value2" runat="server"></asp:Label>
                </td>
                <td align="center"><asp:Label ID="lblDI_value3" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Resin content (%)</td>
                <td align="center"><asp:Label ID="lblRC_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblRC_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblRC_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Resin flow (%)</td>
                <td align="center"><asp:Label ID="lblRF_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblRF_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblRF_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Gel time (sec.)</td>
                <td align="center"><asp:Label ID="lblGT_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblGT_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblGT_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Volatile content (%)</td>
                <td align="center"><asp:Label ID="lblVC_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblVC_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblVC_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Minimum viscosity (Pa.s)</td>
                <td align="center"><asp:Label ID="lblMC_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblMC_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblMC_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Time to minimum viscosity (min.)</td>
                <td align="center"><asp:Label ID="lblTV_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTV_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTV_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Filler content (%)</td>
                <td align="center"><asp:Label ID="lblFC_value3" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblFC_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblFC_value2" runat="server"></asp:Label></td>
            </tr>             
       </table>
       <table width="98%" id="FootTable" border="0" align="center" cellpadding="0" cellspacing="0"
            bordercolor="#000000" align="center">
            <tr>
                <td height="30px">
                    We guarantee that the commodity is in conformity with the above specification. Otherwise, we shall be responsible for all related quality cost caused by the non-conformance from the above commodities.
                </td>
            </tr>
       </table>
    </form>
</body>
</html>

