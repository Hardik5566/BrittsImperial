using System;
using System.Linq;

public partial class Course_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;

        string code = Request.QueryString["code"];
        var course = CourseData.GetByCode(code);

        if (course == null)
        {
            pnlCourse.Visible = false;
            pnlNotFound.Visible = true;
            litPageTitle.Text = "Course Not Found";
            return;
        }

        litPageTitle.Text = course.Code + " - " + course.Title;
        litBreadcrumbTitle.Text = course.Title;
        litBreadcrumbCode.Text = course.Code;
        litTitle.Text = course.Code + " - " + course.Title;
        litCode.Text = course.Code;
        imgCourseThumb.ImageUrl = CourseData.GetThumbImage(course.Code);
        imgCourseThumb.AlternateText = course.Title;
        litUnitCount.Text = course.TotalUnits + " units (" + course.CoreUnits + " core, " + course.ElectiveUnits + " elective)";
        litDescription.Text = course.Description;
        litStructure.Text = "This qualification comprises " + course.TotalUnits + " units of competency - " + course.CoreUnits + " core and " + course.ElectiveUnits + " elective.";
        litAssessment.Text = course.Assessment;
        litDisclaimer.Text = CourseData.Disclaimer;
        litCareers.Text = course.CareerOutcomes;
        litPathways.Text = course.Pathways;

        rptUnits.DataSource = course.Units;
        rptUnits.DataBind();

        rptOtherCourses.DataSource = CourseData.GetAll().Where(c => !c.Code.Equals(course.Code, StringComparison.OrdinalIgnoreCase));
        rptOtherCourses.DataBind();
    }
}
