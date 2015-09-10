<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoA_Laminate_Form.aspx.cs" Inherits="CoA_Laminate_Form" %>

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
                    <font style="font-weight: bold;"><span style="font-size: medium">Certificate of Analysis of Laminate</font></span></font>
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
                <td width="23%" >
            </tr>
            <tr height="17px">
                <td>Manufacturer:</td>
                <td>
                    <asp:Label ID="lblManufacturer" runat="server"></asp:Label>                    
                </td >
                <td>Report Number:</td>
                <td>
                    <asp:Label ID="lblReportNumber" runat="server"></asp:Label>                                        
                </td>
            </tr>
            <tr height="17px">
                <td>Material Part Number:</td>
                <td>
                    <asp:Label ID="lblMaterialPartNumber" runat="server"></asp:Label> 
                </td>
                <td>Delivery Date:</td>
                <td>
                    <asp:Label ID="lblDeliveryDate" runat="server"></asp:Label>                     
                </td>
            </tr>
            <tr>
                <td>Materials Description:</td>
                <td>
                    <asp:Label ID="lblMaterialsDescription" runat="server"></asp:Label> 
                </td>
                <td>Purchase Order No.:</td>
                <td>
                    <asp:Label ID="lblPurchaseOrderNo" runat="server"></asp:Label> 
                </td>
            </tr>
            <tr height="17px">
                <td>Manufacturing Location:</td>
                <td>    
                    <asp:Label ID="lblManufacturingLocation" runat="server"></asp:Label> 
                </td>
                <td>Copper Foil Supplier:</td>
                <td>
                    <asp:Label ID="lblCopperFoilSupplier" runat="server"></asp:Label> 
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
     </table>
     <table width="98%" style="border-collapse: collapse;" border="1" bordercolor="#000000" align="center">
            <tr>
                <td rowspan="2" align="center" width="28%" height="15px">Test Item</td>
                <td colspan="2" align="center" width="50%" height="15px">Requirement</td>
                <td rowspan="2" align="center" width="11%" height="15px">Testing result</td>
                <td rowspan="2" align="center" width="11%" height="15px">Conclusion</td>
            </tr>   
            <tr>
                <td align="center" width="25%" height="15px"><0.50mm</td>
                <td align="center" width="25%" height="15px">≥0.50mm</td>
            </tr>  
            <tr height="30px">
                <td align="center">Appearance on copper-clad surface</td>
                <td colspan="2" align="center"><asp:Label ID="lblAC_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAC_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAC_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Appearance of base meterial after</td>
                <td colspan="2" align="center"><asp:Label ID="lblAB_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAB_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAB_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Dimension inspection</td>
                <td colspan="2" align="center"><asp:Label ID="lblDI_VALU" runat="server"></asp:Label></td>
                <td align="center">
                    <asp:Label ID="lblDI_value1" runat="server"></asp:Label><br />
                    <asp:Label ID="lblDI_value2" runat="server"></asp:Label>
                </td>
                <td align="center"><asp:Label ID="lblDI_value3" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Thickness(including Copper clad)</td>
                <td colspan="2" align="center"><asp:Label ID="lblTC_VALU" runat="server"></asp:Label></td>
                <td align="center">
                    <asp:Label ID="lblTC_value1" runat="server"></asp:Label><br />
                    <asp:Label ID="lblTC_value2" runat="server"></asp:Label>
                </td>
                <td align="center"><asp:Label ID="lblTC_value3" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">TG</td>
                <td colspan="2" align="center"><asp:Label ID="lblTG_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTG_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTG_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Thermal stress*(solder Float)<br />(288oCx10secx6times)</td>
                <td colspan="2" align="center"><asp:Label ID="lblTS_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTS_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTS_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Arc Resistance</td>
                <td colspan="2" align="center"><asp:Label ID="lblAR_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAR_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblAR_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Flammability</td>
                <td colspan="2" align="center"><asp:Label ID="lblFB_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblFB_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblFB_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Dimensional Stability</td>
                <td align="center"><asp:Label ID="lblDS_VALU" runat="server"></asp:Label></td>
                <td align="center">N/A</td>
                <td align="center">
                    <asp:Label ID="lblDS_value1" runat="server"></asp:Label><br />
                    <asp:Label ID="lblDS_value2" runat="server"></asp:Label>
                </td>
                <td align="center"><asp:Label ID="lblDS_value3" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Peel strength</td>
                <td colspan="2" align="center"><asp:Label ID="lblPS_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblPS_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblPS_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Moisture Absorption</td>
                <td align="center">N/A</td>
                <td align="center"><asp:Label ID="lblMA_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblMA_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblMA_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Thermal expansion coefficient<br />(Z axis/TMA)</td>
                <td align="center">N/A</td>
                <td align="center"><asp:Label ID="lblTE_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTE_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblTE_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Flexural Strength</td>
                <td align="center">N/A</td>
                <td align="center"><asp:Label ID="lblFS_VALU" runat="server"></asp:Label></td>
                <td align="center">
                    <asp:Label ID="lblFS_value1" runat="server"></asp:Label><br />
                    <asp:Label ID="lblFS_value2" runat="server"></asp:Label>
                </td>
                <td align="center"><asp:Label ID="lblFS_value3" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Warp/Twist</td>
                <td align="center">N/A</td>
                <td align="center"><asp:Label ID="lblWT_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblWT_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblWT_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr>
                <td align="center" rowspan="2">Volume Resistivity</td>
                <td align="center" rowspan="2"><asp:Label ID="lblVR1_VALU" runat="server"></asp:Label></td>
                <td align="center" height="15px"><asp:Label ID="lblVR1_VALU2" runat="server"></asp:Label></td>
                <td align="center" height="15px">
                    <asp:Label ID="lblVR1_Value1" runat="server"></asp:Label>                    
                </td>
                <td rowspan="2" align="center"><asp:Label ID="lblVR1_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr>
                <td align="center" height="15px"><asp:Label ID="lblVR2_VALU" runat="server"></asp:Label></td>
                <td align="center" height="15px"><asp:Label ID="lblVR2_Value1" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" rowspan="2">Surface Resistivity</td>
                <td align="center" rowspan="2"><asp:Label ID="lblSR1_VALU" runat="server"></asp:Label></td>
                <td align="center" height="15px"><asp:Label ID="lblSR1_VALU2" runat="server"></asp:Label></td>
                <td align="center" height="15px"><asp:Label ID="lblSR1_value1" runat="server"></asp:Label></td>
                <td rowspan="2" align="center"><asp:Label ID="lblSR1_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr>
                <td align="center" height="15px"><asp:Label ID="lblSR2_VALU" runat="server"></asp:Label></td>
                <td align="center" height="15px"><asp:Label ID="lblSR2_value1" runat="server"></asp:Label></td>
            </tr>
             <tr height="30px">
                <td align="center">Permittivity, @1MHz</td>
                <td colspan="2" align="center"><asp:Label ID="lblPM_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblPM_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblPM_value2" runat="server"></asp:Label></td>
            </tr> 
            <tr height="30px">
                <td align="center">Loss Tangent, @1MHz</td>
                <td colspan="2" align="center"><asp:Label ID="lblLT_VALU" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblLT_value1" runat="server"></asp:Label></td>
                <td align="center"><asp:Label ID="lblLT_value2" runat="server"></asp:Label></td>
            </tr> 
       </table>
       <table width="98%" id="FootTable" border="0" align="center" cellpadding="0" cellspacing="0"
            bordercolor="#000000" align="center">
            <tr>
                <td>
                    We guarantee that the commodity is in conformity with the above specification. Otherwise, we shall be responsible for all related quality cost caused by the non-conformance from the above commodities.
                </td>
            </tr>
       </table>
    </form>
</body>
</html>

