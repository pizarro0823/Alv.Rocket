<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarFactura.aspx.cs" Inherits="HomePages.ConsultarFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- CSS only -->
    <link href="Style/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Style/css/style1.css" rel="stylesheet" type="text/css" />
    <!-- JavaScript Bundle with Popper -->
    <script src="Style/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                    <span class="fs-4">Alvidrios Home</span>
                </a>

                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="#" class="nav-link">Login</a></li>
                </ul>
            </header>
        </div>


        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-m3 col-lg-2 d-md-block bg-light sidebar collapsed">
                    <div class="position-sticky pt-3">
                    </div>
                </nav>
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <h4>Consultar Facturacion</h4>
                    <div class="d-flex flex-wrap justify-content-center py-2 mb-1 border-bottom"></div>
                    <div class="container">
                        <!--label numero factura-->
                        <asp:Label runat="server" ID="Lbl_filtro">Filtrar por:</asp:Label>
                        <!--zone txt-->
                        <div class="row" style="margin-top: 2%">
                            <div class="column">
                                <label id="lbl_Factura">N°Factura:</label>
                                <asp:TextBox runat="server" ID="txt_numFactura" Width="20%" Class="border_txt"></asp:TextBox>

                                <label id="lbl_nombre">Nombre:</label>
                                <asp:TextBox runat="server" ID="txt_nombre" Class="border_txt" Width="20%"></asp:TextBox>

                                <label id="lbl_cedula">Cedula</label>
                                <asp:TextBox runat="server" ID="txt_cedula" Class="border_txt" Width="20%"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row" style="position: relative; margin-top: 2%">
                            <div class="column">
                                <label id="lbl_fecha">Fecha desde:</label>
                                <asp:TextBox runat="server" ID="txt_fecha_desde" TextMode="Date" Class="border_txt" Width="13%"></asp:TextBox>

                                <label id="lbl_telefono">Hasta:</label>
                                <asp:TextBox runat="server" ID="txt_fecha_hasta" TextMode="date" Class="border_txt" MaxLength="10" Width="13%"></asp:TextBox>

                                <label id="lbl_combo">Condiciones:</label>
                                <asp:DropDownList runat="server" Width="20%"></asp:DropDownList>
                            </div>
                        </div>

                        <asp:GridView runat="server" ID="grid" Style="margin-top: 30px" AutoGenerateColumns="False" class="table">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="N°Fac" DataField="nFactura"  ReadOnly="True" />
                                <asp:BoundField HeaderText="Nombre" DataField="nombre" ReadOnly="True" />
                                <asp:BoundField HeaderText="Cedula" DataField="cedula" ReadOnly="True" />
                                <asp:BoundField HeaderText="Direccion" DataField="direccion" ReadOnly="True" />
                                <asp:BoundField HeaderText="Valor" DataField="valor" ReadOnly="True" />
                                <asp:ButtonField Text="Abono" ButtonType="Image">
                                    <ControlStyle Height="20px" Width="80px" />
                                    <ItemStyle BackColor="#FCC007" BorderColor="Black" CssClass="botones" />
                                </asp:ButtonField>
                                <asp:ButtonField Text="Editar" ButtonType="Image">
                                    <ControlStyle Height="20px" Width="80px" />
                                    <ItemStyle BackColor="#FCC007" BorderColor="Black" CssClass="botones" />
                                    <ItemStyle BackColor="#27A745" BorderColor="Black" />
                                </asp:ButtonField>
                                <asp:ButtonField Text="Detalle" ButtonType="Image">
                                    <ControlStyle Height="20px" Width="80px" />
                                    <ItemStyle BackColor="#FCC007" BorderColor="Black" CssClass="botones" />
                                    <ItemStyle BackColor="#017CF9" BorderColor="Black" />
                                </asp:ButtonField>
                                <asp:ButtonField Text="Eliminar " ButtonType="Image">
                                    <ControlStyle Height="20px" Width="80px" />
                                    <ItemStyle BackColor="#FCC007" BorderColor="Black" CssClass="botones" />
                                    <ItemStyle BackColor="#DA363F" BorderColor="Black" />
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>


                        <div style="margin-top:20%">
                            <asp:ImageButton runat="server" ID="Layout" AlternateText="Layout"/>
                        </div>

                    </div>
                </main>
            </div>
        </div>



    </form>
</body>
</html>
