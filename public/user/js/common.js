$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    },
    async: false,
});

function delay(fn, ms) {
    let timer = 0
    return function (...args) {
        clearTimeout(timer)
        timer = setTimeout(fn.bind(this, ...args), ms || 0)
    }
}


let result = document.querySelector('#input_search');

// result.addEventListener('keyup', function () {
//     let data = document.querySelector('#input_search').value;
//     console.log(data)
    // document.querySelector('#input_search_mobie').value = data;
    // alert(data);
// });


// let result_mobie = document.querySelector('#input_search_mobie');
// result_mobie.addEventListener('keyup', function () {
//     let data = document.querySelector('#input_search_mobie').value;
//     document.querySelector('#input_search').value = data;
// });




$('#input_search').keyup(delay(function (e) {
    let data = document.querySelector('#input_search').value;
    document.querySelector('#input_search_mobie').value = data;
    getDataProduct(data);
}, 500));

$('#input_search_mobie').keyup(delay(function (e) {
    let data = document.querySelector('#input_search_mobie').value;
    document.querySelector('#input_search').value = data;
    getDataProduct(data);
}, 500));

let getHostName = function () {
    return location.protocol + '//' + location.host;
}
// let result = document.querySelector('#input_search');
// result.addEventListener('keyup',
//     delay(getDataProduct, 5000)
// );
// result.addEventListener('keyup', delay(function (e) {
//     console.log('Time elapsed!', this.value);
// }, 500));

function getDataProduct(data) {

    // console.log(data)
    if (data.length == 0) {
        document.getElementById('dropdown_search').classList.remove("show");
        document.getElementById('list-product').innerHTML = '';
        document.getElementById('list-product').innerHTML = `
                        <div  class= "product-search">
                        <a>Không tìm thấy sản phẩm !</a>
                        </div>`;
        document.getElementById('dropdown_search_mobie').classList.remove("show");
        document.getElementById('list-product-mobie').innerHTML = '';
        document.getElementById('list-product-mobie').innerHTML = `
                        <div  class= "product-search">
                        <a>Không tìm thấy sản phẩm !</a>
                        </div>`;
    } else {
        let searchProduct = " ";
        let html = " ";
        $.ajax({
            url: laroute.route('product.search'),
            method: 'GET',
            data: {
                data: data
            },
            success: function (res) {
                if (res.error != false && res.length != 0) {
                    res.forEach(function (item) {
                        html = `
                        <div  class= "product-search">
                        <img
                            src="${getHostName() + item.dataImage}" />
                        <a href="${getHostName() + "/san-pham/" + item.url_product}">${item.name_product}</a>
                        </div>`;

                        searchProduct += html
                    })
                    document.getElementById('list-product').innerHTML = '';
                    document.getElementById('list-product').innerHTML = searchProduct
                    document.getElementById('dropdown_search').classList.add("show");
                    document.getElementById('list-product-mobie').innerHTML = '';
                    document.getElementById('list-product-mobie').innerHTML = searchProduct
                    document.getElementById('dropdown_search_mobie').classList.add("show");
                } else {
                    document.getElementById('dropdown_search').classList.remove("show");
                    document.getElementById('list-product').innerHTML = '';
                    document.getElementById('list-product').innerHTML = `
                                    <div  class= "product-search">
                                    <a>Không tìm thấy sản phẩm !</a>
                                    </div>`;
                    document.getElementById('dropdown_search_mobie').classList.remove("show");
                    document.getElementById('list-product-mobie').innerHTML = '';
                    document.getElementById('list-product-mobie').innerHTML = `
                                    <div  class= "product-search">
                                    <a>Không tìm thấy sản phẩm !</a>
                                    </div>`;
                }
            },
            error: function (res) {
                document.getElementById('dropdown_search').classList.remove("show");
                document.getElementById('list-product').innerHTML = '';
                document.getElementById('list-product').innerHTML = `
                                <div  class= "product-search">
                                <a>Không tìm thấy sản phẩm !</a>
                                </div>`;
                document.getElementById('dropdown_search_mobie').classList.remove("show");
                document.getElementById('list-product-mobie').innerHTML = '';
                document.getElementById('list-product-mobie').innerHTML = `
                                <div  class= "product-search">
                                <a>Không tìm thấy sản phẩm !</a>
                                </div>`;
            }
        });
    }
}


$('#dropdown_search').mouseleave(function () {
    document.getElementById('dropdown_search').classList.remove("show");
}).mouseleave();



$('#dropdown_search').mouseenter(
    function () {
        document.getElementById('dropdown_search').classList.add("show");

    });

document.getElementById('input_search_mobie').addEventListener("click", function () {
    document.getElementById('dropdown_search_mobie').classList.add("show");
});

document.addEventListener('click', function (e) {
    if (!document.querySelector('#dropdown_search_mobie').contains(e.target)) {
        document.querySelector('#dropdown_search_mobie').classList.remove('show');
        // } else {
        //     document.querySelector('#dropdown_search_mobie').classList.add("show");
    }
})
$(document).on('contextmenu', 'img', function () {
    return false;
});
