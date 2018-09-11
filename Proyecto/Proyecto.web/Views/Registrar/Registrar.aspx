<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto.web.Views.Registrar.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

        <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <title>Register</title>
    <!-- Bootstrap core CSS-->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template-->
    <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin.css" rel="stylesheet" />
    <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" />
    <script src="../../js/sweetalert.min.js" type="text/javascript"></script>

</head>
<body class="bg-dark">

    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Registrar Cuenta</div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="lblnombre" runat="server" Text="Primer Nombre"></asp:Label>
                                    <asp:TextBox ID="txtnombre1" runat="server" class="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="lblnombre2" runat="server" Text="Segundo Nombre"></asp:Label>
                                    <asp:TextBox ID="txtnombre2" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="lblcontraseña" runat="server" Text="Contraseña"></asp:Label>
                                    <asp:TextBox ID="txtcontraseña1" runat="server" textmode="Password" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="lblcontraseña2" runat="server" Text="Confirme la Contraseña"></asp:Label>
                                    <asp:TextBox ID="txtcontraseña2" runat="server" textmode="Password" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary btn-block" Text="Registrar" OnClick="btnAceptar_Click" />
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="../Login/Login.aspx">Login Page</a>
                    <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>



</body>
</html>
