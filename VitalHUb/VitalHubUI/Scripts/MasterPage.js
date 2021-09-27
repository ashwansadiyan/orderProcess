$(document).ready(function () {

    bindButtnDetails();
});


function locateToInprogress() {

    window.location.replace("https://localhost:44359/UI/CustomerOrderInprogress.aspx");

}
function locateToInQue() {

    window.location.replace("https://localhost:44359/UI/CustomerOrderInQue.aspx");

}

function locateToPrePared() {

    window.location.replace("https://localhost:44359/UI/CustomerOrderPrepared.aspx");

}
function locateToCancled() {

 
    window.location.replace("https://localhost:44359/UI/CustomerOrderCancelled.aspx");

}

function bindButtnDetails() {

    $.ajax({
        type: "GET", async: false,
        url: "http://localhost:32314/Api/Orders/GetOrderStatus",
        aync: false,
        success: function (t) {
            if (t.length > 0) {

                var chargeDetails = $.grep(t, function (er) { if (er.status == "In Queue") { return er.count; } });
                                    $("#btnInQue").html('In Queue');
                                    if (chargeDetails.length > 0)
                                    {
                                        $("#btnInQue").html('In Queue ' + '(' + chargeDetails[0]["count"] + ')');
                                    };
                var chargeDetails = $.grep(t, function (er) { if (er.status == "Preparing") { return er.count; } });
                                    $("#btnInPrg").html('In Progress');
                                    if (chargeDetails.length > 0) {
                                        $("#btnInPrg").html('In Progress ' + '(' + chargeDetails[0]["count"] + ')');
                                    }
                var chargeDetails = $.grep(t, function (er) { if (er.status == "Prepared") { return er.count; } });
                                    $("#btnPrPd").html('Prepared');
                                    if (chargeDetails.length > 0) {
                                        $("#btnPrPd").html('Prepared ' + '(' + chargeDetails[0]["count"] + ')');
                                    }
                var chargeDetails = $.grep(t, function (er) { if (er.status == "Cancelled") { return er.count; } });
                                    $("#btnCnceld").html('Cancelled');
                                    if (chargeDetails.length > 0) {
                                        $("#btnCnceld").html('Cancelled' + '(' + chargeDetails[0]["count"] + ')');
                                    }

                
            }
        }
    });
}

//btnInQue
//btnInPrg
//btnPrPd
//btnCnceld