using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Library.ViewModels
{
    public class uspSearchByStream
    {
        public int streamID { get; set; }
        public int jobID { get; set; }
        public string jobTitle { get; set; }

        public string jobDescription { get; set; }

        public string companyName { get; set; }

        public string  provinceName { get; set; }

        public int salary { get; set; }

        public DateTime datePosted { get; set; }

        public DateTime dateExpire { get; set; }
    }
}
