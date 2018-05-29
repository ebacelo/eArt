<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eArt.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table {
            padding: 3px;
        }

        td {
            padding: 2px;
        }

        .alt {
            background-color: chocolate;
        }

        .sep {
            border-bottom: 3px solid blue;
            margin-bottom: 5px;
        }

        .block {
            display: block;
        }
        .titulo {
            font-size: 17px;
            color: maroon;
        }
        .autor {
            font-size: 14px;
            color: brown;
            margin-bottom: 4px;
        }
        .pie_imagen {
            margin-top: 2px;
            margin-bottom: 25px;
            line-height: 1.2;
        }
        .pie {
            background-color: lightgray;
            color: darkolivegreen;
        }
        .pie a {
            color: darkslategrey;
        }

    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand text-warning lead" href="#">eArt</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Categorias</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
<%--    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>--%>
  </div>
</nav>


        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>

                        <div class="col-xs-12 col-md-6" >
                            <div class="img-responsive text-center">
                                <asp:ImageButton runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("UrlImagen") %>' OnClick="ImageButton1_Click" />
                                <br />
                                <div class="pie_imagen">
<%--                                    <asp:ImageButton CssClass="img-fluid" ID="ImageButton1" runat="server" ImageUrl='<%# Eval("UrlImagen") %>' OnClick="ImageButton1_Click" />--%>
                                    <asp:Label runat="server"  CssClass="titulo" ID="lblTitulo" Text='<%# Eval("Titulo") %>' /><br />
<%--                                    <asp:Label runat="server" CssClass="autor" ID="lblAutor" Text='<%# Eval("Autor") %>' />--%>
                                </div>
                            </div>
                        </div>

<%--                        <div class="col-lg-6 mx-auto text-center">
                            <asp:ImageButton CssClass="img-fluid" ID="imgBtn1" runat="server" ImageUrl='<%# Eval("UrlImagen") %>' OnClick="ImageButton1_Click" />
                            <asp:Label CssClass="block" ID="lbl1" runat="server" Text='<%# Eval("Titulo") %>' />
                        </div>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

      <!--Footer-->
      <footer class="page-footer font-small stylish-color-dark pt-4 mt-4 pie">
      
          <!--Footer Links-->
          <div class="container text-center text-md-left">
      
              <!-- Footer links -->
              <div class="row text-center text-md-left mt-3 pb-3">
      
                  <!--First column-->
                  <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mt-4">
                      <h6 class="lead mb-4 font-weight-bold">eArt</h6>
                      <p>This is a brand new online gallery where you can exhibit your pieces of art. Young artists are welcome to our place, and
                          we encourage them to show us their work to try to find the right place to show their creations to the world. 
                      </p>
                  </div>
                  <!--/.First column-->
      
                  <hr class="w-100 clearfix d-md-none" />
      
                  <!--Second column-->
