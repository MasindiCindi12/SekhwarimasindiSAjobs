using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.Library.ViewModels;
using DataAccessLayer.Library.Interface;


namespace BusinessLayer
{
    public class DBHandler
    {
        private IDB_Access db;
        public DBHandler()
        {

        }
        public List<uspProvince> BLL_GetProvinces()
        {
            return db.GetProvinces();
        }
        public List<uspJobType> BLL_GetJobType()
        {
            return db.GetJobType();
        }
        
        public List<uspQualification> BLL_GetQualification()
        {
            return db.GetQualification();
        }
        public List<uspPosition> GetPosition()
        {
            return db.GetPosition();
        }
        public List<uspStreams> BLL_GetStreams()
        {
            return db.GetStreams();
        }
        public List<uspStreams> BLL_GetInstitutions()
        {
            return db.GetInstitutions();
        }

        public List<uspUserType> BLL_GetUserType()
        {
            return db.GetUserType();
        }
        public List<uspStreams> BLL_GetSkills()
        {
            return db.GetSkills();
        }
        public List<uspSeachJobs> BLL_GetJobs(int provinceID, int streamID, int jobTypeID)
        {
            return db.GetJobs(provinceID, streamID,jobTypeID);
        }

            //Registrations
            public bool BLL_AddJobSeeker(string firstName, string lastName, string userName, int province, string password, string emailaddress, int userTypeID, string gender, string phoneNo, DateTime dateOfBirth, string linkedIn, int institution, int qialificationDI, DateTime yearObtained, int skillID)
        {
            return db.AddJobSeeker(firstName, lastName, userName, province, password, emailaddress, userTypeID, gender, phoneNo, dateOfBirth, linkedIn, institution, qialificationDI, yearObtained, skillID);
        }

        public bool BLL_AddCompanyRep(string firstName, string lastName, string userName, int provinceID, string emailAddress, string password, int usertypeID)
        {
            return db.AddCompanyRep(firstName, lastName, userName, provinceID, emailAddress, password, usertypeID);
        }
        public bool BLL_AddCompany(string companyName, string website, string phoneNo, int representativeNo)
        {
            return db.AddCompany(companyName, website, phoneNo, representativeNo);
        }

    }
}
