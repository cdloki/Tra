let ChangePassword = {
    init: function () {
        $(document).ready(function () {
            $.ajaxSetup({
                async: false,
            });
        });
    },
    update: function (is_quit = 0) {
        let form = $('#form-submit');
        form.validate({
            rules: {
                setPassword: {
                    required: true,
                    maxlength: 100,
                },
                resetPassword: {
                    required: true,
                    maxlength: 100,
                    equalTo: "#setPassword"
                },
            },
            messages: {
                setPassword: {
                    required: "Mật khẩu không được để trống!",
                    maxlength: "Mật khẩu không được dài hơn 100 kí tự!",
                },
                resetPassword: {
                    required: "Mật khẩu xác nhận không được để trống!",
                    maxlength: "Mật khẩu không được dài hơn 100 kí tự!",
                    equalTo: "Vui lòng nhập Mật khẩu xác nhận đúng với mật khẩu đã nhập!"
                },
            },
        });
        if (form.valid()) {
            let data = $('form').serializeArray();

            $.ajax({
                url: laroute.route('change-password.update'),
                method: 'POST',
                data: data,
                success: function (res) {
                    if (res.error == false) {
                        Swal.fire({
                            title: res.message,
                            icon: 'success',
                            confirmButtonText: 'Xác nhận',
                            // width: '400px',
                            timer: 2000,
                        })
                            .then(function () {
                                is_quit == 0 ? window.location.href = laroute.route('index') : location.reload(true);
                            });

                    } else {
                        Swal.fire({
                            title: res.message,
                            icon: 'error',
                            confirmButtonText: 'Xác nhận',
                            width: '400px',
                            timer: 2000,
                        })
                    }
                },
                error: function (res) {
                    Swal.fire({
                        title: "Tạo thất bại!",
                        html: convertErrorsToHTML(res),
                        icon: 'error',
                        confirmButtonText: 'Xác nhận',
                        width: '400px',
                        timer: 2000,
                    })
                }
            });
        };
    },

};
ChangePassword.init();
