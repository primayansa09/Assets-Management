let urlBackend = "https://localhost:44352/api";

$(document).ready(function () {
    $('#BorrowAssetsTable').addClass("active")

    $('#BorrowAssetsTable').DataTable({
        "ajax": {
            "url": urlBackend + "/borrowassets",
            "type": "GET",
            "datatype": "json",
            "dataSrc": "data",
        },
        "columns": [
            {
                "data": null,
                "className": "text-center",
                "render": function (data, type, full, meta) {
                    return meta.row + 1;
                }, "width": "1%"
            },
            {
                "data": "users.employee",
                "render": function (data) {
                    return `${data.firstName} ${data.lastName}`
                }
            },
            { "data": "assets.name" },
            { "data": "quantity" },
            {
                "data": "borrowing_Time",
                "render": function (data) {
                    return `${data.slice(0, 10)}`
                }
            },
            {
                "data": "return_Time",
                "render": function (data) {
                    return `${data.slice(0, 10)}`
                }
            },
            {
                "data": "status",
                "render": function (data) {
                    if (data == "0") {
                        return '<p class="btn text-white" style="background-color:#FFB100">Pending</p>'
                    } else if (data == "1") {
                        return '<p class="btn text-white" style="background-color:#36B9CC">Accept</p>'
                    } else if (data == "2") {
                        return '<p class="btn text-white" style="background-color:#205295">Accept</p>'
                    } else if (data == "3") {
                        return '<p class="btn text-white" style="background-color:#1CC88A">Accept</p>'
                    } else if (data == "4") {
                        return '<p class="btn text-white" style="background-color:#E74A3B">Reject</p>'
                    }
                }
            },
        ],
        "success": function (data) {
            console.log(data);
        },
        "language": {
            "emptyTable": "no data found"
        },
        "width": "100%"
    });

});