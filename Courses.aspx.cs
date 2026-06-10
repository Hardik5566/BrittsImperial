using System;

public partial class Courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptCourses.DataSource = CourseData.GetAll();
            rptCourses.DataBind();
        }
    }
}
