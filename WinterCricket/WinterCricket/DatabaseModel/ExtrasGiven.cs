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
    
    public partial class ExtrasGiven
    {
        public int ExtraScoreId { get; set; }
        public Nullable<int> MatchId { get; set; }
        public Nullable<int> TeamId { get; set; }
        public Nullable<int> Byes { get; set; }
        public Nullable<int> LegByes { get; set; }
        public Nullable<int> Wides { get; set; }
        public Nullable<int> NoBall { get; set; }
    
        public virtual Match Match { get; set; }
        public virtual Team Team { get; set; }
    }
}
