<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Лаба_1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
    Ввод информации о фильме <br />
        <textarea name="comments" rows="8" cols="40">
        Год выпуска: 
        Страна: 
        Жанр: 
        Продолжительность: 
        Режиссер:  
        В ролях: 
        Описание: 
        </textarea>

        <asp:Button ID="Button1" runat="server" Text="Добвить" />
        <br />
        <br />
        добавление обложки фильма<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Загрузить" />
    </h2>
</asp:Content>
