using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Library.ViewModels
{
   public class uspSeachJobs
    {

        //public int provinceID { get; set; }
        //public int streamID { get; set; }
        //public int jobTypeID { get; set; }
       public string companyName { get; set; }
        public string jobTitle { get; set; }

        public int salary { get; set; }
        //public string jobDescription { get; set; }
        public string jobTypeDescription { get; set; }
        public string streamDescription { get; set; }
        public int referenceNo { get; set; }

    }
}
