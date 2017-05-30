using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class IndividualScoreDto
    {
        #region from model
        public int ScoreId { get; set; }
        public Nullable<int> MatchId { get; set; }
        public Nullable<int> PlayerId { get; set; }
        public Nullable<int> BallsFaced { get; set; }
        public Nullable<int> RunsScored { get; set; }
        public Nullable<int> OversBowled { get; set; }
        public Nullable<int> BowlingType { get; set; }
        public Nullable<int> WicketTaken { get; set; }
        public Nullable<int> Six { get; set; }
        public Nullable<int> Fours { get; set; }
        public Nullable<int> RunsGiven { get; set; }
        public Nullable<int> HowOut { get; set; }
        public Nullable<int> BowledBy { get; set; }
        public Nullable<int> TeamId { get; set; }

        public BowlingTypeDto BowlingTypeDetail { get; set; } // bowling Type
        public HowOutDto HowOutDetails { get; set; }
        public Member Member { get; set; }
        public Match Match { get; set; }
        public MemberDto BowledByDetail { get; set; } // memeber 1 - bowledBy
        public Team Team { get; set; }
        #endregion
    }
}