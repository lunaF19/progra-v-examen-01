<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.cs" Inherits="Examen01_PrograV.Pages.CrearProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <section>
        <header>
            <p><strong style="">Crear Producto</strong></p>
        </header>

        <div>
           
            <asp:Label style="color: red;" ID="lblMessageError" runat="server" Text=""></asp:Label>
            <label>
                <strong>Nombre del Producto:</strong>
                <br />
                <asp:TextBox type="text" placeholder="Producto #1" ID="txtNombreProducto" runat="server"></asp:TextBox>
            </label>

            <label>
                <strong>Cantidad:</strong>
                <br />
                <asp:TextBox type="number" placeholder="1" ID="txtCanitdad" runat="server"></asp:TextBox>
            </label>


            <label>
                <strong>Precio Unitario:</strong>
                <br />
                <asp:TextBox type="number" placeholder="1000" ID="txtPrecioVenta" runat="server"></asp:TextBox>
                </label>

            <div>
                <asp:Button ID="btnSave" runat="server"  Text="Guardar" OnClick="btnSave_Click" />
                <asp:Button class="cancel" ID="btnCancel" runat="server"  Text="Cancel" OnClick="btnCancel_Click" />

            </div>
        </div>

    </section>

    </main>
   
</asp:Content>
