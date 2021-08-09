using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Library.ViewModels
{
    public class uspJobList
    {
        public int jobID { get; set; }
        public string jobTitle { get; set; }
        public string companyName {get;set;}
        public string province { get; set; }
        public string positionDescription { get; set; }
    }
}
