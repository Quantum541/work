<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentsDB.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:TextBox runat="server" ID="TextBoxFName" Text="FName"></asp:TextBox>
    <asp:TextBox runat="server" ID="TextBoxLName" Text="LName"></asp:TextBox>
    <asp:CheckBox runat="server" ID="CheckBoxMale"  Text="Male"/>
    <asp:Button runat="server" ID="ButtonAdd" Text="Add" OnClick="Add_Click"/>

        <asp:Repeater runat="server" ID="Repeater1">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td>
                            Name
                        </td>
                        <td>
                            Last Name
                        </td>
                        <td>
                            Male
                        </td>
                        <td></td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("FName") %>
                    </td>
                    <td>
                        <%# Eval("LName") %>
                    </td>
                    <td>
                        <%# Eval("Male") %>
                    </td>
                    <td>
                        <asp:Button runat="server" Text="Remove" 
                        ID="ButtonRemove" 
                        OnClick="btn_Click" 
                        CommandArgument='<%# Eval("MyID") %>'
                        UseSubmitBehavior="False" />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
