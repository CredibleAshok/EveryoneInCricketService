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
    
    public partial class Team
    {
        public Team()
        {
            this.IndividualScores = new HashSet<IndividualScore>();
            this.Matches1 = new HashSet<Match>();
            this.Matches2 = new HashSet<Match>();
            this.Members = new HashSet<Member>();
            this.ExtrasGivens = new HashSet<ExtrasGiven>();
            this.MatchStats = new HashSet<MatchStat>();
            this.Results = new HashSet<Result>();
            this.Results1 = new HashSet<Result>();
            this.Results2 = new HashSet<Result>();
        }
    
        public int TeamId { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> ValidFrom { get; set; }
        public Nullable<System.DateTime> ValidTo { get; set; }
        public Nullable<int> TeamFlagId { get; set; }
    
        public virtual ICollection<IndividualScore> IndividualScores { get; set; }
        public virtual ICollection<Match> Matches1 { get; set; }
        public virtual ICollection<Match> Matches2 { get; set; }
        public virtual ICollection<Member> Members { get; set; }
        public virtual ICollection<ExtrasGiven> ExtrasGivens { get; set; }
        public virtual ICollection<MatchStat> MatchStats { get; set; }
        public virtual ICollection<Result> Results { get; set; }
        public virtual ICollection<Result> Results1 { get; set; }
        public virtual ICollection<Result> Results2 { get; set; }
    }
}
