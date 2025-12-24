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

//No hay verificación de permiso específico, se asume acceso
?>
<!--Contenido-->
<div class="content-wrapper">
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header with-border">
            <h1 class="box-title">Caja Chica <button class="btn btn-success" id="btnagregar" onclick="mostrarform(true)"><i class="fa fa-plus-circle"></i> Nuevo</button> <a class="btn btn-primary" id="btnReporte" target="_blank"><i class="fa fa-file-pdf-o"></i> Reporte</a> <a class="btn btn-success" id="btnReporteExcel" target="_blank"><i class="fa fa-file-excel-o"></i> Excel</a></h1>
          </div>
          <!-- /.box-header -->
          <!-- centro -->
          <div class="panel-body table-responsive" id="listadoregistros">
            <div class="row">
              <div class="form-group col-lg-2 col-md-3 col-sm-6 col-xs-12">
                <label>Desde</label>
                <input type="date" id="fecha_desde" class="form-control">
              </div>
              <div class="form-group col-lg-2 col-md-3 col-sm-6 col-xs-12">
                <label>Hasta</label>
                <input type="date" id="fecha_hasta" class="form-control">
              </div>
              <div class="form-group col-lg-2 col-md-3 col-sm-6 col-xs-12">
                <label>Tipo</label>
                <select id="filtro_tipo" class="form-control">
                  <option value="">Todos</option>
                 <!--  <option value="ingreso">Ingreso</option> -->
                  <option value="egreso">Egreso</option>
                </select>
              </div>
              <div class="form-group col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <label>Empleado</label>
                <select id="responsable" class="form-control selectpicker" data-live-search="true"></select>
              </div>
              <div class="form-group col-lg-3 col-md-12 col-sm-12 col-xs-12">
                <label>&nbsp;</label><br>
                <button class="btn btn-primary" id="btnBuscar"><i class="fa fa-search"></i> Buscar</button>
                <button class="btn btn-default" id="btnLimpiar"><i class="fa fa-eraser"></i> Limpiar</button>
              </div>
            </div>
            <table id="tbllistado" class="table table-striped table-bordered table-condensed table-hover">
              <thead>
                <th>Fecha</th>
                <th>Tipo</th>
                <th>Monto</th>
                <th>Concepto</th>
                <th>Empleado</th>
              </thead>
              <tbody>
              </tbody>
              <tfoot>
                <th>Fecha</th>
                <th>Tipo</th>
                <th>Monto</th>
                <th>Concepto</th>
                <th>Empleado</th>
              </tfoot>
            </table>
          </div>
          <div class="panel-body" id="formularioregistros">
            <form name="formulario" id="formulario" method="POST">
              <!-- <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Fecha:</label>
                <input type="date" class="form-control" name="fecha" id="fecha" required>
              </div> -->
              <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Monto:</label>
                <input type="number" step="0.01" class="form-control" name="monto" id="monto" required>
              </div>
              <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label>Concepto:</label>
                <textarea class="form-control" name="concepto" id="concepto" required></textarea>
              </div>
              <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Responsable:</label>
                <select id="idusuario" name="idusuario" class="form-control selectpicker" data-live-search="true" required></select>
              </div>
              <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Tipo:</label>
                <select id="tipo_movimiento" name="tipo_movimiento" class="form-control selectpicker" required>
                <!--   <option value="ingreso">Ingreso</option> -->
                  <option value="egreso">Egreso</option>
                </select>
              </div>
              <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Tipo de gasto:</label>
                <!-- Campo requerido para identificar el tipo del gasto -->
                <select id="TipoDeGasto" name="TipoDeGasto" class="form-control selectpicker" required>
                  <option value="">Seleccione</option>
                  <option value="OTROS">OTROS</option>
                  <option value="ADELANTO">ADELANTO</option>
                </select>
              </div>
              <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label>Medio de pago:</label>
                <!-- Campo requerido para registrar cómo se realiza el pago -->
                <select id="MedioDePago" name="MedioDePago" class="form-control selectpicker" required>
                  <option value="">Seleccione</option>
                  <option value="Pago en Efectivo">Pago en Efectivo</option>
                  <option value="Transferencia">Transferencia</option>
                  <option value="Yape">Yape</option>
                  <option value="Plin">Plin</option>
                </select>
              </div>
              <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <button class="btn btn-primary" type="submit" id="btnGuardar"><i class="fa fa-save"></i> Guardar</button>
                <button class="btn btn-danger" onclick="cancelarform()" type="button"><i class="fa fa-arrow-circle-left"></i> Cancelar</button>
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
<?php
require_once("footer.php");
?>
<script type="text/javascript" src="scripts/caja.js"></script>
<?php 
}
ob_end_flush();
?>