<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="FoodOrderApplication.BillPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:Label ID="lblName" runat="server"></asp:Label></td>
                    <td>Mobile No :</td>
                    <td>
                        <asp:Label ID="lblMobile" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Burger Type :</td>
                    <td>
                        <asp:Label ID="lblBurgerType" runat="server"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblCost" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Add-Ons :</td>
                    <td>
                        <asp:Label ID="lblAddOns" runat="server"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblCostAddOns" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Bill Amount:</td>
                    <td><asp:Label ID="lblBillAmount" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td> Cash On Delivery </td>
                    <td> <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click"/> </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
