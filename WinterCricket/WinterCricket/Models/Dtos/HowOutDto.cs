using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class HowOutDto
    {
        public int HowOutId { get; set; }
        public string Name { get; set; }

        public ICollection<IndividualScore> IndividualScores { get; set; }
    }
}