using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WinterCricket.Models.Dtos
{
    public class VenueDto
    {
        public int VenueId { get; set; }
        public string Name { get; set; }
        public Nullable<int> CountryId { get; set; }
        public string StateId { get; set; }
        public string Suburb { get; set; }
        public Nullable<int> PostCode { get; set; }
    }
}