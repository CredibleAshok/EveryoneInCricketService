using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class MatchDto
    {
        public int MatchId { get; set; }
        public Nullable<int> VenueId { get; set; }
        public Nullable<System.DateTime> MatchDate { get; set; }
        public Nullable<int> HomeTeam { get; set; }
        public Nullable<int> AwayTeam { get; set; }
        public Nullable<int> MatchTypeId { get; set; }
        public string MatchTime { get; set; }
        public Nullable<int> SeriesId { get; set; }
        public Nullable<int> MatchStateId { get; set; }

        public ICollection<IndividualScoreDto> IndividualScoresDetails { get; set; }
        public MatchState MatchState { get; set; }
        public MatchType MatchType { get; set; }
        public Series Series { get; set; }
        public TeamDto AwayTeamDetails { get; set; } // Team 1 = away team
        public TeamDto HomeTeamDetails { get; set; } // Team 2 = home team
        public VenueDto VenueDetails { get; set; }
        public ICollection<ExtrasGiven> ExtrasGivens { get; set; }
        public ICollection<MatchStat> MatchStats { get; set; }
        public ICollection<Result> Results { get; set; }
    }
}