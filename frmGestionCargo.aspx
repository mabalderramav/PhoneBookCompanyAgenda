<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmGestionCargo.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion.frmGestionCargo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat ="server" ID="pnlGestionCargo">
        <h1>Gestion de Cargo</h1>
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
                <span class="u-lbl">Area</span>
                <asp:DropDownList ID="ddlArea" CssClass="u-ddl" runat="server"  TabIndex="2"></asp:DropDownList>
            </p>
            <p class="u-p">
                <asp:Button runat="server" ID="btnGuardar" CssClass="u-btn" Text="Guardar" TabIndex="3" OnClick="btnGuardar_Click" />
            </p>
        </div>
        <asp:GridView ID="gvCargo" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvCargo_PageIndexChanging" OnRowCancelingEdit="gvCargo_RowCancelingEdit" OnRowEditing="gvCargo_RowEditing" OnRowUpdating="gvCargo_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("IdCargo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Codigo">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cargo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" placeholer="Requerido" CausesValidation="True" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo requerido" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Area">
                    <EditItemTemplate>
                         <asp:DropDownList ID="ddlAreaEdit" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="IdArea" SelectedValue='<%# Bind("IdArea") %>' AutoPostBack="False">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPhonebookCompanyConnectionString %>" SelectCommand="SELECT [IdArea], [Descripcion] FROM [Area]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Area.Descripcion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CssClass="u-lbtn" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="u-lbtn" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" CssClass="u-lbtn" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
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
    </asp:Panel>
</asp:Content>
