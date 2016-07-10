<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="pnlRadioButton">
        <p>
            <asp:RadioButton ID="rbtnNombre" runat="server" Text="Nombre" Checked="True" AutoPostBack="True" OnCheckedChanged="rbtnNombre_CheckedChanged" />
            <asp:RadioButton ID="rbtnArea" runat="server" Text="Area" AutoPostBack="True" OnCheckedChanged="rbtnArea_CheckedChanged" />
            <asp:RadioButton ID="rbtnCargo" runat="server" Text="Cargo" AutoPostBack="True" OnCheckedChanged="rbtnCargo_CheckedChanged" />
            <asp:RadioButton ID="rbtnUbicacion" runat="server" Text="Ubicación" AutoPostBack="True" OnCheckedChanged="rbtnUbicacion_CheckedChanged" />
            <asp:LinkButton ID="lbtnMostrarTodos" CssClass="u-lbtn" runat="server" OnClick="lbtnMostrarTodos_Click">Mostrar Todos</asp:LinkButton>
            <asp:LinkButton ID="lbtnLimpiar" CssClass="u-lbtn" runat="server" OnClick="lbtnLimpiar_Click">Limpiar</asp:LinkButton>
        </p>
    </asp:Panel>
    <asp:Panel ID="pnlNombre" runat="server" Visible="true">
        <div>
            <p>
                <span>Buscar por: </span>
                <asp:TextBox ID="txbCriterio" CssClass="u-txb" placeholder="Nombre" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscar" CssClass="u-btn" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            </p>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlCargo" runat="server" Visible="False">
        <div>
            <p>Busqueda por Cargo</p>
            <asp:DropDownList ID="ddlCargo" runat="server"></asp:DropDownList>
            <asp:Button ID="bntBuscarCargo" CssClass="u-btn" runat="server" Text="Buscar" OnClick="bntBuscarCargo_Click"/>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlArea" runat="server" Visible="False">
        <div>
            <p>Busqueda por Area</p>
            <asp:DropDownList ID="ddlArea" runat="server"></asp:DropDownList>
            <asp:Button ID="btnBuscarArea" CssClass="u-btn" runat="server" Text="Buscar" OnClick="btnBuscarArea_Click"/>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlUbicacion" runat="server" Visible="False">
        <div>
            <p>Busqueda por Ubicación</p>
            <asp:DropDownList ID="ddlUbicacion" runat="server"></asp:DropDownList>
            <asp:Button ID="btnBuscarUbicacion" CssClass="u-btn" runat="server" Text="Buscar" OnClick="btnBuscarUbicacion_Click"/>
        </div>
    </asp:Panel>
    <asp:DataList ID="dlAgenda" runat="server" Width="900px" RepeatColumns="4" OnItemDataBound="dlAgenda_ItemDataBound">
        <ItemTemplate>
            <div class="Agenda">
                <figure class="Agenda-imagenContainer">
                    <asp:Image ID="Image1" runat="server" CssClass="Agenda-imagen" ImageUrl='<%# Bind("ImagenRuta") %>' />
                </figure>
                <p class="Agenda-itemContainer Agenda-itemContainerCodigo">
                    <asp:Label ID="lblCodigo" runat="server" CssClass="Agenda-item" Text='<%# Bind("Codigo") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer Agenda-itemContainerNombre">
                    <asp:Label runat="server" ID="lblNombre" CssClass="Agenda-item" Text='<%# Bind("Nombre") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Email: </span>
                    <asp:Label runat="server" ID="lblEmail" CssClass="Agenda-item" Text='<%# Bind("Email") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <%--<span class="Agenda-itemLabel">T. Personal: </span>--%>
                    <asp:Label runat="server" ID ="lblLineaDirectaLabel" CssClass="Agenda-itemLabel" Text="T. Personal:"></asp:Label>
                    <asp:Label runat="server" ID="lblLineaDirecta" CssClass="Agenda-item" Text='<%# Bind("LineaDirecta") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Interno: </span>
                    <asp:Label runat="server" ID="lblInterno" CssClass="Agenda-item Agenda-itemSelect" Text='<%# Bind("Interno") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Corporativo: </span>
                    <asp:Label runat="server" ID="lblCorporativo" CssClass="Agenda-item" Text='<%# Bind("Corporativo") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Acceso Directo: </span>
                    <asp:Label runat="server" ID="lblAccesoDirecto" CssClass="Agenda-item" Text='<%# Bind("AccesoDirecto") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Area: </span>
                    <asp:Label runat="server" ID="lblArea" CssClass="Agenda-item" Text='<%# Bind("Cargo.Area.Descripcion") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Cargo :</span>
                    <asp:Label runat="server" ID="lblCargo" CssClass="Agenda-item" Text='<%# Bind("Cargo.Descripcion") %>'></asp:Label>
                </p>
                <p class="Agenda-itemContainer">
                    <span class="Agenda-itemLabel">Ubicación :</span>
                    <asp:Label runat="server" ID="lblUbicacion" CssClass="Agenda-item" Text='<%# Bind("Ubicacion.Descripcion") %>'></asp:Label>
                </p>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
