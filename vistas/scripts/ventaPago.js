$(document).ready(function () {


    $("#btnRegistrarAbono").click(function (e) {
        e.preventDefault(); // evita envío del form
       // console.log("clic...")
        insertarAbono();
    });

    function insertarAbono()
    {
        const idventa = $("#idventa").val();
        const monto = $("#monto").val();
        const observaciones = $("#observacionesPagoCredito").val().trim();

        if (!idventa || !monto || parseFloat(monto) <= 0) {
            alert("Debes ingresar un ID de venta válido y un monto mayor a cero.");
            return;
        }
 

        const AbonoData = {
            idventa: idventa,
            monto: monto,
            observaciones: observaciones
        };

        $.ajax({
            url: '../ajax/venta_pago.php?op=guardarPago',
            type: 'POST',
            data: AbonoData,
            dataType: 'json',
            success: function (respuesta) {
                console.log(respuesta);

                if (respuesta.success) {
                    alert(respuesta.message);

                    $('#modalPagoCredito').modal('hide');
                    $('#formPagoCredito')[0].reset();
                   // $('#tablaPagos').DataTable().ajax.reload();
                    
                    // Opcional: actualiza el resumen
                   // actualizarResumenCredito(idventa);
                } else {
                    alert("Error: " + respuesta.message);
                }
           //     $("#btnRegistrarAbono").prop("disabled", false);
            },
            error: function (e) {
                console.error("Error en AJAX:", e.responseText);
                alert("Error al registrar el abono.");
            }
        });
    }




});
