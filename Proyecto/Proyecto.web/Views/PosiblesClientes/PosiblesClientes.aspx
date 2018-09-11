<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Index.Master" AutoEventWireup="true" CodeBehind="PosiblesClientes.aspx.cs" Inherits="Proyecto.web.Views.PosiblesClientes.PosiblesClientes" %>

<asp:Content ID="contentheader" ContentPlaceHolderID="header" runat="server">

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="mt-auto mt-5">
        <%-- Primera Seccion --%>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <h1>
                        <b>Posibles Clientes</b>
                        <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>

                    </h1>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblIdentificacion" Text="Identificacion"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIdentificacion" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblEmpresa" Text="Empresa"></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmpresa" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblPrimerNombre" Text="Primer Nombre"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblSegundoNombre" Text="Segundo Nombre"></asp:Label>
                    <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>


        <%-- Segunda seccion --%>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblPrimerApellido" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblSegundoApellido" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblDireccion" Text="Direccion"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblTelefono" Text="Telefono"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>

        <%-- tercera seccion --%>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <asp:Label runat="server" ID="lblCorreo" Text="Correo"></asp:Label>
                    <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>

        <%-- Cuarta seccion --%>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <asp:Button runat="server" ID="btnGuardar" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
                    <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" CssClass="btn btn-primary" OnClick="btnCancelar_Click" />
                </div>
            </div>
        </div>

        <%-- Quinta seccion --%>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <h3>
                        <b>Resultado</b>
                    </h3>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12" style="overflow: auto">
                    <asp:GridView runat="server" ID="gvwDatos" Width="100%" AutoGenerateColumns="False" EmptyDataText="No hay resultados" Height="163px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="gvwDatos_RowCommand">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <%-- representacion de datos en controles web --%>
                            <asp:TemplateField HeaderText="Identificacion">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblIdentificacion" Text='<%# Bind("clielidentificacion")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%-- representacion de datos en celdas --%>
                            <asp:BoundField HeaderText="Empresa" DataField="clieEmpresa" />
                            <asp:BoundField HeaderText="Primer Nombre" DataField="cliePrimerNombre" />
                            <asp:BoundField HeaderText="Segundo Nombre" DataField="clieSegundoNombre" />
                            <asp:BoundField HeaderText="Primer Apellido" DataField="cliePrimerApellido" />
                            <asp:BoundField HeaderText="Segundo Apellido" DataField="clieSegundoApellido" />
                            <asp:BoundField HeaderText="Direccion" DataField="cliDireccion" />
                            <asp:BoundField HeaderText="Telefono" DataField="clieTelefono" />
                            <asp:BoundField HeaderText="Correo" DataField="clieCorreo" />

                            <%--Editar--%>
                            <asp:TemplateField HeaderText="Editar">
                                <ItemTemplate>
                                   <asp:ImageButton ID="ibEditar" runat="server" ImageUrl="~/Resources/Images/Editar.png" CommandName="Editar" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                             <%--Eliminar--%>
                            <asp:TemplateField HeaderText="Eliminar">
                                <ItemTemplate>
                                   <asp:ImageButton ID="ibEliminar" runat="server" ImageUrl="~/Resources/Images/Eliminar.jpg" CommandName="Eliminar" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>



                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
