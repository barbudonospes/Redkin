<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kinoafisha.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style type="text/css">
   body
   {
    background: url(321.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
   } 
    h1, h2, h3, h4, h5, h6, td
    {
        font-size: 1.5em;
        color:white;
        font-variant: small-caps;
        text-transform: none;
        font-weight: 200;
        margin-bottom: 0px;
    }
    h2
    {
        font-size: 2.5em;
    }
    hr 
    {
          color: white;
    }
  </style>
  </head>
    <title>кинцо</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="OurFileUpload" runat="server" />
    <br />
    <asp:TextBox runat="server" ID="TextBoxTitle" Text="Название фильма"></asp:TextBox>
    <br />
    <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxabout" Text="Описание" ></asp:TextBox>   
    <br />
    <asp:Button runat="server" ID="ButtonAdd" Text="Добавить" OnClick="Add_Click" />
        <asp:Repeater runat="server" ID="Repeater1">
            <ItemTemplate>       
    <h2>
        <%# Eval("Title") %></h2>
    <table>                    
        <td>
             <asp:Button runat="server" Text="Удаление" 
             ID="ButtonRemove" 
             OnClick="btn_Click" 
             CommandArgument='<%# Eval("MyID") %>'
             UseSubmitBehavior="False" />
        </td>

    </table>
    <table>
        <hr />
        <tr>
            <td>
                <img height="500" src="<%# Eval("jpg") %>" />
            </td>
            <td style="vertical-align: top;">
                            <%# Eval("about") %>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>   
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
