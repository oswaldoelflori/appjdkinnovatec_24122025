<?php
ob_start();
session_start();
if(!isset($_SESSION["nombre"]))
{
  header("Location: login.html");
}
else
{
require_once("header.php");

if ($_SESSION['ventas']==1)
{
?>
<link rel="stylesheet" href="css/venta.css">
<!--Contenido-->
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">        
        <!-- Main content -->
        <section class="content">
            <div class="row">
              <div class="col-md-12">
                  <div class="box">
                    <div class="box-header with-border">
                          <h1 class="box-title">Venta <button class="btn btn-success" id="btnagregar" onclick="mostrarform(true)"><i class="fa fa-plus-circle"></i> Agregar</button></h1>
                        <div class="box-tools pull-right">
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- centro -->
                    <div class="panel-body table-responsive" id="listadoregistros">
                        <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                          <label>Fecha Inicio</label>
                          <input type="date" class="form-control" name="fecha_inicio" id="fecha_inicio" value="<?php echo date("Y-m-d"); ?>">
                        </div>
                        <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                          <label>Fecha Fin</label>
                          <input type="date" class="form-control" name="fecha_fin" id="fecha_fin" value="<?php echo date("Y-m-d"); ?>">
                        </div>
                        <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                          <label>&nbsp;</label>
                          <button class="form-control btn btn-success" id="btnFiltrar">Mostrar</button>
                        </div>
                        <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                          <label>&nbsp;</label>
                          <button class="form-control btn btn-danger" id="btnExportarPDF">Exportar PDF</button>
                        </div>
                        <table id="tbllistado" class="table table-striped table-bordered table-condensed table-hover">
                          <thead>
                            <th>Opciones</th>
                            <th>Fecha</th>
                            <th>Cliente</th>
                            <th>Usuario</th>
                            <th>Documento</th>
                            <th>Número</th>
                            <th>Total Venta</th>
                            <th>Forma Pago</th>
                            <th>Estado</th>
                          </thead>
                          <tbody>                            
                          </tbody>
                          <tfoot>
                          <th>Opciones</th>
                            <th>Fecha</th>
                            <th>Cliente</th>
                            <th>Usuario</th>
                            <th>Documento</th>
                            <th>Número</th>
                            <th>Total Venta</th>
                            <th>Forma Pago</th>
                            <th>Estado</th>
                          </tfoot>
                        </table>
                    </div>
                    <div class="panel-body" id="formularioregistros">

                        <form name="formulario" id="formulario" method="POST">
                        <div class="row">
                          <input type="hidden" name="idventa" id="idventa">
                          <div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            
                          <button type="button" class="btn btn-success btn-sm" onclick="abrirModalCliente()">
                            <i class="fa fa-user-plus"></i> Nuevo Cliente
                          </button>
                            <label>Cliente(*):</label>
                            
                           <select name="idcliente" id="idcliente" class="form-control selectpicker" data-live-search="true" required></select>
                          </div>
                          <div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <label>Serie:</label>
                            <input type="text" class="form-control" name="serie_comprobante" id="serie_comprobante" required>
                          </div>  
                          <div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <label>Número:</label>
                            <input type="text" class="form-control" name="num_comprobante" id="num_comprobante" maxlength="10" placeholder="Serie" required>
                          </div>
                          <div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <label>Impuesto:</label>
                            <input type="text" class="form-control" name="impuesto" id="impuesto" value="18" placeholder="Imp." required>%
                          </div>
                          <div class="form-group col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <label>Fecha:(*)</label>
                            <input type="date" class="form-control" name="fecha_hora" id="fecha_hora"  required>
                          </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                  <a data-toggle="modal" href="#modalAddSell">
                                  <button id="btnAgregarArt" type="button" class="btn btn-success" > <span class="fa fa-plus"></span>
                                  Agregar Vendedor</button></a>                               
                                  <hr>
                                  <a data-toggle="modal" href="#modalSearchCustomer">
                                  <button id="btnBuscarContacto" type="button" class="btn btn-info" > <span class="fa fa-plus"></span>
                                  Seleccionar Contacto</button></a>
                                  
                                    <table id="tablaDetalleContacto" class="table table-striped table-bordered table-condensed table-hover">
                                        <thead>
                                          <th>Nombre</th>
                                          <th>Apellido</th>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                  
                                
                            </div>
                          
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                              <label>Tipo Comprobante(*):</label>
                              <select name="tipo_comprobante" id="tipo_comprobante" class="form-control selectpicker" required>
                              <option selected value="Boleta">Venta</option>
                              </select>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <input type="text" class="form-control" name="quotation" id="quotation" placeholder="Nro. Comprobante">

                            <a data-toggle="modal" href="#MdlFindForQuotations">
                                  <button id="btnFindForQuotations" type="button" class="btn btn-info" > <span class="fa fa-plus"></span>
                                 Buscar Cotizaciones</button></a>
                              <a data-toggle="modal" href="#myModal">
                                <button id="btnAgregarArt" type="button" class="btn btn-primary" > <span class="fa fa-plus"></span>
                                Agregar Articulos</button>

                                </a>
                         </div>
                     
                          <!-- Forma de pago -->
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="row">
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12">
                              <label>Forma de Pago(*):</label>
                              <select name="forma_pago" id="forma_pago" class="form-control">
                                <option value="contado">Contado</option>
                                <option value="credito">Crédito</option>
                                 <option value="yape">Yape</option>
                                 <option value="plin">Plin</option>
                                 <option value="transferencia">Transferencia</option>
                              </select>
                            </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12 credit-fields" style="display:none;">
                                <label>Monto Pagado</label>
                                <input type="text" name="monto_pagado" id="monto_pagado" class="form-control" value="0">
                            </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12 credit-fields" style="display:none;">
                                <label>Fecha Vencimiento</label>
                                <input type="date" name="fecha_vencimiento" id="fecha_vencimiento" class="form-control">
                            </div>
                              <input type="hidden" name="saldo_pendiente" id="saldo_pendiente" value="0">
                          </div>
                        </div>

                        <div class="row credit-summary" style="display:none;">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <table class="table table-bordered table-condensed">
                              <thead>
                                <tr>
                                  <th>Monto Pagado</th>
                                  <th>Saldo Pendiente</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td id="info_monto_pagado"></td>
                                  <td id="info_saldo_pendiente"></td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>

                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="row">    
                          <!-- Sección visible solo si la forma de pago es "Crédito" -->
                          <div id="bloqueCredito" style="display: none; margin-top: 20px;">
                            <h4>Amortizaciones / Pagos a Crédito</h4>
                            <!-- Botón para abrir el modal de nuevo pago -->
                          <!-- Botón para abrir el modal de abono -->
                          <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12 credit-fields" style="display:none;">
                            <label>&nbsp;</label>
                            <button type="button" class="btn btn-success btn-block" id="btnAgregarPago">
                              <i class="fa fa-plus"></i> Registrar Abono
                            </button>
                          </div>
                          <div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-12 credit-fields" style="display:none;">
                            <label>&nbsp;</label>
                            <button type="button" class="btn btn-success btn-block" id="btnVerPagos">
                              <i class="fa fa-star"></i> Pagos
                            </button>
                          </div>
                           
                       
                          </div>
                        </div>

                        <!-- /Forma de pago -->
                        </div>
                        
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <table id="detalles" class="table table-striped table-bordered table-condensed table-hover">
                          <thead>
                          <th>Opciones</th>
                          <th class="TableHeadArticleName">Artículo</th>
                          <th>Cantidad</th>
                          <th>Precio Venta</th>
                          <th>Descuento</th>
                          <th>Subtotal</th>
                          </thead>
                        <!--  //pie -->
                        <tfoot>
                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>SubTotal</td>
                            <td><input placeholder="SubTotal" id="idSubtotal" name="txtSubTotal" value=""></td>
                          </tr>
                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>IGV</td>
                            <td><input placeholder="IGV" id="igv" name="txtIgv" value="" readonly ></td>
                          </tr>
                          <td></td>
                          <th></th>
                          <th></th>
                          <th></th>
                          <th></th>
                          <th>TOTAL</th>
                          <td><span class="total" id="total">S/ 0.00</span> <input type="hidden" name="total_venta" id="total_venta"> </td>
                          </tfoot>

                          <tbody>

                          </tbody>
                        </table>
                        </div>                                                                                      
                          <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                            <button class="btn btn-primary" type="submit" id="btnGuardar"><i class="fa fa-save"></i> Guardar</button>
                            <button id="btnCancelar" class="btn btn-danger" onclick="cancelarform()" type="button"><i class="fa fa-arrow-circle-left"></i> Cancelar</button>
                          </div>
                        
                      </form>

                    </div>

                       

                    <!--Fin centro -->
                  </div><!-- /.box -->
              </div><!-- /.col -->
          </div><!-- /.row -->
      </section><!-- /.content -->

    </div><!-- /.content-wrapper -->
  <!--Fin-Contenido-->

<!-- Modal Cliente buscar -->
<div class="modal fade" id="modalSearchCustomer" tabindex="-1" role="dialog" aria-labelledby="modalSearchCustomerLabel">
  <form name="frmBuscarContacto" id="frmBuscarContacto" method="POST">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalSearchCustomerLabel">Buscar Contacto</h4>
      </div>
      <div class="modal-body">
     
  
        <!-- tabla -->
       		
                          <table id="detalleBusqueda" class="table table-striped table-bordered table-condensed table-hover">
                          <thead>
                          <th>Opciones</th>
                          <th>Nombre</th>
                          <th>Apellido</th>
                          <th>Celular</th>
                      
                          </thead>
                          
                          <tfoot>
                          <th>Opciones</th>
                          <th>Nombre</th>
                          <th>Apellido</th>
                          <th>Celular</th>
                          </tfoot>
                          
                          <tbody>
                          </tbody>
                        </table>
        <!-- /tabla -->
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>

      
      <div class="alert alert-success" role="alert" id="divMensajeCliente"></div>
      </div>
    </div>
    </form>
    </div>	
    <!-- /Modal Cliente buscar -->  


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-venta">
    <div class="modal-content">
      <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
         </button>
         <h4 class="modal-title">Seleccione un Artículo</h4>
      </div>
      <div class="modal-body">
        <div class="form-group col-xs-12 col-sm-6 col-md-6">

          <label for="tipoFiltro">Filtrar por tipo:</label>
          <select id="tipoFiltro" class="form-control" onchange="listarArticulos()">
            <option value="Producto" selected>Productos</option>
            <option value="Servicio">Servicios</option>
            <option value="Todos">Todos</option>
          </select>
        </div>
                <table id="tblarticulos" class="table table-striped table-bordered table-condensed table-hover">
                    <thead>
                    <th>Opciones</th>
                    <th>Nombre</th>
                    <th>Categoría</th>
                    <th>Código</th>
                    <th>Stock</th>
                    <th>Precio Venta</th>
                    <th>Tipo</th>
                 <!--    <th>Descripcion</th> -->
                    <th>Imagen</th>
                    </thead>
                    <tbody>

                    </tbody>
                    <tfoot>
                        <th>Opciones</th>
                        <th>Nombre</th>
                        <th>Categoría</th>
                        <th>Código</th>
                        <th>Stock</th>
                        <th>Precio Venta</th>                    
                        <th>Tipo</th>           
                     <!--     <th>Descripcion</th>       -->
                        <th>Imagen</th>     
                    </tfoot>
                </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal Agregar Cliente -->
<div class="modal fade" id="modalAddSell" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
         </button>
         <h4 class="modal-title">Agregar Vendedor</h4>
         <form name="frmVendedor" id="frmVendedor" method="POST">
        <!-- datos del cliente -->
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                  <input type="hidden" id="idvendedor " name="idvendedor " class="form-control">
                    <label for="f_name">Nombre</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Nombres completos" required>
                  </div>
                  <div class="col-md-6 col-xs-12">
                    <label for="f_name">Apellidos</label>
                    <input type="text" id="apellido" name="apellido" class="form-control" placeholder="Apellido paterno y materno">
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 col-xs-12">
                    <label for="dniruc">DNI</label>
                    <label>Número Documento: <a class="btn btn-success" href="#" onclick="getReniec()">RENIEC</a> </label></label>
                    <input oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type = "number"  maxlength = "11" id="dni" name="dni" class="form-control" placeholder="Ingrese minimo 8 caracteres para el DNI y 11 para el RUC">
                  </div>
  
                  <div class="col-md-6 col-xs-12">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" class="form-control" placeholder="Email requerido">
                  </div>
  
                </div>
                <div class="row">
                  <div class="col-md-12 col-xs-12">
                    <label for="mobile">Celular</label>
                    <input type="text" id="celular" name="celular" class="form-control" placeholder="01 999999999">
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 col-xs-12">
                    <label for="address">WhatsApp </label>
                    <input type="text" id="whatsapp" name="whatsapp" class="form-control" placeholder="Whatsapp">
                  </div>
                </div>
        <!-- datos del cliente -->
     
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
     
        <button class="btn btn-primary" type="submit" id="btnGuardarContacto"><i class="fa fa-save"></i> Guardar</button>
      </div>
      <div class="alert alert-success" role="alert" id="divMensajeCliente"></div>
      </form>
    </div>
  </div>
</div> 
<!-- /Modal Agregar Cliente -->

<!-- Modal Cliente buscar -->
<div class="modal fade" id="modalSearchCustomer" tabindex="-1" role="dialog" aria-labelledby="modalSearchCustomerLabel">
  <form name="frmBuscarContacto" id="frmBuscarContacto" method="POST">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalSearchCustomerLabel">Buscar cliente</h4>
      </div>
      <div class="modal-body">
        <!-- tabla -->
            <table id="detalleBusqueda" class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                  <th>Opciones</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Celular</th>
                </thead>           
                <tfoot>
                  <th>Opciones</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Celular</th>
                </tfoot>
                            
                <tbody>
                </tbody>
            </table>
        <!-- /tabla -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>

      
      <div class="alert alert-success" role="alert" id="divMensajeCliente"></div>
      </div>
    </div>
    </form>
    </div>	
    <!-- /Modal Cliente buscar -->

<!-- Modal -->
<!-- Modal Descripción -->
<div class="modal fade" id="modalDescripcion" tabindex="-1" role="dialog" aria-labelledby="modalDescripcionLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background-color:cyan; font-family:Comic Sans MS; border: 2px solid black;">
      
      <div class="modal-header">
        <h4 class="modal-title text-center" id="modalDescripcionLabel"><strong>Ingresa el detalle de la descripción</strong></h4>
      </div>

      <div class="modal-body text-center">
        <p class="text-right" style="color:#000;"><strong style="color:red;">*</strong> El campo es requerido</p>
        <textarea id="descripcionTextarea" class="form-control" rows="5" placeholder="Escribe la descripción aquí..." style="resize: none; border: 2px solid black; margin: 0 auto; width: 90%;"></textarea>
      </div>

      <div class="modal-footer text-center" style="display: flex; justify-content: center; gap: 10px;">
        <button type="button" class="btn" style="background-color: purple; color: white;" id="btnGuardarDescripcion">Guardar</button>
        <button type="button" class="btn" style="background-color: red; color: white;" data-dismiss="modal">Cancelar</button>
      </div>

    </div>
  </div>
</div>

 <!-- / Modal -->
 
  <!-- Fin modal -->

<!-- 
MdlFindForQuotations 
-->
<!-- frmFindForQuotations -->
 
<!-- Modal Buscar Cotizaciones -->
<div class="modal fade" id="MdlFindForQuotations" tabindex="-1" role="dialog" aria-labelledby="MdlFindForQuotations">
  <form name="frmFindForQuotations" id="frmFindForQuotations" method="POST">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="frmFindForQuotationsLabel">Buscar Cotizaciones</h4>
      </div>
      <div class="modal-body">

                          <table id="showQuotations" class="table table-striped table-bordered table-condensed table-hover">
                          <thead>
                          <th>Opciones</th>
                          <th>Num. Cotizacion</th>
                          <th>Pedido</th>
                          <th>Fecha</th>
                      
                          </thead>
                          
                          <tfoot>
                          <th>Opciones</th>
                          <th>Num. Cotizacion</th>
                          <th>Pedido</th>
                          <th>Fecha</th>
                          </tfoot>
                          
                          <tbody>
                          </tbody>
                        </table>
        <!-- /tabla -->
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>

      
      <div class="alert alert-success" role="alert" id="divMensajeCliente"></div>
      </div>
    </div>
    </form>
    </div>	
    
    <!-- /Modal Buscar Cotizaciones -->  

<!-- Agregar Cliente Rapido -->

<div class="modal fade" id="modalCliente" tabindex="-1" role="dialog" aria-labelledby="modalClienteLabel">
  <div class="modal-dialog" role="document">
    <form id="#frmCliente" method="POST">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Agregar Cliente</h4>
        </div>
        <div class="modal-body">
          <input type="hidden" name="tipo_persona" id="tipo_persona" value="Cliente">

          <div class="form-group">
            <label for="num_documento">DNI / RUC</label>
            <div class="input-group">
              <input type="text" class="form-control" id="documento" name="documento" maxlength="11">
              <span class="input-group-btn">
                <button type="button" class="btn btn-default" id="btnBuscarDocumento">
                  <i class="fa fa-search"></i> Buscar
                </button>
              </span>
            </div>
          </div>

          <div class="form-group">
            <label for="tipo_documento">Tipo Documento</label>
            <select class="form-control" name="tipo_documento" id="tipo_documento">
              <option value="DNI">DNI</option>
              <option value="RUC">RUC</option>
            </select>
          </div>

          <div class="form-group">
            <label for="nombre">Nombre o Razón Social</label>
            <input type="text" class="form-control" id="nombreClienteRazonSocial" name="nombreClienteRazonSocial">
          </div>

          <div class="form-group">
            <label for="direccion">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion">
          </div>

          <div class="form-group">
            <label for="telefono">Teléfono</label>
            <input type="text" class="form-control" name="telefono" id="telefono">
          </div>

          <div class="form-group">
            <label for="email">Correo</label>
            <input type="email" class="form-control" name="email" id="email">
          </div>

          <div class="form-group">
            <label for="observaciones">Observaciones</label>
            <input type="text" class="form-control" name="observaciones" id="observaciones" value="-">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-primary" id="btnGuardarCliente">
            <i class="fa fa-save"></i> Guardar
          </button>
        </div>
      </div>
    </form>
  </div>
</div>

<!-- /Agregar Cliente Rapido -->

<!-- Modal para registrar nuevo pago -->
<div class="modal fade" id="modalPagoCredito" tabindex="-1" role="dialog" aria-labelledby="modalPagoLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

        <form id="formPagoCredito" method="POST">
        <div class="modal-header">
          <h4 class="modal-title">Registrar nuevo abono</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label for="monto_pago">Monto:</label>
            <input type="number" min="0" step="0.01" class="form-control" id="monto" name="monto" required>
          </div>
          <div class="form-group">
            <label for="observaciones_pago">Observaciones:</label>
            <textarea class="form-control" id="observacionesPagoCredito" name="observacionesPagoCredito" rows="2"></textarea>
          </div>
        </div>
        <div class="modal-footer">
           <button type="button" class="btn btn-primary" id="btnRegistrarAbono">
            <i class="fa fa-save"></i> Guardar Abono
          </button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="modalVerPagosRealizados" tabindex="-1" role="dialog" aria-labelledby="modalPagoLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <!-- Tabla de pagos registrados -->
                            <div class="table-responsive" style="margin-top: 10px;">
                                <table id="tablaPagos" class="table table-bordered table-condensed table-striped">
                                  <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Monto</th>
                                      <th>Fecha</th>
                                      <th>Usuario</th>
                                      <th>Observaciones</th>
                                      <th>Acción</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <!-- Cargado dinámicamente por jQuery -->
                                  </tbody>
                                  <tfoot>
                                    <tr>
                                      <th colspan="5" class="text-right">Total Pagado:</th>
                                      <th id="totalPagado">S/. 0.00</th>
                                    </tr>
                                  </tfoot>
                                </table>
                            </div>
    </div>
  </div>
</div>
<!-- /Modal para registrar nuevo pago -->
<?php
}
else
{
  require 'noacceso.php';
}
require_once("footer.php");
?>
<script type="text/javascript" src="scripts/venta.js"></script>
<script type="text/javascript" src="scripts/ventaPago.js"></script>
<?php
}
ob_end_flush();
?>