let Contacst = {
    init: function () {
        $(document).ready(function () {
            $.ajaxSetup({
                async: false,
            });
        });
        lfm('choose_image', 'image', { prefix: route_prefix });
    },

    update: function (is_quit = 0) {
        let data = $('form').serializeArray();
        let dataTagSeo = $('#tag_seo')[0].selectr.getValue()
        data.push({ name: "dataTagSeo", value: dataTagSeo });
        data.push({ name: "description_post", value: getValueTinymce("description_post") });
        data.push({ name: "description_seo", value: getValueTinymce("description_seo") });
        $.ajax({
            url: laroute.route('contacsts.update'),
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
                            is_quit == 0 ? window.location.href = laroute.route('contacsts.index') : location.reload(true);
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
    },
};
Contacst.init();
