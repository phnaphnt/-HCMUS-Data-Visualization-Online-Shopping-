//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineShopping.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ORDERINFO
    {
        public string ID { get; set; }
        public string ProductID { get; set; }
        public string CustomerID { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<decimal> Fee { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ORDER_STATUS ORDER_STATUS { get; set; }
        public virtual PRODUCT PRODUCT { get; set; }
    }
}
