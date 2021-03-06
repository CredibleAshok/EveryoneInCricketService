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
    
    public partial class Match
    {
        public Match()
        {
            this.ExtrasGivens = new HashSet<ExtrasGiven>();
            this.MatchStats = new HashSet<MatchStat>();
            this.Results = new HashSet<Result>();
            this.IndividualScores1 = new HashSet<IndividualScore>();
        }
    
        public int MatchId { get; set; }
        public Nullable<int> VenueId { get; set; }
        public Nullable<System.DateTime> MatchDate { get; set; }
        public Nullable<int> HomeTeam { get; set; }
        public Nullable<int> AwayTeam { get; set; }
        public Nullable<int> MatchTypeId { get; set; }
        public string MatchTime { get; set; }
        public Nullable<int> SeriesId { get; set; }
        public Nullable<int> MatchStateId { get; set; }
    
        public virtual MatchState MatchState { get; set; }
        public virtual MatchType MatchType { get; set; }
        public virtual Series Series { get; set; }
        public virtual Team Team1 { get; set; }
        public virtual Team Team2 { get; set; }
        public virtual Venue Venue { get; set; }
        public virtual ICollection<ExtrasGiven> ExtrasGivens { get; set; }
        public virtual ICollection<MatchStat> MatchStats { get; set; }
        public virtual ICollection<Result> Results { get; set; }
        public virtual ICollection<IndividualScore> IndividualScores1 { get; set; }
    }
}
