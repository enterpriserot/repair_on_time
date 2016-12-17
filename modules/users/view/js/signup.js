$(document).ready(function () {
    // $.datepicker.regional['es'] = {
    //     closeText: 'Cerrar',
    //     prevText: '<Ant',
    //     nextText: 'Sig>',
    //     currentText: 'Hoy',
    //     monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    //     monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
    //     dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
    //     dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
    //     dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
    //     weekHeader: 'Sm',
    //     dateFormat: 'dd/mm/yy',
    //     firstDay: 1,
    //     isRTL: false,
    //     showMonthAfterYear: false,
    //     yearSuffix: ''
    // };
    // $.datepicker.setDefaults($.datepicker.regional['es']);

    // $("#inputBirth").datepicker({
    //     maxDate: '0',
    //     changeMonth: true,
    //     changeYear: true,
    //     yearRange: "1930:2020"
    // });

    $('#submit_user').click(function () {
      console.log("validate_user");
        validate_user();
    });
    $("#email,#password, #password2").keyup(function () {
        if ($(this).val() !== "") {
            $(".error").fadeOut();
            return false;
        }
    });
    // $("#inputUser").keyup(function () {
    //     if ($(this).val().length >= 3) {
    //         $(".error").fadeOut();
    //         return false;
    //     }
    // });
    // $("#inputDni").keyup(function () {
    //     if ($(this).val().length == 9) {
    //         $(".error").fadeOut();
    //         return false;
    //     }
    // });
    // $("#inputName").keyup(function () {
    //     if ($(this).val().length >= 2) {
    //         $(".error").fadeOut();
    //         return false;
    //     }
    // });
    // $("#inputSurn").keyup(function () {
    //     if ($(this).val().length >= 3) {
    //         $(".error").fadeOut();
    //         return false;
    //     }
    // });
    $("#email").keyup(function () {
        var emailreg = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
        if ($(this).val() !== "" && emailreg.test($(this).val())) {
            $(".error").fadeOut();
            return false;
        }
    });
    $("#password").keyup(function () {
        if ($(this).val().length >= 6) {
            $(".error").fadeOut();
            return false;
        }
    });
    $("#password2").keyup(function () {
        if ($(this).val().length >= 6) {
            $(".error").fadeOut();
            return false;
        }
    });
    // $("#inputBank").keyup(function () {
    //     if ($(this).val().length >= 6) {
    //         $(".error").fadeOut();
    //         return false;
    //     }
    // });
}); //ready

