<?php
session_start();
$sesion_selected = $_SESSION['sesion_selected'];
if (isset($_SESSION['asientos_ocupados'])) {
    unset($_SESSION['asientos_ocupados']);
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Proyecto cine</title>
    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="../assets/js/jquery.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=250, initial-scale=1">
</head>

<body>
    <?php
    $sesion_pelicula = $_SESSION['sesion_selected'];
    $n_asientos = 3;
    require "cabecera.php";
    cabecera('includes');
    include('../functions/connectPDO.php');
    include('../functions/querys.php');
    $db = pdo();
    $info = get_info_sesions_of_pelis($db, $sesion_pelicula);
    ?>


    <div class="container body center">
        <div class="row text-center">
            <div class="container">


                <div class="card">
                    <div class="row">
                        <aside class="col-sm-5 border-right">
                            <article class="gallery-wrap">
                                <div class="img-big-wrap">
                                    <div class="center">
                                        <?php
                                        echo "<a href='#'><img src=../images/" . $info['caratula'] . " class='caratula_sesion'></a>";

                                        ?>

                                    </div>
                                </div> <!-- slider-product.// -->
                                <div class="img-small-wrap">

                                </div> <!-- slider-nav.// -->
                            </article> <!-- gallery-wrap .end// -->
                        </aside>
                        <aside class="col-sm-7">
                            <article class="card-body pl-5 pr-5 pb-5">
                                <!-- pintar asientos -->
                                <?php
                                echo "<h2>" . $info['nombre_peli'] . "</h2>";
                                if (isset($info['descripcion_peli'])) {
                                    echo "<p> " . $info['descripcion_peli'] . " </p>";
                                } else {
                                    echo "<p>No hay descripción</p>";
                                }
                                ?>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-2 p-0">
                                        <dl class="param param-inline">
                                            <dt class="text-left">Cantidad: </dt>
                                            <dd>


                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="col-md-4">
                                        <?php
                                        echo  "<input id='n_entradas' type='number' class='form-control form-control-sm text-cente' style='width:70px;' min='1' max='10' value='1'/>"
                                        ?>
                                    </div>
                                    <div class="col-sm-4">
                                        <p><b>Precio:</b> 7.00€</p>
                                    </div> 
                                </div> <!-- row.// -->
                                <hr>
                                <button id="boton_entradas" class="btn btn-lg btn-primary text-uppercase"> continuar </button>
                                <!-- <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> Añadir al carrito </a> -->
                            </article> <!-- card-body.// -->
                        </aside> <!-- col.// -->
                    </div> <!-- row.// -->
                </div> <!-- card.// -->


            </div>
        </div>
    </div>
    <?php

    require "pie.php";
    footer('index');
    ?>

</body>
<script src="../functions/ajax/function_ajax.js"></script>

</html>