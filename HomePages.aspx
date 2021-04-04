<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePages.aspx.cs" Inherits="HomePages.HomePages" %>

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
                    <h4>Modulo Facturacion</h4>
                    <div class="container">
                        <!--label numero factura-->
                        <asp:Label runat="server" ID="Lbl_Numero_factura" Class="lblRed">Fac:000023</asp:Label>

                        <asp:TextBox runat="server" Class="border_txt" ID="txt_fecha_ingreso_factura" TextMode="Date" Style="position: relative; left: 70%"></asp:TextBox>
                        <div class="d-flex flex-wrap justify-content-center py-2 mb-1 border-bottom"></div>

                        <!--zone txt-->
                        <div class="row">
                            <div class="column">
                                <label id="lbl_nombre">Nombre(*)   :</label>
                                <asp:TextBox runat="server" ID="txt_nombre_cliente" Width="40%" Class="border_txt"></asp:TextBox>

                                <label id="lbl_cedula">Cedula:</label>
                                <asp:TextBox runat="server" ID="txt_cedula_cliente" TextMode="Number" Class="border_txt" Width="20%"></asp:TextBox>
                            </div>
                        </div>



                        <div class="row" style="position: relative; margin-top: 2%">
                            <div class="column">
                                <label id="lbl_direccion">Direccion(*):</label>
                                <asp:TextBox runat="server" ID="txt_direccion_cliente" Class="border_txt" Width="40%"></asp:TextBox>

                                <label id="lbl_telefono">Cel (*)  :</label>
                                <asp:TextBox runat="server" ID="txt_telefono_cliente" TextMode="Number" Class="border_txt" MaxLength="10" Width="20%"></asp:TextBox>
                            </div>
                        </div>

                        <div style="margin-top:3%;background-color:grey"  >
                            <p style="color:white;text-align:center;border-radius:8px   ">Detalle</p>
                            <asp:GridView runat="server" AutoGenerateColumns="false" class="table table-bordered">
                                <Columns>
                                    <asp:BoundField HeaderText="Articulo" />
                                    <asp:BoundField HeaderText="Cantidad" />
                                    <asp:BoundField HeaderText="Valor Unitario" />
                                    <asp:BoundField HeaderText="Total" />
                                </Columns>
                            </asp:GridView>
                        </div>

                        <div style="position: relative; margin-top: 20%; left: 70%">
                            <asp:Label runat="server" ID="Lbl_total" Class="lblRed">Total:</asp:Label>
                        </div>

                        <div style="position: relative; margin-top: 1px">
                            <div class="d-flex flex-wrap justify-content-center py-2 mb-1 border-bottom"></div>
                            <asp:Label runat="server" ID="Label1" Style="color: grey">Campos Obligatorios(*)</asp:Label>
                            <asp:Button runat="server" class="btn btn-success" Style="position: relative; left: 70%" Text="Continuar >>>" OnClick="Onpress" />
                        </div>

                    </div>
                </main>
            </div>
        </div>
    </form>
</body>
</html>
