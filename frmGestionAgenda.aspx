<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmGestionAgenda.aspx.cs" Inherits="Nanus.Phonebook.Company.Presentacion.frmGestionAgenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="GestionAgenda">
        <h1 class="GestionAgenda-title">Gestión de Agenda
        </h1>
        <div class="GestionAgenda-header">
            <p class="GestionAgenda-p u-p">
                <asp:TextBox ID="txbBuscar" placeholder="Buscar por nombre" CssClass="u-txb" runat="server"></asp:TextBox>
                <asp:Button runat="server" ID="btnBuscar" CssClass="u-btn" Text="Buscar" />
                <asp:Button runat="server" ID="btnNuevo" CssClass="u-btn" Text="Nuevo" OnClick="btnNuevo_Click" />
            </p>
        </div>
        <asp:Panel ID="pnlAgenda" Visible="false" runat="server" CssClass="GestionAgenda-itemNuevo" GroupingText="Nueva Agenda" BorderStyle="None">
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Codigo</span>
                <asp:Label runat="server" ID="lblCodigo" CssClass="GestionAgenda-lblCodigo GestionAgenda-lbl u-lbl" Text="00000"></asp:Label>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Nombre</span>
                <asp:TextBox runat="server" ID="txbNombre" placeholder="Requerido" CssClass="GestionAgenda-txb u-txb" TabIndex="1"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Area</span>
                <asp:DropDownList ID="ddlArea" CssClass="u-ddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlArea_SelectedIndexChanged" TabIndex="2"></asp:DropDownList>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Cargo</span>
                <asp:DropDownList ID="ddlCargo" CssClass="u-ddl" runat="server" TabIndex="3"></asp:DropDownList>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Ubicación</span>
                <asp:DropDownList ID="ddlUbicacion" CssClass="u-ddl" runat="server" TabIndex="4"></asp:DropDownList>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Email :</span>
                <asp:TextBox runat="server" ID="txbEmail" placeholder="No tiene" CssClass="GestionAgenda-txb u-txb" TabIndex="5" TextMode="Email"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Linea directa</span>
                <asp:TextBox runat="server" ID="txbLineaDirecta" placeholder="No tiene" CssClass="GestionAgenda-txb u-txb" TabIndex="6" TextMode="Phone"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Interno</span>
                <asp:TextBox runat="server" ID="txbInterno" placeholder="No tiene" CssClass="GestionAgenda-txb u-txb" TabIndex="7" TextMode="Phone"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Corporativo</span>
                <asp:TextBox runat="server" ID="txbCorporativo" placeholder="No tiene" CssClass="GestionAgenda-txb u-txb" TabIndex="8" TextMode="Phone"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                <span class="GestionAgenda-lbl u-lbl">Acceso Directo</span>
                <asp:TextBox runat="server" ID="txbAccesoDirecto" placeholder="No tiene" CssClass="GestionAgenda-txb u-txb" TabIndex="9" TextMode="Phone"></asp:TextBox>
            </p>
            <p class="GestionAgenda-p u-p">
                &nbsp;<asp:FileUpload ID="fuFoto" runat="server" TabIndex="10" />
            </p>
            <p class="GestionAgenda-p u-p">
                <asp:Button runat="server" ID="btnGuardar" CssClass="u-btn" Text="Guardar" TabIndex="11" OnClick="btnGuardar_Click" />
                <asp:Button runat="server" ID="btnCancelar" CssClass="u-btn" Text="Cancelar" OnClick="btnCancelar_Click" TabIndex="12" />
            </p>
        </asp:Panel>
        <asp:Panel ID="pnlGvAgenda" runat="server" Width="100%">
            <span class="GestionAgenda-lbl u-lbl">Foto</span><asp:GridView ID="gvAgenda" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" AllowPaging="True" Font-Size="8pt" PageSize="5" OnPageIndexChanging="gvAgenda_PageIndexChanging" OnRowCancelingEdit="gvAgenda_RowCancelingEdit" OnRowDeleting="gvAgenda_RowDeleting" OnRowEditing="gvAgenda_RowEditing" OnRowUpdating="gvAgenda_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Imagen">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("ImagenRuta") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagenRuta") %>' Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Font-Size="10pt" Text="Editar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Font-Size="10pt" Text="Eliminar"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Codigo">
                        <EditItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("IdAgenda") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Codigo") %>'></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("IdAgenda") %>' />
                        </ItemTemplate>
                        <ItemStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="200px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="200px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Habilitado">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Habilitado") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Habilitado") %>' Enabled="False" />
                        </ItemTemplate>
                        <ItemStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="L. Directa">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("LineaDirecta") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("LineaDirecta") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Interno">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Interno") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Interno") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Corporativo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Corporativo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Corporativo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="A. Directo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("AccesoDirecto") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("AccesoDirecto") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Area">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Cargo.Area.IdArea") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Cargo.Area.Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="200px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cargo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("IdCargo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Cargo.Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="200px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ubicacion">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdUbicacion") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ubicacion.Descripcion") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="30px" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>

