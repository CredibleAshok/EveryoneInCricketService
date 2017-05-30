using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class TeamDto
    {
        public int TeamId { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> ValidFrom { get; set; }
        public Nullable<System.DateTime> ValidTo { get; set; }
        public Nullable<int> TeamFlagId { get; set; }

        public  ICollection<IndividualScore> IndividualScores { get; set; }
        public  ICollection<Match> Matches1 { get; set; }
        public  ICollection<Match> Matches2 { get; set; }
        public  ICollection<Member> Members { get; set; }
        public  ICollection<ExtrasGiven> ExtrasGivens { get; set; }
        public  ICollection<MatchStat> MatchStats { get; set; }
        public  ICollection<Result> Results { get; set; }
        public  ICollection<Result> Results1 { get; set; }
        public  ICollection<Result> Results2 { get; set; }
    }
}