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
            <asp:RegularExpressionValidator ID="dateValRegex" runat="server" ControlToValidate="tbDateOfTransaction" ErrorMessage="Please Enter a valid date in the format (mm/dd/yyyy)" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <asp:Table ID="Table1" runat="server">

                        <asp:TableRow ID="TableRow1" runat="server">

                            <asp:TableCell runat="server">
                                Pick the Loyalty Number:  
                        <br />
                                <asp:DropDownList runat="server" ID="ddlLoyalty" AutoPostBack="true"></asp:DropDownList>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter the Date of Transaction:
                        <br />
                    
                                <asp:TextBox runat="server" ID="tbDateOfTransaction"></asp:TextBox> 
                               
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter the Time of Transaction:
                        <br />
                                <asp:TextBox runat="server" ID="tbTimeOfTransaction"></asp:TextBox>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter Price Per Sellable Unit To The Customer:
                        <br />
                                <asp:TextBox runat="server" ID="tbPricePerSellableUnitToTheCustomer"></asp:TextBox>
                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow2" runat="server">

                            <asp:TableCell runat="server">
                                Pick the Type of Transaction:
                        <br />
                                <asp:DropDownList runat="server" ID="ddlTransactionType" AutoPostBack="true"></asp:DropDownList>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Pick the Store:
                        <br />
                                <asp:DropDownList runat="server" ID="ddlStore" AutoPostBack="true"></asp:DropDownList>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Pick the Employee:
                        <br />
                                <asp:DropDownList runat="server" ID="ddlEmployee" AutoPostBack="true"></asp:DropDownList>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter Price Per Sellable Unit As Marked:
                        <br />
                                <asp:TextBox runat="server" ID="tbPricePerSellableUnitAsMarked"></asp:TextBox>
                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow3" runat="server">

                            <asp:TableCell runat="server">
                                Pick the Product:
                        <br />
                                <asp:DropDownList runat="server" ID="ddlProduct" AutoPostBack="true"></asp:DropDownList>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter the Quantity:
                        <br />
                                <asp:TextBox runat="server" ID="tbQty"></asp:TextBox>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter Transaction Detail Comment:
                        <br />
                                <asp:TextBox runat="server" ID="tbTransactionDetailComment"></asp:TextBox>
                            </asp:TableCell>

                            <asp:TableCell runat="server">
                                Enter Transaction Comment:
                        <br />
                                <asp:TextBox runat="server" ID="tbTransactionComment"></asp:TextBox>
                            </asp:TableCell>

                        </asp:TableRow>

                    </asp:Table>


                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />

        </div>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryStoreSimulatorConnectionString %>" SelectCommand="spAddTransactionAndDetail" SelectCommandType="StoredProcedure" CancelSelectOnNullParameter="False">
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
                <asp:Parameter DefaultValue="NULL" Name="couponDetailID" Type="DBNull" />
                <asp:Parameter DefaultValue="" Direction="InputOutput" Name="TransactionID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
