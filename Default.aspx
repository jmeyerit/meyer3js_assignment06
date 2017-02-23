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
            <asp:DropDownList runat="server" ID="ddlQty"></asp:DropDownList>
            <asp:TextBox runat="server" ID="tbPricePerSellableUnitAsMarked"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbPricePerSellableUnitToTheCustomer"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbTransactionComment"></asp:TextBox>
            <asp:TextBox runat="server" ID="tbTransactionDetailComment"></asp:TextBox>
            <asp:DropDownList runat="server" ID="DELETEATSOMEPOINTcouponDertails"></asp:DropDownList>
            <asp:DropDownList runat="server" ID="DONTKNOWTRANSACTIONID"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
