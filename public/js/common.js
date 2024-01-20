$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    async: false,
});
let renderDataImage = [];
let route_prefix = "/laravel-filemanager";
window.addEventListener("pageshow", function (event) {
    let historyTraversal = event.persisted || (typeof window.performance != "undefined" && window.performance.navigation.type === 2);
    if (historyTraversal) {
        window.location.reload();
    }
});
function maskData(o) {
    $(o).mask('000,000,000,000,000,000,000', {
        reverse: true
    });
}

let getHostName = function () {
    return location.protocol + '//' + location.host;
}

var editor_config = {
    path_absolute: "/",
    selector: 'textarea.my-editor',
    relative_urls: false,
    fontsize_formats: "14px 16px 18px 20px 22px 24px 26px 28px 30px 8pt 9pt 10pt 11pt 12pt 14pt 16pt 18pt 24pt 30pt 36pt 48pt 60pt 72pt 96pt",
    content_style: "body { font-size: 14pt; }",
    height: 350,
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table directionality",
        "emoticons template paste textpattern"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media | fullscreen | fontsizeselect | fontselect| forecolor backcolor",
    file_picker_callback: function (callback, value, meta) {
        var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
        var y = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;

        var cmsURL = editor_config.path_absolute + 'laravel-filemanager?editor=' + meta.fieldname;
        if (meta.filetype == 'image') {
            cmsURL = cmsURL + "&type=Images";
        } else {
            cmsURL = cmsURL + "&type=Files";
        }

        tinyMCE.activeEditor.windowManager.openUrl({
            url: cmsURL,
            title: 'Filemanager',
            width: x * 0.8,
            height: y * 0.8,
            resizable: "yes",
            close_previous: "no",
            onMessage: (api, message) => {
                callback(message.content);
            }
        });
    }
};
tinymce.init(editor_config);


var editor_config = {
    readonly: 1,
    path_absolute: "/",
    selector: 'textarea.my-editor-detail',
    relative_urls: false,
    fontsize_formats: "14px 16px 18px 20px 22px 24px 26px 28px 30px 8pt 9pt 10pt 11pt 12pt 14pt 16pt 18pt 24pt 30pt 36pt 48pt 60pt 72pt 96pt",
    content_style: "body { font-size: 14pt; }",
    height: 350,
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table directionality",
        "emoticons template paste textpattern"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media | fullscreen ",
};
tinymce.init(editor_config);

var lfm = function (id, type, options) {
    let button = document.getElementById(id);
    if (button != null) {
        button.addEventListener('click', function () {
            var route_prefix = (options && options.prefix) ? options.prefix : '/laravel-filemanager';
            var target_input = document.getElementById(button.getAttribute('data-input'));
            var target_preview = document.getElementById(button.getAttribute('data-preview'));
            window.open(route_prefix + '?type=' + options.type || 'file', 'FileManager', 'width=900,height=600');
            window.SetUrl = function (items) {
                var file_path = items.map(function (item) {
                    return item.url;
                }).join(',');

                file_path = file_path.replaceAll(getHostName(), "");
                target_input.value = file_path;

                target_input.dispatchEvent(new Event('change'));
                if (button.getAttribute('data-preview') != null) {
                    renderArrayImage(items)
                    renderHtmlImage("review", renderDataImage)

                }
            };
        });
    }
};


function renderArrayImage(items) {
    renderDataImage = [];
    let cout = 0;
    items.forEach(function (item) {
        cout = cout + 1;
        renderDataImage.push({
            id: cout,
            urlImage: item.url,
            name: item.name,
            main: cout === 1 ? 1 : 0
        });
    });
}

function creatSiteMap() {

    $.ajax({
        url: laroute.route('creat-site-map'),
        method: 'GET',
        success: function (res) {
            if (res.error == false) {
                Swal.fire({
                    title: res.message,
                    icon: 'success',
                    confirmButtonText: 'Xác nhận',
                    // width: '400px',
                    timer: 2000,
                })
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
                title: "Cập nhật thất bại!",
                // html: convertErrorsToHTML(res),
                icon: 'error',
                confirmButtonText: 'Xác nhận',
                width: '400px',
                timer: 2000,
            })
        }
    });
}

