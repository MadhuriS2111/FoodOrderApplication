<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="FoodOrderApplication.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>Online Food Order</h3>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredName" runat="server" ControlToValidate ="txtName" Display="Dynamic" ErrorMessage="Name is Required" ForeColor="Red">

                        </asp:RequiredFieldValidator>
                    </td>


                    <td>Mobile No:</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate ="txtMobile" ErrorMessage="Mobile No is Required" Display="Dynamic" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate ="txtAddress" ErrorMessage="Address is Required" Display="Dynamic" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Burger Type:</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rdoVeg" runat="server" Text="Veg burger (Rs. 60)" GroupName="BurgerType" /></td>
                    <td>
                        <asp:RadioButton ID="rdoNonVeg" runat="server" Text="Non-Veg burger (Rs. 125)" GroupName="BurgerType" /></td>
                </tr>
                <tr>
                    <td>Add-Ons:</td>

                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="ChkFrench" runat="server" Text="French Fries (Rs. 45)" />

                    </td>
                    <td>
                        <asp:CheckBox ID="ChkCoke" runat="server" Text="Coke (Rs. 25)" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="4">
                        <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" />
                    </td>

                </tr>

            </table>
        </div>
    </form>
</body>
</html>
