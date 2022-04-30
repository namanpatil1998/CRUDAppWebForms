<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div>
            
            <table class="nav-justified" style="height: 196px">
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Student ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Student Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Adress</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Age</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Contact</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#9900FF" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="61px" />
                        <asp:Button ID="Button2" runat="server" BackColor="#CC33FF" ForeColor="White" OnClick="Button2_Click" Text="Update" />
                        <asp:Button ID="Button3" runat="server" BackColor="#CC00FF" ForeColor="White" OnClick="Button3_Click" Text="Delete" />
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Load" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">
                        <asp:GridView ID="GridView1" runat="server" onselectedindexchanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 159px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            
        </div>
    </div>

</asp:Content>
