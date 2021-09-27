
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using VitalHubAPI.DataAccess;

namespace VitalHubAPI.Controllers
{
    //[EnableCorsAttribute("*", "*", "*")]
    public class OrdersController : ApiController
    {

        #region <  ---- Get Order Items-------> 
        //  //localhost:32314/Api/Orders/GetCustomerOrderDetails
        [HttpGet]
        public IEnumerable<object> GetCustomerOrderDetails()
        {
            CustomerOrder _CustomerOrder = new CustomerOrder();

            try
            {
                var tmp = _CustomerOrder.GetCustomerOrderDetails();

                return tmp;
            }
            catch (Exception x)
            {
                return null;
            }

        }
        #endregion

        #region < ---- Get Order Header Details ------->
         //localhost:32314/Api/Orders/GetCustomerOrderBystatus?Id=3
        [HttpGet]
        public IEnumerable<object> GetCustomerOrderBystatus(int Id)
        {
            CustomerOrder _CustomerOrder = new CustomerOrder();

            try
            {
                var tmp = _CustomerOrder.GetCustomerOrderByStatus(Id);

                return tmp;
            }
            catch (Exception x)
            {
                return null;
            }

        }
        #endregion

        #region < ---- Get Orders Status ------>
        //localhost:32314/Api/Orders/GetOrderStatus
        [HttpGet]
        public IEnumerable<object> GetOrderStatus()
        {
            CustomerOrder _CustomerOrder = new CustomerOrder();

            try
            {
                var tmp = _CustomerOrder.GetOrderStatus();

                return tmp;
            }
            catch (Exception x)
            {
                return null;
            }

        }
        #endregion

        #region < ---- Get Detaild By Id ------>
        [HttpGet]
        public IEnumerable<object> GetOrderDetailsList(int Id)
        {
            CustomerOrder _CustomerOrder = new CustomerOrder();

            try
            {
                var tmp = _CustomerOrder.GetOrderDetailsList(Id);

                return tmp;
            }
            catch (Exception x)
            {
                return null;
            }

        }
        #endregion

        #region < ---- Update Order status ---->
        [HttpPut]
        //localhost:32314/Api/Orders/UpdateOrder?orderId=2&state
        public void UpdateOrder(int orderId, int state)
        {
            CustomerOrder _CustomerOrder = new CustomerOrder();
      
            _CustomerOrder.UpdateOrder(orderId, state);
        }
        #endregion

        /* State Id  : 1:  In Queue   
         * State Id  : 2 : Preparing
         * State Id  : 3 : Prepared
         * State Id  : 4 : Picked Up
         * State Id  : 5 : Hold
         * State Id  : 6 : Cancelled
         * 
         * Author < Ashwan > 22 09 2021
         * WEB API 
         */
    }
}