using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class pgStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!Page.IsPostBack)
            {
                GetStudents();
            }
        }
        private void GetStudents()
        {
            SchoolService.StudentServiceClient client = new SchoolService.StudentServiceClient();
            List<SchoolService.Student> student = client.GetStudentList().ToList();
            grdStudents.DataSource = student;
            grdStudents.DataBind();
        }
        protected void btngrdEdit_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
           
            if (btn.Text == "Edit")
            {
                for (int i = 0; i < grdStudents.Rows.Count; i++)
                {
                    Response.Redirect("pgEditStudent.aspx?ID=" + HttpUtility.UrlEncode(row.Cells[0].Text.Trim())
                   +"&FName=" + HttpUtility.UrlEncode(row.Cells[1].Text.Trim())
                   + "&LName=" + HttpUtility.UrlEncode(row.Cells[2].Text.Trim())
                   + "&Email=" + HttpUtility.UrlEncode(row.Cells[3].Text.Trim())
                   + "&Courses=" + HttpUtility.UrlEncode(row.Cells[4].Text.Trim())
                   );
                }
            }
        }

    }
}