function validate_user() {
    var result = true;
    // var emailreg = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
    var emailreg = /^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+.)+[A-Z]{2,4}$/i;
    // var nomreg = /^\D{3,30}$/;
    // var apelreg = /^(\D{3,30})+$/;
    // var usuario = $("#inputUser").val();
    // var nombre = $("#inputName").val();
    // var apellidos = $("#inputSurn").val();
    var email = $("#email").val();
    var password = $("#password").val();
    var password2 = $("#password2").val();
    // var tipo = $("#inputType").val();
    // var date_birthday = $("#inputBirth").val();
    // var bank = $("#inputBank").val();
    // var dni = $("#inputDni").val();

    $(".error").remove();
    // if ($("#inputUser").val() === "" || !nomreg.test($("#inputUser").val())) {
    //     $("#inputUser").focus().after("<span class='error'>Usuario no válido</span>");
    //     result = false;
    // } else if ($("#inputUser").val().length < 3) {
    //     $("#inputUser").focus().after("<span class='error'>Mínimo 3 carácteres para el usuario</span>");
    //     result = false;
    // } else if (!emailreg.test($("#inputEmail").val()) || $("#inputEmail").val() === "") {
    if (!emailreg.test($("#email").val()) || $("#email").val() === "") {
        $("#email").focus().after("<span class='error'>Ingrese un email correcto</span>");
        result = false;
    } /*else if ($("#inputName").val() === "" || !nomreg.test($("#inputName").val())) {
        $("#inputName").focus().after("<span class='error'>Ingrese su nombre</span>");
        result = false;
    } else if ($("#inputName").val().length < 2) {
        $("#inputName").focus().after("<span class='error'>Mínimo 2 carácteres para el nombre</span>");
        result = false;
    } else if ($("#inputSurn").val() === "" || !apelreg.test($("#inputSurn").val())) {
        $("#inputSurn").focus().after("<span class='error'>Ingrese sus apellidos</span>");
        result = false;
    } else if ($("#inputSurn").val().length < 3) {
        $("#inputSurn").focus().after("<span class='error'>Mínimo 3 carácteres para los apellidos</span>");
        result = false;
    }*/ else if ($("#password").val() === "") {
        $("#password").focus().after("<span class='error'>Ingrese su contraseña</span>");
        result = false;
    } else if ($("#password").val().length < 6) {
        $("#password").focus().after("<span class='error'>Mínimo 6 carácteres para la contraseña</span>");
        result = false;
    } else if ($("#password2").val() !== $("#password").val()) {
        $("#password2").focus().after("<span class='error'>Debe coincidir con la contraseña</span>");
        result = false;
    } /*else if ($("#inputDni").val().length !== 9) {
        $("#inputDni").focus().after("<span class='error'>Ingrese un DNI correcto</span>");
        result = false;
    }*/

    if (result) {
        // var data = {"usuario": usuario, "nombre": nombre, "apellidos": apellidos, "email": email,
        //     "password": password, "password2": password2, "date_birthday": date_birthday, "tipo": tipo, "bank": bank, "dni": dni};
        var data = {"email": email, "password": password, "password2": password2};
        console.log(data);
        var data_users_JSON = JSON.stringify(data);
        console.log(data_users_JSON);
        $.post(amigable("?module=users&function=signup_user"), {signup_user_json: data_users_JSON},
        function (response) {
            console.log(response);
            if (response.success) {
                window.location.href = response.redirect;
            } else {
                if (response.typeErr === "Email") {
                    $("#inputEmail").focus().after("<span class='error'>" + response.error + "</span>");
                } else {
                    // if (response["datos"]["usuario"] !== undefined && response["datos"]["usuario"] !== null) {
                    //     $("#inputUser").focus().after("<span class='error'>" + response["datos"]["usuario"] + "</span>");
                    // }
                    // if (response["datos"]["nombre"] !== undefined && response["datos"]["nombre"] !== null) {
                    //     $("#inputName").focus().after("<span class='error'>" + response["datos"]["nombre"] + "</span>");
                    // }
                    if (response["data"]["email"] !== undefined && response["data"]["email"] !== null) {
                        $("#email").focus().after("<span class='error'>" + response["data"]["email"] + "</span>");
                    }
                    // if (response["datos"]["apellidos"] !== undefined && response["datos"]["apellidos"] !== null) {
                    //     $("#inputSurn").focus().after("<span class='error'>" + response["datos"]["apellidos"] + "</span>");
                    // }
                    if (response["data"]["password"] !== undefined && response["data"]["password"] !== null) {
                        $("#password").focus().after("<span class='error'>" + response.error.password + "</span>");
                    }
                    if (response["data"]["password2"] !== undefined && response["data"]["password2"] !== null) {
                        $("#password2").focus().after("<span class='error'>" + response.error.password2 + "</span>");
                    }
                    // if (response["datos"]["date_birthday"] !== undefined && response["datos"]["date_birthday"] !== null) {
                    //     $("#inputBirth").focus().after("<span class='error'>" + response["datos"]["date_birthday"] + "</span>");
                    // }
                    // if (response["datos"]["bank"] !== undefined && response["datos"]["bank"] !== null) {
                    //     $("#inputBank").focus().after("<span class='error'>" + response["datos"]["bank"] + "</span>");
                    // }
                    // if (response["datos"]["dni"] !== undefined && response["datos"]["dni"] !== null) {
                    //     $("#inputDni").focus().after("<span class='error'>" + response["datos"]["dni"] + "</span>");
                    // }
                }
            }
        }, "json").fail(function (xhr, textStatus, errorThrown) {
            //console.log(xhr);
            //console.log(xhr.responseJSON);
            //console.log(xhr.responseText);
            if( (xhr.responseJSON === undefined) || (xhr.responseJSON === null) )
                xhr.responseJSON = JSON.parse(xhr.responseText);
            if (xhr.status === 0) {
                alert('Not connect: Verify Network.');
            } else if (xhr.status === 404) {
                alert('Requested page not found [404]');
            } else if (xhr.status === 500) {
                alert('Internal Server Error [500].');
            } else if (textStatus === 'parsererror') {
                alert('Requested JSON parse failed.');
            } else if (textStatus === 'timeout') {
                alert('Time out error.');
            } else if (textStatus === 'abort') {
                alert('Ajax request aborted.');
            } else {
                alert('Uncaught Error: ' + xhr.responseText);
            }
        });
    }
}
