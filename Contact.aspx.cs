using System;
using System.IO;
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
            string body = BuildEnquiryEmailBody(
                txtName.Text.Trim(),
                txtPhone.Text.Trim(),
                txtEmail.Text.Trim(),
                txtMessage.Text.Trim());

            string safeSubject = "Website Enquiry from " + txtName.Text.Trim().Replace("\r", "").Replace("\n", "");

            string result = Send_Mail.MailWithouAttachment(
                "vaghasiyaprit799@gmail.com",
                safeSubject,
                body,
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
                pnlMessage.Controls.Add(new LiteralControl("Sorry, we could not send your message. Please email us directly at ceo@brittsimperial.com.au."));
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

    private string BuildEnquiryEmailBody(string name, string phone, string email, string message)
    {
        string logoSrc = "https://brittsimperial.com.au/image/BIGE_Horizontal-Logo.png";
        string submittedAt = DateTime.Now.ToString("dddd, dd MMMM yyyy 'at' h:mm tt");

        string safeName = Server.HtmlEncode(name);
        string safePhone = Server.HtmlEncode(phone);
        string safeEmail = Server.HtmlEncode(email);
        string safeMessage = Server.HtmlEncode(message).Replace("\n", "<br/>");

        var body = new StringBuilder();
        body.Append("<!DOCTYPE html>");
        body.Append("<html><head><meta charset=\"utf-8\" /><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" /></head>");
        body.Append("<body style=\"margin:0;padding:0;background-color:#f4f7fb;font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;color:#2d3748;\">");
        body.Append("<table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#f4f7fb;padding:32px 16px;\">");
        body.Append("<tr><td align=\"center\">");
        body.Append("<table role=\"presentation\" width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"max-width:600px;width:100%;background-color:#ffffff;border-radius:10px;overflow:hidden;border:1px solid #e2e8f0;\">");

        body.Append("<tr><td style=\"background-color:#0c2d4a;padding:28px 24px;text-align:center;\">");
        if (!string.IsNullOrEmpty(logoSrc))
        {
            body.Append("<img src=\"").Append(logoSrc).Append("\" alt=\"Britts Imperial College Australia\" width=\"260\" style=\"display:block;margin:0 auto;max-width:100%;height:auto;background-color:#ffffff;border-radius:6px;padding:10px 18px;\" />");
        }
        else
        {
            body.Append("<p style=\"margin:0;font-size:20px;font-weight:700;color:#ffffff;letter-spacing:0.5px;\">Britts Imperial College Australia</p>");
        }
        body.Append("</td></tr>");

        body.Append("<tr><td style=\"background-color:#c9a227;height:4px;font-size:0;line-height:0;\">&nbsp;</td></tr>");

        body.Append("<tr><td style=\"padding:32px 32px 12px;\">");
        body.Append("<p style=\"margin:0 0 6px;font-size:12px;font-weight:600;letter-spacing:1px;text-transform:uppercase;color:#c9a227;\">Website Enquiry</p>");
        body.Append("<h1 style=\"margin:0;font-size:24px;line-height:1.3;font-weight:700;color:#0c2d4a;\">New Contact Form Submission</h1>");
        body.Append("<p style=\"margin:10px 0 0;font-size:14px;line-height:1.5;color:#5a6b7d;\">Received on ").Append(submittedAt).Append("</p>");
        body.Append("</td></tr>");

        body.Append("<tr><td style=\"padding:8px 32px 32px;\">");
        body.Append("<table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border:1px solid #e2e8f0;border-radius:8px;overflow:hidden;\">");

        AppendDetailRow(body, "Full Name", safeName);
        AppendDetailRow(body, "Phone", safePhone);
        AppendDetailRow(body, "Email", "<a href=\"mailto:" + safeEmail + "\" style=\"color:#0e4546;text-decoration:none;font-weight:600;\">" + safeEmail + "</a>");
        AppendDetailRow(body, "Message", "<div style=\"line-height:1.6;color:#2d3748;\">" + safeMessage + "</div>", true);

        body.Append("</table>");
        body.Append("</td></tr>");

        body.Append("<tr><td style=\"padding:0 32px 28px;\">");
        body.Append("<table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"background-color:#f8fafc;border:1px solid #e2e8f0;border-radius:8px;\">");
        body.Append("<tr><td style=\"padding:16px 18px;font-size:13px;line-height:1.6;color:#5a6b7d;\">");
        body.Append("<strong style=\"color:#0c2d4a;\">Quick reply:</strong> You can respond directly to this enquiry by replying to <a href=\"mailto:").Append(safeEmail).Append("\" style=\"color:#c9a227;text-decoration:none;font-weight:600;\">").Append(safeEmail).Append("</a>.");
        body.Append("</td></tr></table>");
        body.Append("</td></tr>");

        body.Append("<tr><td style=\"background-color:#0c2d4a;padding:22px 32px;text-align:center;\">");
        body.Append("<p style=\"margin:0;font-size:13px;font-weight:600;color:#ffffff;\">Britts Imperial College Australia</p>");
        body.Append("<p style=\"margin:6px 0 0;font-size:12px;color:#f4e4b8;\">RTO Code 5015 &nbsp;|&nbsp; Nationally Recognised Training</p>");
        body.Append("<p style=\"margin:10px 0 0;font-size:12px;\"><a href=\"mailto:ceo@brittsimperial.com.au\" style=\"color:#c9a227;text-decoration:none;\">ceo@brittsimperial.com.au</a></p>");
        body.Append("</td></tr>");

        body.Append("</table>");
        body.Append("</td></tr></table>");
        body.Append("</body></html>");

        return body.ToString();
    }

    private static void AppendDetailRow(StringBuilder body, string label, string value, bool isLastRow = false)
    {
        string borderStyle = isLastRow ? "" : "border-bottom:1px solid #e2e8f0;";
        body.Append("<tr>");
        body.Append("<td width=\"130\" valign=\"top\" style=\"padding:14px 16px;background-color:#f8fafc;font-size:13px;font-weight:700;color:#0c2d4a;").Append(borderStyle).Append("\">").Append(label).Append("</td>");
        body.Append("<td valign=\"top\" style=\"padding:14px 16px;font-size:14px;color:#2d3748;").Append(borderStyle).Append("\">").Append(value).Append("</td>");
        body.Append("</tr>");
    }

 
}
