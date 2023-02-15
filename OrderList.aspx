<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="FoodOrderApplication.OrderList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="BurgerTypes" HeaderText="BurgerTypes" SortExpression="BurgerTypes" />
                <asp:BoundField DataField="Addons" HeaderText="Addons" SortExpression="Addons" />
                <asp:BoundField DataField="BurgerTypesCost" HeaderText="BurgerTypesCost" SortExpression="BurgerTypesCost" />
                <asp:BoundField DataField="AddonsCost" HeaderText="AddonsCost" SortExpression="AddonsCost" />
                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:madhuri_TaskConnectionString %>" SelectCommand="SELECT * FROM [FoodOrder]"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
