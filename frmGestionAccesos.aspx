<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmGestionAccesos.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion.frmGestionAccesos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 309px;
        }

        .auto-style3 {
            width: 70px;
            text-align: center;
        }
        .auto-style4 {
            width: 112px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server">
        <asp:Panel ID="pnlGestionAcceso" runat="server">
            <h1>Gestión de Acceso</h1>
            <h3>Rol</h3>
            <asp:DropDownList ID="ddlRol" runat="server" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="ddlRol_SelectedIndexChanged">
            </asp:DropDownList>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h3>Accesos Disponibles</h3>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <h3>Accesos Asociados</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ListBox ID="lbAccesosDisponibles" runat="server" Width="300px" Height="200px" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnDerecha" CssClass="u-btn" runat="server" Text=">>" OnClick="btnDerecha_Click" />
                        <br />
                        <asp:Button ID="btnIzquierda" CssClass="u-btn" runat="server" Text="<<" OnClick="btnIzquierda_Click" />
                    </td>
                    <td>
                        <asp:ListBox ID="lbAccesosAsociados" runat="server" Width="300px" Height="200px" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                </tr>
            </table>
            <div>
                <asp:Button ID="btnRegistrar" CssClass="u-btn" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            </div>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
