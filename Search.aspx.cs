using System;
using System.Web;
using System.Web.UI;

public partial class SiteSearchPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var rawQuery = Request.QueryString["q"];
            if (!string.IsNullOrWhiteSpace(rawQuery))
            {
                txtQuery.Text = rawQuery.Trim();
                ShowResults(rawQuery.Trim());
            }
            else
            {
                pnlPrompt.Visible = true;
                pnlResults.Visible = false;
                pnlEmpty.Visible = false;
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var query = txtQuery.Text.Trim();
        if (string.IsNullOrWhiteSpace(query))
        {
            pnlPrompt.Visible = true;
            pnlResults.Visible = false;
            pnlEmpty.Visible = false;
            return;
        }

        Response.Redirect("Search.aspx?q=" + Server.UrlEncode(query), false);
        Context.ApplicationInstance.CompleteRequest();
    }

    private void ShowResults(string rawQuery)
    {
        var safeQuery = Server.HtmlEncode(rawQuery);
        var results = SiteSearch.Search(rawQuery);

        if (results.Count == 0)
        {
            pnlEmpty.Visible = true;
            pnlResults.Visible = false;
            pnlPrompt.Visible = false;
            return;
        }

        litSummary.Text = results.Count == 1
            ? "1 result for <strong>" + safeQuery + "</strong>"
            : results.Count + " results for <strong>" + safeQuery + "</strong>";

        rptResults.DataSource = results;
        rptResults.DataBind();
        pnlResults.Visible = true;
        pnlEmpty.Visible = false;
        pnlPrompt.Visible = false;
    }
}
