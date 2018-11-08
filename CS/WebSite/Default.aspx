<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxDataView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="JScript.js">
    </script>
</head>
<body>
    <form id="mainForm" runat="server">
    <div>
        <dx:ASPxDataView ID="dataView" runat="server" DataSourceID="dataSource" RowPerPage="1"
            ClientInstanceName="clientDataView" OnCustomCallback="dataView_CustomCallback"
            OnDataBound="dataView_DataBound">
            <ItemTemplate>
                <b>EmployeeID</b>:
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                <b>LastName</b>:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                <b>FirstName</b>:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                <b>Title</b>:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
            </ItemTemplate>
            <ClientSideEvents Init="OnInit" />
        </dx:ASPxDataView>
    </div>
    <asp:AccessDataSource ID="dataSource" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Employees]"></asp:AccessDataSource>
    </form>
</body>
</html>