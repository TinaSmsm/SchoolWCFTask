using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class pgAddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetAllCourses();
                if (Request.QueryString.Keys.Count != 0)
                {
                    if (Request.QueryString["FName"] != null)
                    {
                        Session["RedirectedFName"] = Request.QueryString["FName"].ToString();
                        txtFName.Text = Session["RedirectedFName"].ToString();
                    }
                    if (Request.QueryString["FName"] != null)
                    {
                        Session["RedirectedLName"] = Request.QueryString["LName"].ToString();
                        txtLName.Text = Session["RedirectedLName"].ToString();

                    }
                    if (Request.QueryString["FName"] != null)
                    {
                        Session["RedirectedEmail"] = Request.QueryString["Email"].ToString();
                        txtEmail.Text = Session["RedirectedEmail"].ToString();

                    }
                    if (Request.QueryString["Courses"] != null)
                    {
                        Session["RedirectedCourses"] = Request.QueryString["Courses"].ToString();
                        string[] Coursesarr = Session["RedirectedCourses"].ToString().Split(',');
                        for (int i = 0; i < Coursesarr.Length; i++)
                        {
                            if(Coursesarr[i].ToString()!="")
                                chkCourses.Items.FindByValue(Coursesarr[i].ToString()).Selected = true;
                        }

                    }
                }
            }
        }
        private void GetAllCourses()
        {
            SchoolService.StudentServiceClient client = new SchoolService.StudentServiceClient();
            List<SchoolService.Course> Courses = client.GetCoursesList().ToList();
            chkCourses.DataSource = Courses;
            chkCourses.DataTextField = "CoursesName";
            chkCourses.DataValueField = "CoursesName";
            chkCourses.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                SchoolService.StudentServiceClient client = new SchoolService.StudentServiceClient();
                SchoolService.Student student = new SchoolService.Student();

                student.FirstName = txtFName.Text;
                student.LastName = txtLName.Text;
                student.Email = txtEmail.Text;
                foreach (ListItem li in chkCourses.Items)
                {
                    if(li.Selected)
                    student.Courses += li.Value+",";
                }
                client.AddStudent(student);
                lblMessage.Text = "Saved Successfully ! ";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                return;
            }
           
        }

    }
}