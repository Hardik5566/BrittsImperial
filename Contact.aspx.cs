using System;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        try
        {
            var body = new StringBuilder();
            body.Append("<h3>Website Enquiry - Britts Imperial College Australia</h3>");
            body.Append("<p><strong>Name:</strong> " + Server.HtmlEncode(txtName.Text.Trim()) + "</p>");
            body.Append("<p><strong>Phone:</strong> " + Server.HtmlEncode(txtPhone.Text.Trim()) + "</p>");
            body.Append("<p><strong>Email:</strong> " + Server.HtmlEncode(txtEmail.Text.Trim()) + "</p>");
            body.Append("<p><strong>Message:</strong><br/>" + Server.HtmlEncode(txtMessage.Text.Trim()).Replace("\n", "<br/>") + "</p>");

            string safeSubject = "Website Enquiry from " + txtName.Text.Trim().Replace("\r", "").Replace("\n", "");

            string result = Send_Mail.MailWithouAttachment(
                "vaghasiyaprit799@gmail.com",
                safeSubject,
                body.ToString(),
                "",
                "");

            pnlMessage.Visible = true;
            pnlMessage.Controls.Clear();

            if (result != null && result.StartsWith("Email sent", StringComparison.OrdinalIgnoreCase))
            {
                pnlMessage.CssClass = "alert alert-success";
                pnlMessage.Controls.Add(new LiteralControl("Thank you for your enquiry. We will get back to you shortly."));
                txtName.Text = string.Empty;
                txtPhone.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMessage.Text = string.Empty;
            }
            else
            {
                pnlMessage.CssClass = "alert alert-danger";
                pnlMessage.Controls.Add(new LiteralControl("Sorry, we could not send your message. Please email us directly at admissions@brittsimperial.com."));
            }
        }
        catch
        {
            pnlMessage.Visible = true;
            pnlMessage.Controls.Clear();
            pnlMessage.CssClass = "alert alert-danger";
            pnlMessage.Controls.Add(new LiteralControl("An unexpected error occurred. Please try again later."));
        }
    }
}
