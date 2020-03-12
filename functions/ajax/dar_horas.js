$(document).change(function () {
    $("select[id=fecha]").on('click', function () {
        var selected = $(this).find('option:selected');
        var fecha = selected.data('foo');
        var pelicula = $(this).data("id");
        var id_pelicula = "#" + $(this).val();

        $.ajax({
            type: 'POST',
            url: '../../cambio_hora.php',
            data: { fecha: fecha, pelicula: pelicula },
        })
            .done(function (data) {
                $(id_pelicula).html(data)
                alert('Error al cargar las horas')
            })
            .fail(function () {
                alert('Error al cargar las horas')
            })
    });

});
