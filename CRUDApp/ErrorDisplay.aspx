<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorDisplay.aspx.cs" Inherits="CRUDApp.ErrorDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 106px;
            width: 1726px;
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        &nbsp;
    
    <p>
        &nbsp;
    </p>
    
    <form runat="server">
        <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" BorderColor="#FF3300" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style1" ForeColor="White" OnClick="Button1_Click" Text="Back to form" />
    <p>
        &nbsp;
    </p>
    
        <div class="formrow">
            <div class="label1">
                <asp:Label ID="myLabel" runat="server" />
                <asp:CustomValidator ID="err" runat="server"
                    ValidationGroup="save" Display="Dynamic" meta:resourcekey="err" />
            </div>
        </div>
    </form>
        </div>
</body>
</html>
