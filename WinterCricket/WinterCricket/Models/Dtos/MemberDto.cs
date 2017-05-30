using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class MemberDto
    {
        public int MemberId { get; set; }
        public string Name { get; set; }
        public Nullable<int> MemberType { get; set; }
        public Nullable<int> Team { get; set; }
        public Nullable<int> PlayerType { get; set; }
        public Nullable<int> PlayingHand { get; set; }
        public Nullable<bool> IsWicketKeeper { get; set; }
        public Nullable<bool> HasChangedTeamEver { get; set; }
        public Nullable<bool> IsCaptain { get; set; }

        public ICollection<IndividualScore> IndividualScores { get; set; }
        public ICollection<IndividualScore> IndividualScores1 { get; set; }
        public MemberType MemberType1 { get; set; }
        public PlayingHand PlayingHand1 { get; set; }
        public PlayerType PlayerType1 { get; set; }
        public Team Team1 { get; set; }
    }
}