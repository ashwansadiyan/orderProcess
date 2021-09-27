using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VitalHubAPI.Model;
using static VitalHubAPI.ViewModel.OrderViewModel;

namespace VitalHubAPI.DataAccess
{
    public class CustomerOrder
    {
        public static TestDBEntities testDB;

        #region < ---- Get Customer Details ---- >
        public IEnumerable<object> GetCustomerOrderDetails()
        {
            testDB = new TestDBEntities();
            List<Order> orders = new List<Order>();


            var tmpX = testDB.customerOrders.Select(a => new 
            {
                 a.Id,
                 a.OrderDate,
                 a.OrderReference,
                 a.qty,
                 a.StatusList.OrderStatus,
                 a.customerOrderDetails
            }).ToList();


            return tmpX;

        }
        #endregion

        #region < ---- Get Order Status By ID ---->
        public IEnumerable<object> GetCustomerOrderByStatus(int Id)
        {
            testDB = new TestDBEntities();
    

            var tmpX = testDB.customerOrders.Where(x=> x.OrderStatus==Id).Select(a => new
            {
                a.Id,
                a.OrderDate,
                a.OrderReference,
                a.qty,
                a.StatusList.OrderStatus
            }).ToList();


            return tmpX;

        }
        #endregion

        #region < ---- Get Order Status ----->
        public IEnumerable<object> GetOrderStatus()
        {
            testDB = new TestDBEntities();

            var tmpX = testDB.customerOrders.GroupBy(b => b.StatusList.OrderStatus).Select(a => new { status = a.Key, count = a.Count() });

            return tmpX;
        }
        #endregion

        #region < ---- Get Order Lists ------ >
        public IEnumerable<object> GetOrderDetailsList(int Id)
        {
            testDB = new TestDBEntities();

            try
            {
                return testDB.customerOrderDetails.Where(b => b.Id == Id).Select(a => new { a.ItemCode, a.ItemDescription, a.qty }).ToList();
            }catch(Exception e)
            {
                throw e;
            }

        }
        #endregion

        #region < ---- Update Order Status ----- >
        public void UpdateOrder(int orderId , int state)
        {
            
            using (TestDBEntities testDB = new TestDBEntities())
            using (var dbContextTransaction = testDB.Database.BeginTransaction() )
            {
                try
                {
                    var orderHeader = testDB.customerOrders.Where(a => a.Id == orderId).FirstOrDefault();
                   if( orderHeader != null)
                    {
                        orderHeader.OrderStatus = state;
                        testDB.SaveChanges();
                        dbContextTransaction.Commit();
                    }


                }
                catch (Exception e)
                {
                    dbContextTransaction.Rollback();
                    throw e;
                }
            }

        }
        #endregion
    }
}