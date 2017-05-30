using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WinterCricket.DatabaseModel;

namespace WinterCricket.Models.Dtos
{
    public class SeriesDto
    {
        public string SeriesName { get; set; }
        public int SeriesId { get; set; }
        public Nullable<System.DateTime> SeriesValidFrom { get; set; }
        public Nullable<System.DateTime> SeriesValidTo { get; set; }
        public string Year { get; set; }
        public ICollection<Match> Matches { get; set; }
    }
}