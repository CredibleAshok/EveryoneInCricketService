//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WinterCricket.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Club
    {
        public int ClubId { get; set; }
        public string ClubName { get; set; }
        public Nullable<int> CountryId { get; set; }
        public Nullable<System.DateTime> EstablishedDate { get; set; }
        public Nullable<int> PostCode { get; set; }
        public string City { get; set; }
    
        public virtual Country Country { get; set; }
    }
}
