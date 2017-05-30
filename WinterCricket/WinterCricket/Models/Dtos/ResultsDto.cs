using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WinterCricket.Models.Dtos
{
    public class ResultsDto
    {
        public int ResultsId { get; set; }
        public Nullable<int> MatchId { get; set; }
        public Nullable<int> WonBy { get; set; }
        public Nullable<int> LostBy { get; set; }
        public Nullable<int> DecidedToBat { get; set; }
        public Nullable<int> WinningMode { get; set; }
        public Nullable<int> ByRuns { get; set; }
        public Nullable<int> ByWickets { get; set; }

        public MatchDto MatchDetails { get; set; }
        public TeamDto TeamDecideToBatDetails { get; set; }
        public TeamDto TeamLostDetails { get; set; }
        public TeamDto TeamWonDetails { get; set; }
        public WinningModeDto WinningModeDetails { get; set; }
        public ICollection<MatchStatDto> MatchStatDetails { get; set; }
    }
}