<%--                  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
                      <p><a href="#!">MDBootstrap</a></p>
                      <p><a href="#!">MDWordPress</a></p>
                      <p><a href="#!">BrandFlow</a></p>
                      <p><a href="#!">Bootstrap Angular</a></p>
                  </div>--%>
                  <!--/.Second column-->
      
                  <hr class="w-100 clearfix d-md-none" />
      
                  <!--Third column-->
 <%--                 <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                      <h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
                      <p><a href="#!">Your Account</a></p>
                      <p><a href="#!">Become an Affiliate</a></p>
                      <p><a href="#!">Shipping Rates</a></p>
                      <p><a href="#!">Help</a></p>
                  </div>--%>
                  <!--/.Third column-->
      
                  <hr class="w-100 clearfix d-md-none" />
      
                  <!--Fourth column-->
                  <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mt-4">
                      <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                      <p><i class="fa fa-home mr-3"></i> New York, NY 10012, US</p>
                      <p><i class="fa fa-envelope mr-3"></i> info@gmail.com</p>
                      <p><i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                      <p><i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
                  </div>
                  <!--/.Fourth column-->
      
              </div>
              <!-- Footer links -->
      
              <hr/>
      
              <div class="row py-3 d-flex align-items-center">
      
                  <!--Grid column-->
                  <div class="col-md-8 col-lg-8">
      
                      <!--Copyright-->
                      <p class="text-center text-md-left grey-text">© 2018 Copyright: <a href="https://mdbootstrap.com/material-design-for-bootstrap/"><strong>eArt</strong></a></p>
                      <!--/.Copyright-->
      
                  </div>
                  <!--Grid column-->
      
                  <!--Grid column-->
                  <div class="col-md-4 col-lg-4 ml-lg-4">
      
                      <!--Social buttons-->
                      <div class="text-center text-md-right">
                          <ul class="list-unstyled list-inline">
                              <li class="list-inline-item"><a class="btn-floating btn-sm rgba-white-slight mx-1"><i class="fa fa-facebook"></i></a></li>
                              <li class="list-inline-item"><a class="btn-floating btn-sm rgba-white-slight mx-1"><i class="fa fa-twitter"></i></a></li>
                              <li class="list-inline-item"><a class="btn-floating btn-sm rgba-white-slight mx-1"><i class="fa fa-google-plus"></i></a></li>
                              <li class="list-inline-item"><a class="btn-floating btn-sm rgba-white-slight mx-1"><i class="fa fa-linkedin"></i></a></li>
                          </ul>
                      </div>
                      <!--/.Social buttons-->
      
                  </div>
                  <!--Grid column-->
      
              </div>
      
          </div>
      
      </footer>
      <!--/.Footer-->

        <%--            <table>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" >
                <ItemTemplate>
                    <tr>
                        <td>Id:</td>
                
                    <td><asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' /></td>
                    </tr>
                    <tr>
                    <td>Titulo:</td>
                    <td><asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' /></td>
                    </tr>
                    <tr>
                    <td>IdAutor:</td>
                    <td><asp:Label ID="IdAutorLabel" runat="server" Text='<%# Eval("IdAutor") %>' /></td>
                    </tr>
                    <tr>
                    <td>FechaRegistro:</td>
                    <td><asp:Label ID="FechaRegistroLabel" runat="server" Text='<%# Eval("FechaRegistro") %>' /></td>
                    </tr>
                    <tr>
                    <td>Descripcion:</td>
                    <td><asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' /></td>
                    </tr>
                    <tr>
                    <td>UrlImagen:</td>
                    <td><asp:Label ID="UrlImagenLabel" runat="server" Text='<%# Eval("UrlImagen") %>' /></td>
                    </tr>
                    <tr>
                    <td>Precio:</td>
                    <td><asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' /></td>
                    </tr>
                    <tr class="sep">
                    <td>IdCategoria:</td>
                    <td><asp:Label ID="IdCategoriaLabel" runat="server" Text='<%# Eval("IdCategoria") %>' /></td>
                    </tr>
                
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <tr>
                        <td>Id:</td>
                
                    <td><asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' /></td>
                    </tr>
                    <tr>
                    <td>Titulo:</td>
                    <td><asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' /></td>
                    </tr>
                    <tr>
                    <td>IdAutor:</td>
                    <td><asp:Label ID="IdAutorLabel" runat="server" Text='<%# Eval("IdAutor") %>' /></td>
                    </tr>
                    <tr>
                    <td>FechaRegistro:</td>
                    <td><asp:Label ID="FechaRegistroLabel" runat="server" Text='<%# Eval("FechaRegistro") %>' /></td>
                    </tr>
                    <tr>
                    <td>Descripcion:</td>
                    <td><asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' /></td>
                    </tr>
                    <tr>
                    <td>UrlImagen:</td>
                    <td><asp:Label ID="UrlImagenLabel" runat="server" Text='<%# Eval("UrlImagen") %>' /></td>
                    </tr>
                    <tr>
                    <td>Precio:</td>
                    <td><asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' /></td>
                    </tr>
                    <tr class="sep">
                    <td>IdCategoria:</td>
                    <td><asp:Label ID="IdCategoriaLabel" runat="server" Text='<%# Eval("IdCategoria") %>' /></td>
                    </tr>

                </AlternatingItemTemplate>
            </asp:DataList>
          </table>  --%>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eArt_DBConnectionString %>" SelectCommand="spObtenerElementos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


    </form>

    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/popper.js"></script>
    <script src="Scripts/popper-utils.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>
