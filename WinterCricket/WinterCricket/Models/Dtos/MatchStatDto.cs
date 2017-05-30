using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class MatchStatDto
    {
        public int MatchStatsId { get; set; }
        public Nullable<int> MatchId { get; set; }
        public Nullable<int> TeamId { get; set; }
        public Nullable<int> RunsScored { get; set; }
        public Nullable<int> ExtraScored { get; set; }
        public Nullable<double> OversReceived { get; set; }
        public Nullable<int> WicketsLost { get; set; }

        public Match Match { get; set; }
        public Team Team { get; set; }
    }
}