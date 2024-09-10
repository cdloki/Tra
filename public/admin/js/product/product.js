let Product = {
    init: function () {
        $(document).ready(function () {
            $.ajaxSetup({
                async: false,
            });
        });
        lfm('choose_image', 'image', { prefix: route_prefix });
    },

    changeName: function (o) {
        let value = $(o).val();
        let str = ChangeToSlug($(o).val())
        $("#url_product").val(str);
        // $("#title_seo").val(value);
    },

    renderImage: function (id,unique) {
        let cout = 0;
        $.ajax({
            url: laroute.route("mapping.mappingProductImage"),
            method: 'POST',
            data: { id_product: id },
            success: function (res) {
                if (res != null) {
                    cout = 0;
                    res.forEach(function (res) {
                        renderDataImage.push({
                            id: cout,
                            urlImage: res.url_image,
                            name: "Image" + cout,
                            main: res.main_image
                        });
                        cout = cout + 1;
                    });
                    renderHtmlImage("review", renderDataImage)
                }
            },
        });
    },




    validateCode: function (o) {
        let str = validaeCode($(o).val());
        $(o).val(str)
    },
    save: function (is_quit = 0) {
        let form = $('#form-submit');
        form.validate({
            rules: {
                code_product: {
                    required: true,
                    maxlength: 100,
                },
                name_product: {
                    required: true,
                    maxlength: 100,
                },
            },
            messages: {
                code_product: {
                    required: "Mã sản phẩm không được để trống!",
                    maxlength: "Mã sản phẩm không được dài hơn 100 kí tự!",
                },
                name_product: {
                    required: "Tên sản phẩm không được để trống!",
                    maxlength: "Tên sản phẩm không được dài hơn 100 kí tự!",
                },
            },
        });
        if (form.valid()) {

            let data = $('form').serializeArray();
            let dataTagSeo = $('#tag_seo')[0].selectr.getValue()
            let dataCategory = $('#id_category')[0].selectr.getValue()
            data.push({ name: "dataTagSeo", value: dataTagSeo });
            data.push({ name: "description_seo", value: getValueTinymce("description_product") });
            data.push({ name: "description_product", value: getValueTinymce("description_product") });
            // data.push({ name: "image_product", value: objectToArray(renderDataImage) });
            data.push({ name: "image_product", value: JSON.stringify(renderDataImage) });

            // data.push({ name: "gift", value: getValueTinymce("gift") });
            // data.push({ name: "element_product", value: getValueTinymce("element_product") });
            // data.push({ name: "specifications", value: getValueTinymce("specifications") });
            data.push({ name: "note", value: getValueTinymce("note") });
            data.push({ name: "dataCategory", value: dataCategory });
            $.ajax({
                url: laroute.route('products.store'),
                method: 'POST',
                data: data,
                success: function (res) {
                    if (res.error == false) {
                        Swal.fire({
                            title: res.message,
                            icon: 'success',
                            confirmButtonText: 'Xác nhận',
                            timer: 2000,
                            // width: '400px'
                        })
                            .then(function () {
                                is_quit == 0 ? window.location.href = laroute.route('products.index') : location.reload(true);
                            });

                    } else {
                        Swal.fire({
                            title: res.message,
                            icon: 'error',
                            confirmButtonText: 'Xác nhận',
                            timer: 2000,
                            width: '400px'
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

    changeStatus: function (o, id) {
        Swal.fire({
            title: "Bạn xác nhận sẽ thay đổi trạng thái mục này?",
            icon: 'warning',
            html: "Chọn đồng ý để thay đổi trạng thái!",
            showCloseButton: false,
            showCancelButton: true,
            // heightAuto: false,
            focusConfirm: false,
            // confirmButtonColor: 'Red',
            confirmButtonText: '<i class="mdi mdi-check-circle"></i> Đồng ý',
            cancelButtonText: '<i class="mdi mdi-close-circle"></i> Hủy',
        }).then(function (result) {
            if (result.value) {
                $.ajax({
                    url: laroute.route('products.change-status'),
                    method: 'POST',
                    data: {
                        id: id
                    },
                    success: function (res) {
                        if (res.error == false) {
                            Swal.fire({
                                title: res.message,
                                icon: 'success',
                                confirmButtonText: 'Xác nhận',
                                timer: 2000,
                                // width: '400px'
                            })
                                .then(function () {
                                    $(o).children("i").remove();
                                    if (res.status == 0) {
                                        $(o).append(`<i class="mdi mdi-play"></i>`)
                                    } else {
                                        $(o).append(`<i class="mdi mdi-pause"></i>`)
                                    }
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
                            title: "Cập nhật trạng thái thất bại!",
                            html: convertErrorsToHTML(res),
                            icon: 'error',
                            confirmButtonText: 'Xác nhận',
                            width: '400px',
                            timer: 2000,
                        })
                    }
                });
            }
        });
    },
    remove: function (o, id) {
        Swal.fire({
            title: "Bạn xác nhận sẽ xóa mục này?",
            icon: 'warning',
            html: "Chọn đồng ý để xóa. Khi bạn xác nhận xóa thì sẽ không thể phục hồi lại được !",
            showCloseButton: false,
            showCancelButton: true,
            // heightAuto: false,
            focusConfirm: false,
            confirmButtonColor: 'Red',
            cancelButtonText: 'GhostWhite',
            confirmButtonText: '<i class="mdi mdi-trash-can-outline"></i> Đồng ý',
            cancelButtonText: '<i class="mdi mdi-close-circle"></i> Hủy',
        }).then(function (result) {
            if (result.value) {
                $.ajax({
                    url: laroute.route('products.remove'),
                    method: 'POST',
                    data: {
                        id: id
                    },
                    success: function (res) {
                        if (res.error == false) {
                            Swal.fire({
                                title: res.message,
                                icon: 'success',
                                confirmButtonText: 'Xác nhận',
                                timer: 2000,
                                // width: '400px'
                            })
                                .then(function () {
                                    location.reload(true)
                                    // $(o).closest('tr').remove();
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
                            title: "Cập nhật trạng thái thất bại!",
                            html: convertErrorsToHTML(res),
                            icon: 'error',
                            confirmButtonText: 'Xác nhận',
                            width: '400px',
                            timer: 2000,
                        })
                    }
                });
            }
        });
    },
    update: function (is_quit = 0) {
        let form = $('#form-submit');
        form.validate({
            rules: {
                code_product: {
                    required: true,
                    maxlength: 100,
                },
                name_product: {
                    required: true,
                    maxlength: 100,
                },
            },
            messages: {
                code_product: {
                    required: "Mã sản phẩm không được để trống!",
                    maxlength: "Mã sản phẩm không được dài hơn 100 kí tự!",
                },
                name_product: {
                    required: "Tên sản phẩm không được để trống!",
                    maxlength: "Tên sản phẩm không được dài hơn 100 kí tự!",
                },
            },
        });
        if (form.valid()) {

            let data = $('form').serializeArray();
            // let dataTagSeo = $('#tag_seo')[0].selectr.getValue()
            let dataCategory = $('#id_category')[0].selectr.getValue()
            let dataTagSeo = $('#tag_seo')[0].selectr.getValue()

            // data.push({ name: "dataTagSeo", value: dataTagSeo });
            data.push({ name: "description_product", value: getValueTinymce("description_product") });
            // data.push({ name: "gift", value: getValueTinymce("gift") });
            // data.push({ name: "element_product", value: getValueTinymce("element_product") });
            // data.push({ name: "specifications", value: getValueTinymce("specifications") });
            data.push({ name: "note", value: getValueTinymce("note") });
            data.push({ name: "dataCategory", value: dataCategory });
            data.push({ name: "dataTagSeo", value: dataTagSeo });
            data.push({ name: "description_seo", value: getValueTinymce("description_seo") });
            data.push({ name: "image_product", value: JSON.stringify(renderDataImage) });

            $.ajax({
                url: laroute.route('products.update'),
                method: 'POST',
                data: data,
                success: function (res) {
                    if (res.error == false) {
                        Swal.fire({
                            title: res.message,
                            icon: 'success',
                            confirmButtonText: 'Xác nhận',
                            timer: 2000,
                            // width: '400px'
                        })
                            .then(function () {
                                is_quit == 0 ? window.location.href = laroute.route('products.index') : location.reload(true);
                            });

                    } else {
                        Swal.fire({
                            title: res.message,
                            icon: 'error',
                            confirmButtonText: 'Xác nhận',
                            timer: 2000,
                            width: '400px'
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
Product.init();
