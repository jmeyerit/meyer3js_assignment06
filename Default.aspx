<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meyer3js_reilmajb_Assignment06</title>
</head>
<body>
    <link href="App_Themes/StyleSheet.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div>
            <h1 id="wrapper">Meyer3js and reilmajb Assignment 6</h1>
            <table>
                <tr>
                    <td>Pick the Loyalty Number:                      
                        <asp:DropDownList runat="server" ID="ddlLoyalty"></asp:DropDownList>
                    </td>
                    <td>Enter the Date of Transaction:
                        <asp:TextBox runat="server" ID="tbDateOfTransaction"></asp:TextBox>
                    </td>
                    <td>Enter the Time of Transaction:
                        <asp:TextBox runat="server" ID="tbTimeOfTransaction"></asp:TextBox>
                    </td>
                    <td>Pick the Type of Transaction:
                        <asp:DropDownList runat="server" ID="ddlTransactionType"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Pick the Store:
                        <asp:DropDownList runat="server" ID="ddlStore"></asp:DropDownList>
                    </td>
                    <td>Pick the Employee:
                        <asp:DropDownList runat="server" ID="ddlEmployee"></asp:DropDownList>
                    </td>
                    <td>Pick the Product:
                        <asp:DropDownList runat="server" ID="ddlProduct"></asp:DropDownList>
                    </td>
                    <td>Enter the Quantity:
                        <asp:TextBox runat="server" ID="tbQty"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Enter Price Per Sellable Unit As Marked:
                        <asp:TextBox runat="server" ID="tbPricePerSellableUnitAsMarked"></asp:TextBox>
                    </td>
                    <td>Enter Price Per Sellable Unit To The Customer:
                        <asp:TextBox runat="server" ID="tbPricePerSellableUnitToTheCustomer"></asp:TextBox>
                    </td>
                    <td>Enter Transaction Comment:
                        <asp:TextBox runat="server" ID="tbTransactionComment"></asp:TextBox>
                    </td>
                    <td>Enter Transaction Detail Comment:
                        <asp:TextBox runat="server" ID="tbTransactionDetailComment"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:DropDownList runat="server" ID="DELETEATSOMEPOINTcouponDetailsNULLVALUES"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="DONTKNOWTRANSACTIONID"></asp:DropDownList>

        </div>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreSimulatorConnectionString %>" SelectCommand="spAddTransactionAndDetail" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlLoyalty" Name="LoyaltyID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="tbDateOfTransaction" Name="DateOfTransaction" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbTimeOfTransaction" Name="TimeOfTransaction" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ddlTransactionType" Name="TransactionTypeID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlStore" Name="StoreID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlEmployee" Name="EmplID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlProduct" Name="ProductID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="tbQty" Name="Qty" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="tbPricePerSellableUnitAsMarked" Name="PricePerSellableUnitAsMarked" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbPricePerSellableUnitToTheCustomer" Name="PricePerSellableUnitToTheCustomer" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbTransactionComment" Name="TransactionComment" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbTransactionDetailComment" Name="TransactionDetailComment" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="NULL" Name="couponDetailID" Type="Int32" />
                <asp:Parameter DefaultValue="" Direction="InputOutput" Name="TransactionID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
