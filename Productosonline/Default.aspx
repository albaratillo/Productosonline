<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Productosonline._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>PRODUCTOS ON LINE</h1>
        <p class="lead">NOS DEDICAMOS A LA TECNOLOGIA</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Productos &raquo;</a><asp:Image ID="Image1" runat="server" Height="52px" ImageUrl="C:\Users\Usuario\source\repos\Productosonline\Productosonline\imagenes\T.JPG" Width="114px" />
            <asp:Button ID="Button1" runat="server" Height="31px" Text="Login" Width="114px" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>SOMOS TECNOLIGIA</h2>
            <p>
                Nos dedicamos a vender productos tecnoligicos.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>ACCEDE A PRODUCTOS</h2>
            <p>
                Através del boton Productos podrás ver nuestra lista de stock disponible.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web </h2>
            <p>
                Tecnologia y mucho más.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