function renderRemoveImage(o) {
    renderDataImage = renderDataImage.filter(e => e.id !== o)
    renderHtmlImage("review", renderDataImage)
}
function renderHtmlImage(target_preview, items) {
    var target_preview = document.getElementById(target_preview);
    let dataImage;
    target_preview.innerHTML = ""
    let dataInput;
    items.forEach(function (item) {
        dataImage = ` <div class="uppy-Dashboard-Item is-resumable" id="uppy_uppy-aa9e3d0d07ab512a2175a2f1476f7a1b/png-1e-image/png-738371-1648910059683" role="listitem">
        <div class="uppy-Dashboard-Item-preview">
            <div class="uppy-Dashboard-Item-previewInnerWrap" style="background-color: rgb(104, 109, 224);">
            <img class="uppy-Dashboard-Item-previewImg" alt="aa9e3d0d07ab512a2175a2f1476f7a1b.png"
                src=" ${item.urlImage}">
        </div>
        </div>
        <div class="uppy-Dashboard-Item-fileInfoAndButtons">
            <div class="uppy-Dashboard-Item-fileInfo" data-uppy-file-source="Dashboard" >
                <div class="uppy-Dashboard-Item-name"
                title="${item.name}">  ${item.name}
                </div>
            </div>
             <div class="uppy-Dashboard-Item-actionWrapper" style="margin-left: 10px">
             <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked="">
            </div>
            <div class="uppy-Dashboard-Item-actionWrapper">
                <button class="uppy-u-reset uppy-Dashboard-Item-action uppy-Dashboard-Item-action--remove" type="button" aria-label="Remove file" title="Remove file"
                onclick="renderRemoveImage(${item.id})"
                >
                    <svg aria-hidden="true" focusable="false" class="uppy-c-icon" width="18" height="18" viewBox="0 0 18 18">
                        <path d="M9 0C4.034 0 0 4.034 0 9s4.034 9 9 9 9-4.034 9-9-4.034-9-9-9z"></path>
                        <path fill="#FFF" d="M13 12.222l-.778.778L9 9.778 5.778 13 5 12.222 8.222 9 5 5.778 5.778 5 9 8.222 12.222 5l.778.778L9.778 9z"></path>
                    </svg>
                </button>
            </div>
        </div>
    </div>`
        target_preview.innerHTML += dataImage

        if (dataInput != null) {
            dataInput += "," + item.urlImage;
        } else {
            dataInput += item.urlImage;

        }
    });
    document.getElementById('image_product').value = "";
    document.getElementById('total').innerHTML = ''
    if (dataInput != null) {
        dataInput = dataInput.replaceAll(getHostName(), "").replaceAll("undefined", "");
        document.getElementById('image_product').value = dataInput;
        document.getElementById('total').innerHTML = "Có " + items.length + " File đã được chọn"
    }

}

