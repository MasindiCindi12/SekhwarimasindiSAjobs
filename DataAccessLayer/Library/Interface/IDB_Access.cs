using System;
using System.Collections.Generic;
using System.Data;
using DataAccessLayer.Library.ViewModels;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Library.Interface
{
    public interface IDB_Access
    {
        List<uspProvince> GetProvinces();
        List<uspStreams> GetStreams();

        List<uspStreams> GetInstitutions();

        List<uspStreams> GetSkills();
        List<uspQualification> GetQualification();
        List<uspPosition> GetPosition();
        List<uspUserType> GetUserType();
       
        List<uspJobType> GetJobType();
        List<uspSeachJobs> GetJobs(int provinceID, int StreamID, int jobTypeID);
       
        bool AddJobSeeker(string firstName, string lastName, string userName, int province, string password, string emailaddress, int userTypeID, string gender, string phoneNo, DateTime dateOfBirth, string linkedIn, int institution, int qialificationDI, DateTime yearObtained, int skillID);
        bool AddCompanyRep(string firstName, string lastName, string userName, int provinceID, string emailAddress, string password, int usertypeID);
        bool AddCompany(string companyName, string website, string phoneNo, int representativeNo);
    }
}
