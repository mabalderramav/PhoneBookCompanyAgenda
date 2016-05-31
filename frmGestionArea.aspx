<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmGestionArea.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion.frmGestionArea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Gestion de Area</h1>
        <div class="u-div">
            <p class="u-p">
                <span class="u-lbl">Codigo</span>
                <asp:Label runat="server" ID="lblCodigo" CssClass="u-lbl" Text="00000"></asp:Label>
            </p>
            <p class="u-p">
                <span class="u-lbl">Nombre</span>
                <asp:TextBox runat="server" ID="txbNombre" placeholder="Requerido" CssClass="u-txb" TabIndex="1"></asp:TextBox>
            </p>
            <p class="u-p">
                <asp:Button runat="server" ID="btnGuardar" CssClass="u-btn" Text="Guardar" TabIndex="2" OnClick="btnGuardar_Click" />
            </p>
        </div>
        <asp:GridView ID="gvArea" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="gvArea_RowCancelingEdit" OnRowEditing="gvArea_RowEditing" OnRowUpdating="gvArea_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("IdArea") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("IdArea") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Codigo">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Descripción">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" placeholer="Requerido" runat="server" Text='<%# Bind("Descripcion") %>' CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo requerido" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CssClass="u-lbtn" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="u-lbtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CssClass="u-lbtn" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>
</asp:Content>
