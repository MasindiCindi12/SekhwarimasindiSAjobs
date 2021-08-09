using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Library.ViewModels
{
  public  class uspSearchByProvince
    {

        public int jobID { get; set; }
        public string companyName { get; set; }
        public string jobTitle { get; set; }

        public int salary { get; set; }
        public string ProvinceName { get; set; }
        public string jobTypeDescription { get; set; }
        public string streamDescription { get; set; }
        
        public DateTime datePosted { get; set; }
        public DateTime dateExpire { get; set; }
    }
}
