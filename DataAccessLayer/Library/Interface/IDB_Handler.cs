using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.Library.ViewModels;

namespace DataAccessLayer.Library
{
    interface IDB_Handler
    {
        List<uspProvince> BLL_GetProvinces();
        List<uspStreams> BLL_GetStreams();
        List<uspStreams> BLL_GetInstitutions();
        List<uspStreams> BLL_GetSkills();
        List<uspQualification> BLL_GetQualification();
        List<uspJobType> BLL_GetJobType();
        List<uspUserType> BLL_GetUserType();
        List<uspSeachJobs> BLL_GetJobs(int provinceID, int StreamID, int jobTypeID);
        
            //insert
            bool BLL_AddJobSeeker(string firstName, string lastName, string userName, int province, string password, string emailaddress, int userTypeID, string gender, string phoneNo, DateTime dateOfBirth, string linkedIn, int institution, int qialificationDI, DateTime yearObtained, int skillID);
        bool BLL_AddCompanyRep(string firstName, string lastName, string userName, int provinceID, string emailAddress, string password, int usertypeID);
       bool BLL_AddCompany(string companyName, string website, string phoneNo, int representativeNo);
    }
}