function getValueTinymce(id) {
    return tinyMCE.get(id).getContent();
}
function renderSelect(nameData, nameSelect, typeConfig, type = "creat", id = null) {
    let data = [];
    let route = nameData + '.getValue';
    let Value = [];
    // render all data select
    $.ajax({
        url: laroute.route(route),
        method: 'POST',
        data: id,
        success: function (res) {
            if (res != null) {

                switch (nameData) {
                    case "rooms":
                        jQuery.each(res, function (key, val) {
                            data.push({ value: val.id, text: val.name_room });
                        });
                        break;
                    case "categorys":
                        jQuery.each(res, function (key, val) {
                            data.push({ value: val.id, text: val.name_category });
                        });
                        break;
                }

            }
        },
    });



    let routeSelectedValue;
    let dataSelectedValue = [];
    let fillterSelectedValue;
    tag_config = {
        multiple: typeConfig != "default",
        data: data,
        disabled: type == "detail",
    }

    switch (nameData) {
        case "rooms":
            routeSelectedValue = "mapping.mappingRoomCategory";
            fillterSelectedValue = { id_category: id };
            break;
        case "categorys":
            routeSelectedValue = "mapping.mappingCategoryProduct";
            fillterSelectedValue = { id_product: id };
            break;
    }


    // render data select
    switch (type) {

        case "detail":
            if (fillterSelectedValue != null) {
                $.ajax({
                    url: laroute.route(routeSelectedValue),
                    method: 'POST',
                    data: fillterSelectedValue,
                    success: function (res) {

                        if (res != null) {
                            switch (nameData) {
                                case "rooms":
                                    jQuery.each(res, function (key, val) {
                                        dataSelectedValue.push(String(val.id_room));
                                    });
                                    break;
                                case "categorys":
                                    jQuery.each(res, function (key, val) {
                                        dataSelectedValue.push(String(val.id_category));
                                    });
                                    break;
                            }

                            tag_config.selectedValue = dataSelectedValue;
                        }
                    },
                });
            }
            break;

        case "edit":
            if (fillterSelectedValue != null) {


                $.ajax({
                    url: laroute.route(routeSelectedValue),
                    method: 'POST',
                    data: fillterSelectedValue,
                    success: function (res) {


                        if (res != null) {
                            switch (nameData) {
                                case "rooms":
                                    jQuery.each(res, function (key, val) {
                                        dataSelectedValue.push(String(val.id_room));
                                    });
                                    break;
                                case "categorys":
                                    jQuery.each(res, function (key, val) {
                                        dataSelectedValue.push(String(val.id_category));
                                    });
                                    break;
                            }
                            tag_config.selectedValue = dataSelectedValue;
                        }
                    },
                });
            }
            break;
    }
    new Selectr(nameSelect, tag_config)
    type == "detail" ? $(".selectr-tag-remove").attr("disabled", true) : "";
}
function renderDataTagSEO(string = null, type = "creat") {
    let tag_config = {}
    let dataTagseo = [];
    let data = [];
    let setValue = [];
    tag_config = {
        tagSeperators: [",", "|"],
        taggable: type != "detail",
        disabled: type == "detail",
        multiple: type == "detail",
        data: data,
    }

    switch (type) {
        case "detail":
            if (string.length != 0) {
                jQuery.each(string.split(','), function (key, val) {
                    data.push({ value: val, text: val });
                });
                setValue = string.split(',');
                dataTagseo.push(data, setValue)
                tag_config.data = dataTagseo[0];
                tag_config.selectedValue = dataTagseo[1];
            }
            break;

        case "edit":
            if (string.length != 0) {
                jQuery.each(string.split(','), function (key, val) {
                    data.push({ value: val, text: val });
                });
                setValue = string.split(',');
                dataTagseo.push(data, setValue)
                tag_config.data = dataTagseo[0];
                tag_config.selectedValue = dataTagseo[1];
            }
            break;
    }

    let Tag = new Selectr('#tag_seo', tag_config)
    type == "detail" ? $(".selectr-tag-remove").attr("disabled", true) : "";
    return Tag;
}



function convertErrorsToHTML(res) {
    let mess_error = '';
    jQuery.each(JSON.parse(res.responseText).errors, function (key, val) {
        mess_error = mess_error.concat(val + "<br/>");
    });
    return mess_error;
}
function generation() {
    const myRnId = () => parseInt(Date.now() * Math.random());
    return myRnId;
}
function ChangeToSlug(str) {
    //Đổi chữ hoa thành chữ thường
    slug = str.toLowerCase();
    //Đổi ký tự có dấu thành không dấu
    return slug = slug.replace(/ /gi, " - ")
        .replace(/\-\-\-\-\-/gi, '-')
        .replace(/\-\-\-\-/gi, '-')
        .replace(/\-\-\-/gi, '-')
        .replace(/\-\-/gi, '-')
        .replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a")
        .replace(/\ /g, '').replace(/đ/g, "d")
        .replace(/đ/g, "d").replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y")
        .replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u")
        .replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ.+/g, "o")
        .replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ễ|ể|ễ.+/g, "e")
        .replace(/ì|í|ị|ỉ|ĩ/g, "i")
        .replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '')
        .replace(/\@\-|\-\@|\@/gi, '');
}
function validaeCode(str) {
    return text_create = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a")
        .replace(/\ /g, '').replace(/đ/g, "d")
        .replace(/đ/g, "d").replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y")
        .replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u")
        .replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ.+/g, "o")
        .replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ễ|ể|ễ.+/g, "e")
        .replace(/ì|í|ị|ỉ|ĩ/g, "i")
        .replace(/!|#|$|%|^|;|'|"|@|{|}|-|\-|&|=|,/g, "")
        .replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
}
