$(document).ready(function () {
    /// Initializing 

    bindButtnDetails();

    bindOrderProcceingDetails();
    $("#btnCnceld").removeClass("btn-danger").addClass("btn-primary");
    $("#btnPrPd").removeClass("btn-primary").addClass("btn-danger");
    $("#btnInQue").removeClass("btn-primary").addClass("btn-danger");
    $("#btnInPrg").removeClass("btn-primary").addClass("btn-danger");
});

/// Binding Data to Div Tables
function bindOrderProcceingDetails() {
    $("#divProcessSummery").children()[0].remove();
    var divProcess = $("#divProcessSummery");
    var orderObject;
    var tableParentRow = "<div class='row col-12'>";
    var tableRow = "<div class='col-3'>";
    var calMd = "<table class='table' style='width: 100%;'>";
    var tableHdOpn = "<thead class='text-light' style='background-color:orangered'>";
    var tableHdClose = "</thead>"


    $.ajax({
        type: "GET", async: false,
        url: "http://localhost:32314/Api/Orders/GetCustomerOrderBystatus?Id=6",
        aync: false,
        success: function (t) {
            if (t.length > 0) {
                orderObject = t;
            }
        }
    });

    for (var i = 0; i < orderObject.length; i++) {
        var orderID = orderObject[i]["Id"];
        var orderRef = orderObject[i]["OrderReference"];
        var tableHD = tableHdOpn + "<tr>" +
            "<th scope = 'col'> Take Away</th>" +
            "<th scope = 'col' style = 'text-align:right'>" + returnDate(orderObject[i]["OrderDate"] )+ "</th></tr>" +
            tableHdClose;
        var tableBody = "<tbody>" +
            "<tr>" +
            "<th scope='row'>#" + orderObject[i]["OrderReference"] + "</th>" +
            "<th style='text-align:right'>Online</th>" +
            "</tr>"
        var itemsRow = "";

        var tableBodyClose = "<tr style='background-color:#337ab7' class='text-light' >" +
            "<td colspan='3'  style='text-align: center' )'>" +
            "<button type='button' style='width:100%;height:35px;' class='btn btn-primary'>Cancelled Due to</button>" +

            "</td >  </tr ></tbody ></table ></div > ";


        $.ajax({
            type: "GET", async: false,
            url: "http://localhost:32314/Api/Orders/GetOrderDetailsList?Id=" + orderID,
            aync: false,
            success: function (t) {
                if (t.length > 0) {
                    for (var l = 0; l < t.length; l++) {
                        itemsRow += "<tr> <td>" + t[l]["ItemDescription"] + "</td><td style='text-align: right'> X" + t[l]["qty"] + "</td></tr>";
                    }
                }
            }
        });
        var tableFinalData = tableRow + calMd + tableHD + tableBody + itemsRow + tableBodyClose
        if (i % 4 == 0) {
            $("#divProcessSummery").append(tableParentRow + tableFinalData + "</div>");
        } else {
            $("#divProcessSummery").children().append(tableFinalData);
        }
    }
}

/// Returning Date
function returnDate(a) {

    const D = new Date(a);
    D.getMonth() + 1  // 10 (PS: +1 since Month is 0-based)
    D.getDate()       // 30
    D.getFullYear()
    var orderTime = D.format("hh:mm:s d/MM/yyyy");

    return orderTime;
}
