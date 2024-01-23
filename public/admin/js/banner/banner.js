let Banner = {
    init: function () {
        $(document).ready(function () {
            $.ajaxSetup({
                async: false,
            });
        });
        lfm('choose_image', 'image', { prefix: route_prefix });
        // lfm('choose_image2', 'image', { prefix: route_prefix });
        // lfm('choose_image3', 'image', { prefix: route_prefix });

    },

    // changeName: function (o) {
    //     let value = $(o).val();
    //     let str = ChangeToSlug($(o).val())
    //     $("#url_room").val(str);
    //     $("#title_seo").val(value);
    // },

    // validateCode: function (o) {
    //     let str = validaeCode($(o).val());
    //     $(o).val(str)
    // },
    // save: function (is_quit = 0) {
    //     let form = $('#form-submit');
    //     form.validate({
    //         rules: {
    //             code_room: {
    //                 required: true,
    //                 maxlength: 50,
    //             },
    //             name_room: {
    //                 required: true,
    //                 maxlength: 50,
    //             },
    //         },
    //         messages: {
    //             code_room: {
    //                 required: "Mã phòng không được để trống!",
    //                 maxlength: "Mã phòng không được dài hơn 50 kí tự!",
    //             },
    //             name_room: {
    //                 required: "Tên phòng không được để trống!",
    //                 maxlength: "Tên phòng không được dài hơn 50 kí tự!",
    //             },
    //         },
    //     });
    //     if (form.valid()) {
    //         let data = $('form').serializeArray();
    //         let dataTagSeo = $('#tag_seo')[0].selectr.getValue()
    //         data.push({ name: "dataTagSeo", value: dataTagSeo });
    //         data.push({ name: "description_room", value: getValueTinymce("description_room") });
    //         data.push({ name: "description_seo", value: getValueTinymce("description_seo") });
    //         $.ajax({
    //             url: laroute.route('banners.store'),
    //             method: 'POST',
    //             data: data,
    //             success: function (res) {
    //                 if (res.error == false) {
    //                     Swal.fire({
    //                         title: res.message,
    //                         icon: 'success',
    //                         confirmButtonText: 'Xác nhận',
    //                         timer: 2000,
    //                         // width: '400px'
    //                     })
    //                         .then(function () {
    //                             is_quit == 0 ? window.location.href = laroute.route('banners.index') : location.reload(true);
    //                         });

    //                 } else {
    //                     Swal.fire({
    //                         title: res.message,
    //                         icon: 'error',
    //                         confirmButtonText: 'Xác nhận',
    //                         timer: 2000,
    //                         width: '400px'
    //                     })
    //                 }
    //             },
    //             error: function (res) {
    //                 Swal.fire({
    //                     title: "Tạo thất bại!",
    //                     html: convertErrorsToHTML(res),
    //                     icon: 'error',
    //                     confirmButtonText: 'Xác nhận',
    //                     width: '400px',
    //                     timer: 2000,
    //                 })
    //             }
    //         });
    //     };
    // },

    // changeStatus: function (o, id) {
    //     Swal.fire({
    //         title: "Bạn xác nhận sẽ thay đổi trạng thái mục này?",
    //         icon: 'warning',
    //         html: "Chọn đồng ý để thay đổi trạng thái!",
    //         showCloseButton: false,
    //         showCancelButton: true,
    //         // heightAuto: false,
    //         focusConfirm: false,
    //         // confirmButtonColor: 'Red',
    //         confirmButtonText: '<i class="mdi mdi-check-circle"></i> Đồng ý',
    //         cancelButtonText: '<i class="mdi mdi-close-circle"></i> Hủy',
    //     }).then(function (result) {
    //         if (result.value) {
    //             $.ajax({
    //                 url: laroute.route('banners.change-status'),
    //                 method: 'POST',
    //                 data: {
    //                     id: id
    //                 },
    //                 success: function (res) {
    //                     if (res.error == false) {
    //                         Swal.fire({
    //                             title: res.message,
    //                             icon: 'success',
    //                             confirmButtonText: 'Xác nhận',
    //                             timer: 2000,
    //                             // width: '400px'
    //                         })
    //                             .then(function () {
    //                                 $(o).children("i").remove();
    //                                 if (res.status == 0) {
    //                                     $(o).append(`<i class="mdi mdi-play"></i>`)
    //                                 } else {
    //                                     $(o).append(`<i class="mdi mdi-pause"></i>`)
    //                                 }
    //                             });
    //                     } else {
    //                         Swal.fire({
    //                             title: res.message,
    //                             icon: 'error',
    //                             confirmButtonText: 'Xác nhận',
    //                             width: '400px',
    //                             timer: 2000,
    //                         })
    //                     }
    //                 },
    //                 error: function (res) {
    //                     Swal.fire({
    //                         title: "Cập nhật trạng thái thất bại!",
    //                         html: convertErrorsToHTML(res),
    //                         icon: 'error',
    //                         confirmButtonText: 'Xác nhận',
    //                         width: '400px',
    //                         timer: 2000,
    //                     })
    //                 }
    //             });
    //         }
    //     });
    // },
    // remove: function (o, id) {
    //     Swal.fire({
    //         title: "Bạn xác nhận sẽ xóa mục này?",
    //         icon: 'warning',
    //         html: "Chọn đồng ý để xóa. Khi bạn xác nhận xóa thì sẽ không thể phục hồi lại được !",
    //         showCloseButton: false,
    //         showCancelButton: true,
    //         // heightAuto: false,
    //         focusConfirm: false,
    //         confirmButtonColor: 'Red',
    //         cancelButtonText: 'GhostWhite',
    //         confirmButtonText: '<i class="mdi mdi-trash-can-outline"></i> Đồng ý',
    //         cancelButtonText: '<i class="mdi mdi-close-circle"></i> Hủy',
    //     }).then(function (result) {
    //         if (result.value) {
    //             $.ajax({
    //                 url: laroute.route('banners.remove'),
    //                 method: 'POST',
    //                 data: {
    //                     id: id
    //                 },
    //                 success: function (res) {
    //                     if (res.error == false) {
    //                         Swal.fire({
    //                             title: res.message,
    //                             icon: 'success',
    //                             confirmButtonText: 'Xác nhận',
    //                             timer: 2000,
    //                             // width: '400px'
    //                         })
    //                             .then(function () {
    //                                 location.reload(true)
    //                                 // $(o).closest('tr').remove();
    //                             });

    //                     } else {
    //                         Swal.fire({
    //                             title: res.message,
    //                             icon: 'error',
    //                             confirmButtonText: 'Xác nhận',
    //                             width: '400px',
    //                             timer: 2000,
    //                         })
    //                     }
    //                 },
    //                 error: function (res) {
    //                     Swal.fire({
    //                         title: "Cập nhật trạng thái thất bại!",
    //                         html: convertErrorsToHTML(res),
    //                         icon: 'error',
    //                         confirmButtonText: 'Xác nhận',
    //                         width: '400px',
    //                         timer: 2000,
    //                     })
    //                 }
    //             });
    //         }
    //     });
    // },
    update: function (is_quit = 0) {
        let form = $('#form-submit');
        form.validate({
            // rules: {
            //     code_room: {
            //         required: true,
            //         maxlength: 50,
            //     },
            //     name_room: {
            //         required: true,
            //         maxlength: 50,
            //     },
            // },
            // messages: {
            //     code_room: {
            //         required: "Mã phòng không được để trống!",
            //         maxlength: "Mã phòng không được dài hơn 50 kí tự!",
            //     },
            //     name_room: {
            //         required: "Tên phòng không được để trống!",
            //         maxlength: "Tên phòng không được dài hơn 50 kí tự!",
            //     },
            // },
        });
        if (form.valid()) {
            let data = $('form').serializeArray();
            data.push({ name: "description_banner", value: getValueTinymce("description_banner") });
            $.ajax({
                url: laroute.route('banners.update'),
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
                                is_quit == 0 ? window.location.href = laroute.route('banners.index') : location.reload(true);
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
Banner.init();
