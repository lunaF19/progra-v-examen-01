<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mensaje.aspx.cs" Inherits="Examen01_PrograV.Pages.Mensaje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Proceso Finalizado</h1>
    <div>
        Se ha completado correctamente el registro de un nuevo producto en la base de datos
    </div>
    <asp:Button class="cancel" ID="btnReturn" runat="server"  Text="Regresar" OnClick="btnReturn_Click" />
</asp:Content>
