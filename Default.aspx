<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" ID="ddlLoyalty"></asp:DropDownList>
            <asp:TextBox runat="server" ID="tbDateOfTransaction"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbTimeOfTransaction"></asp:TextBox>
            <asp:DropDownList runat="server" ID="ddlTransactionType"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlStore"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlEmployee"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="ddlProduct"></asp:DropDownList>
            <asp:TextBox runat="server" ID="tbQty"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbPricePerSellableUnitAsMarked"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbPricePerSellableUnitToTheCustomer"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbTransactionComment"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbTransactionDetailComment"></asp:TextBox>
            <asp:DropDownList runat="server" ID="DELETEATSOMEPOINTcouponDetailsNULLVALUES"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="DONTKNOWTRANSACTIONID"></asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreSimulatorConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="spAddTransactionAndDetail" SelectCommandType="StoredProcedure">
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
