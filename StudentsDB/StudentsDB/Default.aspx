<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentsDB.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <style>

   #end
   {
   	margin:auto;
   	width:650px;
   }

   table 
   {
    border: 1px solid black; /* Рамка вокруг таблицы */
    margin: auto; /* Выравниваем таблицу по центру окна  */
    background-color:white;
   }
   td {
    text-align: center; /* Выравниваем текст по центру ячейки */
   }
   body 
   {
    width: 900px;
    margin: auto;
    background-color:blue;
   }
  </style>
    <title>Зачетки</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:TextBox runat="server" ID="TextBox1" Text="Название"></asp:TextBox>
    <asp:TextBox runat="server" ID="TextBox2" Text="Часы"></asp:TextBox>
    <asp:TextBox runat="server" ID="TextBox3" Text="Имя преподавателя"></asp:TextBox>
    <asp:TextBox runat="server" ID="TextBox4" Text="Оценка"></asp:TextBox>
    <asp:TextBox runat="server" ID="TextBox5" Text="Дата"></asp:TextBox>
    <asp:Button runat="server" ID="ButtonAdd" Text="Добавить" OnClick="Add_Click"/>

        <asp:Repeater runat="server" ID="Repeater1">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td>
                            Название дисциплины
                        </td>
                        <td>
                            Кол-во часов
                        </td>
                        <td>
                            Имя преподавателя
                        </td>
                        <td>
                            Оценка
                        </td>
                        <td>
                            Дата
                        </td>
                        <td>
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("Namediscipline")%>
                    </td>
                    <td>
                        <%# Eval("Hours")%>
                    </td>
                    <td>
                        <%# Eval("Professor")%>
                    </td>
                    <td>
                        <%# Eval("Assessment")%>
                    </td>
                    <td>
                        <%# Eval("Date")%>
                    </td>
                    <td>
                        <asp:Button runat="server" Text="Удалить" 
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

        <div id="end">
        
        <asp:Label ID="Label1" runat="server" Text="Название дисцины:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Оценка:"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Обновить оценку" />

        </div>
    </div>
    </form>
</body>
</html>
