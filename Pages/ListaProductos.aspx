<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Examen01_PrograV.Pages.ListaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de Productos</h1>
    <asp:Button ID="btnGoToCreateProduct" runat="server" Text="Crear Producto" OnClick="btnGoToCreateProduct_Click" />
    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="3" OnPageIndexChanging="gvProducts_PageIndexChanging" OnRowDataBound="gvProducts_RowDataBound" CssClass="table table-bordered table-hover text-center">
        <Columns>
            <%-- 
                [1pts] Debe de mostrar el id del producto como primera columna 
                (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “ID”. Este dato lo provee el procedimiento almacenado 
                que le entrega los datos de la base de datos. 
            --%>
            <asp:BoundField  DataField="idProducto" HeaderText="ID"/>

            <%-- 
                [1pts] Debe de mostrar el nombre del producto como segunda columna 
                (de izquierda a  derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Producto”. Este dato lo provee el procedimiento almacenado                 que le entrega los datos de la base de datos.            --%>
            <asp:BoundField  DataField="nombre" HeaderText="Producto"/>

            <%-- 
                [1pts] Debe de mostrar la fecha de registro como tercera columna 
                (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Fecha registro”. Este dato lo provee el procedimiento almacenado 
                que le entrega los datos de la base de datos
            --%>
            <asp:BoundField  DataField="fechaRegistro" HeaderText="Fecha registro"/>

            <%-- 
                [1pts] Debe de mostrar la cantidad de productos como cuarta columna 
                (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Cantidad”. Este dato lo provee el procedimiento almacenado
                que le entrega los datos de la base de datos.
            --%>
            <asp:BoundField  DataField="cantidad" HeaderText="Cantidad" />


            <%-- 
                [1pts] Debe de mostrar el precio unitario de cada producto como quinta 
                columna (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Precio unitario”. Este dato lo provee el procedimiento almacenado 
                que le entrega los datos de la base de datos. 
             --%>
            <asp:BoundField  DataField="precioUnitario" HeaderText="Precio unitario"/>


            <%-- 
                [3pts] Debe de mostrar el costo total de los productos como sexta columna 
                (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Costo total”. Este dato no provee el procedimiento almacenado, 
                pero lo puede calcular a partir de la multiplicación de los valores de las columnas “cantidad” y “precioUnitario”.
            --%>
             <asp:TemplateField HeaderText="Costo Total">
                 
                <ItemTemplate>
                    <asp:Label ID="costoTotal" runat="server" Text=""></asp:Label>
                    <%--<%# Bind("precioUnitario") %>--%>
                    <%--<%# Bind("canitdad") %>--%>
                </ItemTemplate>
            </asp:TemplateField>

            <%-- 
                [2pts] Debe de mostrar el estado de cada producto como séptima columna 
                (de izquierda a derecha) y el encabezado de dicha columna debe 
                de mostrar el texto “Estado”. Este dato no provee el procedimiento almacenado, 
                pero lo puede obtener al evaluar la “cantidad” de productos, si la cantidad es 
                menor o igual a cero, entonces debe de mostrar el texto “No disponible”, 
                pero si la “cantidad” de productos es mayor a cero, debe de mostrar el texto “Disponible”.
            --%>

            <asp:TemplateField HeaderText="Estado">
                <ItemTemplate>
                     <asp:Label ID="estado" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField  HeaderText="Estado"/>--%>

        </Columns>
    </asp:GridView>
</asp:Content>
