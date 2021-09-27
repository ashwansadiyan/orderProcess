using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VitalHubAPI.ViewModel
{
    public class OrderViewModel
    {
        public class Order
        {

            public int Id { get; set; }
            public string OrderReference { get; set; }

            public DateTime? OrderDate { get; set; }

            public string OrderStatus { get; set; }

            public int ? Qty { get; set; }

            public string OrderType { get; set; }

            public List<OrderDetails> _OrderDetails { get; set; }
        }

        public class OrderDetails
        {
            public int id { get; set; }
            public string ItemDescription { get; set; }

            public string ItemCode { get; set; }
            public int Qty { get; set; }

        }

            
    }
}