<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerOrderInQue.aspx.cs" Inherits="VitalHubUI.UI.CustomerOrderInQue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

       <script>
           var time = new Date().getTime();
           $(document.body).bind("mousemove keypress", function (e) {
               time = new Date().getTime();
           });

           function refresh() {
               if (new Date().getTime() - time >= 60000)
                   window.location.reload(true);
               else
                   setTimeout(refresh, 10000);
           }

           setTimeout(refresh, 10000);
       </script>
 
       <script src="Scripts/CustomerOrderInQue.js"></script>
     

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <hr />
    <br />
    <br />
    <div id="divProcessSummery">
        <div class="row">
         
        </div>
         
    </div>

</asp:Content>

