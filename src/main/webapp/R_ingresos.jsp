<!DOCTYPE html>
<html>
    <head>
        
        <!-- <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- titulo pestaña  -->
    <title>CUIDOMISLUKAS.COM/Registro_ingresos</title>
    <!-- añadir logo  -->
<!--<link rel="icon" href="imagenes_cuida/logopequeño.jpg" type="image/jpg">
    <link rel="stylesheet" href="EstilosLog.css">-->
    </head>
    <body>
        <div class="container mt-5"> 
            <h3 class="mb-3">Registro de Ingresos</h3>
            <hr>
            <form method="post" action="ingresos_ctrl.jsp">
                <div class="row mb-3">
                    <label for="txtId" class="col-form-label col-sm-2">Id</label>
                    <input type="text" class="col-form-control col-sm-10" id="txtId" name="txtId" value="" disabled>
                </div>
                <Div class="row mb-3">
                    <label for="txtNombre" class="col-form-label col-sm-2">Nombre</label>
                    <input type="text" class="col-form-control col-sm-10" id="txtNombre" name="txtNombre" value="">
                </div>
                
                <Div class="row mb-3">
                    <label for="doubleValor" class="col-form-label col-sm-2">Valor: $</label>
                    <input type="number" class="col-form-control col-sm-10" id="valorIngreso" name="valorIngreso" value="">
                </div>
                 
		 <Div class="row mb-3">
                    <label for="fechaIngreso" class="col-form-label col-sm-2">Fecha</label>
                    <input type="datetime-local" class="col-form-control col-sm-10" id="fechaIngreso" name="fechaIngreso" value="">
                </div>
                 
                <Div class="row mb-3">
                    <label for="txtDescripcion" class="col-form-label col-sm-2">Descripci�n</label>
                    <input type="text" size="100" class="col-form-control col-sm-10" id="txtDescripcion" name="txtDescripcion" value="">
                </div>
                
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary" id="btnSubmit" name="btnSubmit" value="nuevo">Guardar</button>
                <button type="submit" class="btn btn-secondary" id="btnSubmit" name="btnSubmit" value="cancelar">Cancelar</button>
                </div>
            </form>
        </div>
    </body>
</html>