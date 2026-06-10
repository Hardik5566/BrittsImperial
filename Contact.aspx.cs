using System;
using System.Text;
using System.Web.UI;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        var body = new StringBuilder();
        body.Append("<h3>Website Enquiry - Britts Imperial College Australia</h3>");
        body.Append("<p><strong>Name:</strong> " + Server.HtmlEncode(txtName.Text) + "</p>");
        body.Append("<p><strong>Email:</strong> " + Server.HtmlEncode(txtEmail.Text) + "</p>");
        body.Append("<p><strong>Phone:</strong> " + Server.HtmlEncode(txtPhone.Text) + "</p>");
        body.Append("<p><strong>Course Interest:</strong> " + Server.HtmlEncode(ddlCourse.SelectedItem.Text) + "</p>");
        body.Append("<p><strong>Message:</strong><br/>" + Server.HtmlEncode(txtMessage.Text).Replace("\n", "<br/>") + "</p>");

        string result = Send_Mail.MailWithouAttachment(
            "info@brittsimperial.edu.au",
            "Website Enquiry from " + txtName.Text,
            body.ToString(),
            "",
            "");

        pnlMessage.Visible = true;
        if (result.StartsWith("Email sent"))
        {
            pnlMessage.CssClass = "alert alert-success";
            pnlMessage.Controls.Add(new LiteralControl("Thank you for your enquiry. We will get back to you shortly."));
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtMessage.Text = "";
            ddlCourse.SelectedIndex = 0;
        }
        else
        {
            pnlMessage.CssClass = "alert alert-danger";
            pnlMessage.Controls.Add(new LiteralControl("Sorry, we could not send your message. Please email us directly at info@brittsimperial.edu.au."));
        }
    }
}
