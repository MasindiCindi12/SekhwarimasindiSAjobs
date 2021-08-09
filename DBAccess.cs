using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.Library.ViewModels;

namespace DataAccessLayer
{
   public  class DBAccess
    {

       
        public List<uspQualification> GetQualification()
        {
            List<uspQualification> list = new List<uspQualification>();
            using (DataTable table = DBHelper.Select("sp_Qualifications", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspQualification qual = new uspQualification
                        {
                            qualificationID = Convert.ToInt32(row["qualificationID"]),
                            qualificationDescription = row["qualificationDescription"].ToString()
                        };
                        list.Add(qual);
                    }
                }
            }
            return list;
        }
        //List the  job type (grad prograns/junior/seniour etc...)
        public List<uspJobType> GetJobType()
        {
            List<uspJobType> list = new List<uspJobType>();
            using (DataTable table = DBHelper.Select("sp_ListJobTypes", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspJobType jtype = new uspJobType
                        {
                            jobtypeID = Convert.ToInt32(row["jobtypeID"]),
                            jobtypeDescription = row["jobtypeDescription"].ToString()
                        };
                        list.Add(jtype);
                    }
                }
            }
            return list;
        }

        //list the available positions
        public List<uspPosition> GetPosition()
        {
            List<uspPosition> list = new List<uspPosition>();
            using (DataTable table = DBHelper.Select("sp_ListJobPositions", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspPosition pos = new uspPosition
                        {
                            jobPositionID = Convert.ToInt32(row["jobPositionID"]),
                            positionDescription = row["positionDescription"].ToString()
                        };
                        list.Add(pos);
                    }
                }
            }
            return list;
        }

        //List the Sa provinces
        public List<uspProvince> GetProvinces()
        {
            List<uspProvince> list = new List<uspProvince>();
            using (DataTable table = DBHelper.Select("sp_ListProvince", CommandType.StoredProcedure))
            {
                if(table.Rows.Count>0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspProvince province = new uspProvince
                        {
                            provinceID = Convert.ToInt32(row["provinceID"]),
                            provinceName=row["provinceName"].ToString()

                        };
                        list.Add(province);
                    }
                }
            }
            return list;
        }


        //List Institution name
        public List<uspInstitution> GetInstitutions()
        {
            List<uspInstitution> list = new List<uspInstitution>();
            using (DataTable table = DBHelper.Select("sp_ListInstitutions", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspInstitution stream = new uspInstitution
                        {
                            institutionNo = Convert.ToInt32(row["institutionNo"]),
                            institutionName = row["institutionName"].ToString()
                        };
                        list.Add(stream);
                    }
                }
            }
            return list;
        }

        //List the skills
        public List<uspSkills> GetSkills()
        {
            List<uspSkills> list = new List<uspSkills>();
            using (DataTable table = DBHelper.Select("sp_ListSkills", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspSkills skills = new uspSkills
                        {
                            skillID = Convert.ToInt32(row["skillID"]),
                            skillDescription = row["skillDescription"].ToString()
                        };
                        list.Add(skills);
                    }
                }
            }
            return list;
        }
        //list the user types
        public List<uspUserType> GetUserType()
        {
            List<uspUserType> list = new List<uspUserType>();
            using (DataTable table = DBHelper.Select("sp_ListUserType", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspUserType user = new uspUserType
                        {
                            usertypeID = Convert.ToInt32(row["usertypeID"]),
                            usertypeDescription = row["usertypeDescription"].ToString()
                        };
                        list.Add(user);
                    }
                }
            }
            return list;
        }
        //List the  It streams
        public List<uspStreams> GetStreams()
        {
            List<uspStreams> list = new List<uspStreams>();
            using (DataTable table = DBHelper.Select("sp_ListJobStreams", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspStreams stream = new uspStreams
                        {
                            streamID = Convert.ToInt32(row["streamID"]),
                            streamDescription = row["streamDescription"].ToString()
                        };
                        list.Add(stream);
                    }
                }
            }
            return list;
        }

        //List Jobs
        public List<uspJobList> GetJobList()
        {
            List<uspJobList> list = new List<uspJobList>();
            using (DataTable table = DBHelper.Select("sp_listjobs", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspJobList pos = new uspJobList
                        {
                            jobID = Convert.ToInt32(row["jobID"]),
                            companyName = row["Company Name"].ToString(),
                            province = row["Province"].ToString(),
                            jobTitle = row["Job Title"].ToString(),
                            positionDescription =row["Position"].ToString()
                        };
                        list.Add(pos);
                    }
                }
            }
            return list;
        }
        //Search JObs
        public List<uspSeachJobs> GetJobs(int provinceID, int StreamID, int jobTypeID)
        {
            List<uspSeachJobs> list = null;
            SqlParameter[] parameters = new SqlParameter[]
                 {
                          new  SqlParameter("provinceID",provinceID),
                           new SqlParameter("streamID",StreamID),
                           new SqlParameter("jobTypeID",jobTypeID)
                 };

            using (DataTable table = DBHelper.ParamSelect("ssp_searchForJobs", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<uspSeachJobs>();
                    foreach (DataRow row in table.Rows)
                    {
                        uspSeachJobs search = new uspSeachJobs();
                        search.jobTitle = row["jobTitle"].ToString();
                        search.salary = Convert.ToInt32(row["salary"].ToString());
                        search.streamDescription = row["streamDescription"].ToString();
                        search.referenceNo = Convert.ToInt32(row["referenceNo"].ToString());

                        list.Add(search);
                    }
                }
            }
            return list;
        }

        //Search by Stream 
        public List<uspSearchByStream> GetJobsByStream(int streamID)
        {
            List<uspSearchByStream> list = null;
            SqlParameter[] parameters = new SqlParameter[]
                 {
                          new  SqlParameter("@streamID",streamID),

                 };

            using (DataTable table = DBHelper.ParamSelect("sp_searchForJobsByStream", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<uspSearchByStream>();
                    foreach (DataRow row in table.Rows)
                    {
                        uspSearchByStream search = new uspSearchByStream();
                        search.jobID = int.Parse(row["jobID"].ToString());
                        search.jobTitle = row["jobTitle"].ToString();
                        search.jobDescription = row["jobDescription"].ToString();
                        search.salary = Convert.ToInt32(row["salary"].ToString());
                        search.provinceName = row["provinceName"].ToString();
                        search.companyName = row["companyName"].ToString();
                        search.datePosted = DateTime.Parse(row["datePosted"].ToString());
                        search.dateExpire = DateTime.Parse(row["dateExpire"].ToString());


                        list.Add(search);
                    }
                }
            }
            return list;
        }
        //Search by Province 
        public List<uspSearchByProvince> GetJobsByProvice(int provinceID)
        {
            List<uspSearchByProvince> list = null;
            SqlParameter[] parameters = new SqlParameter[]
                 {
                          new  SqlParameter("@provinceID",provinceID),
                         
                 };

            using (DataTable table = DBHelper.ParamSelect("sp_searchForJobsByProvince", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<uspSearchByProvince>();
                    foreach (DataRow row in table.Rows)
                    {
                        uspSearchByProvince search = new uspSearchByProvince();
                       search.jobID = int.Parse(row["jobID"].ToString());
                        search.jobTitle = row["jobTitle"].ToString();
                      //  search.jobTypeDescription = row["jobTypeDescription"].ToString();
                        search.salary = Convert.ToInt32(row["salary"].ToString());
                        search.streamDescription = row["streamDescription"].ToString();
                        //search.jobDescription = row["jobDescription"].ToString();
                        search.companyName = row["companyName"].ToString();
                        search.datePosted = DateTime.Parse(row["datePosted"].ToString());
                        search.dateExpire = DateTime.Parse(row["dateExpire"].ToString());


                        list.Add(search);
                    }
                }
            }
            return list;
        }
        //Login

        public DataTable AuthenticateUSer(string emailAddress, string password)
        {
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@emailAddress",emailAddress),
                    new SqlParameter("@password",password)
                };
            using (DataTable table = DBHelper.ParamSelect("sp_login", CommandType.StoredProcedure, parameters))
                return table;

        }
        //register job seeker
        public bool AddJobSeeker(string firstName, string lastName, string userName, int province, string password, string emailaddress, int userTypeID, string gender, string phoneNo, DateTime dateOfBirth, string linkedInLink, int institutionID, int qualificationID, DateTime yearObtained, int skillID)
        {
            SqlParameter[] parameters = new SqlParameter[]
            { new SqlParameter("@firstName",firstName),
              new SqlParameter("@lastName",lastName),
              new SqlParameter("@userName",userName),
              new SqlParameter("@provinceID",province),
              new SqlParameter("@password",password),
              new SqlParameter("@emailaddress",emailaddress),
              new SqlParameter("@userTypeID",userTypeID),
              new SqlParameter("gender",gender),
              new SqlParameter("phoneNo",phoneNo),
              new SqlParameter("@dateOfBirth",dateOfBirth),
              new SqlParameter("@linkedInLink",linkedInLink),
             new SqlParameter("@institutionID",institutionID),
              new SqlParameter("@qualificationID",qualificationID),
              new SqlParameter("@yearObtained",yearObtained),
              new SqlParameter("@skillID",skillID)


            };

            return DBHelper.NonQuery("sp_registerJobSeeker", CommandType.StoredProcedure, parameters);
        }
        //register the company representative
        public bool AddCompanyRep(string firstName, string lastName, string userName, int provinceID, string emailAddress, string password, int usertypeID)
        {
            SqlParameter[] parameters = new SqlParameter[]
          { new SqlParameter("@firstName",firstName),
              new SqlParameter("@lastName",lastName),
              new SqlParameter("@userName",userName),
              new SqlParameter("@provinceID",provinceID),
              new SqlParameter("@password",password),
              new SqlParameter("@emailaddress",emailAddress),
              new SqlParameter("@userTypeID",usertypeID)
          };
            return DBHelper.NonQuery("sp_registerCompRep", CommandType.StoredProcedure, parameters);
        }

        //register the company
        public bool AddCompany(string companyName, string website, string phoneNo, int representativeNo)
        {
            SqlParameter[] parameters = new SqlParameter[]
          { new SqlParameter("@companyName",companyName),
              new SqlParameter("@website",website),
              new SqlParameter("@phoneNo",phoneNo),
              new SqlParameter("@representativeNo",representativeNo)
          };
            return DBHelper.NonQuery("sp_registerCompany", CommandType.StoredProcedure, parameters);
        }


        //posting a job

        public bool AddJobPost(string jobTitle, string jobDescription, string salary, string jobPositionID, string provinceID, string streamID, string representativeNo, string jobTypeID, string datePosted, string dateExpire)
        {
            SqlParameter[] parameters = new SqlParameter[]
          { 
              new SqlParameter("@jobTitle",jobTitle),
              new SqlParameter("@jobDescription",jobDescription),
              new SqlParameter("@salary",salary),
              new SqlParameter("@jobPositionID",jobPositionID),
              new SqlParameter("@provinceID",provinceID),
              new SqlParameter("@streamID",streamID),
              new SqlParameter("representativeNo",representativeNo),
              new SqlParameter("jobTypeID",jobTypeID),
              new SqlParameter("@datePosted",datePosted),
              new SqlParameter("@dateExpire",dateExpire)


          };

            return DBHelper.NonQuery("sp_postJob", CommandType.StoredProcedure, parameters);
        }

        //Applying for a job


    }

}
