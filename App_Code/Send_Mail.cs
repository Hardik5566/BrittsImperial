using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Send_Mail
/// </summary>
public class Send_Mail
{
    public Send_Mail()
    {
        //
        // TODO: Add constructor logic here
        //


    }
    public static string SendMail_test(string to, string subject, string body, string signature, MemoryStream attachmentStream = null, string attachmentName = "Attachment.pdf", string fromName = "Menzies Institute of Technology")
    {
        try
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("vaghasiyaprit799@gmail.com", fromName);
                foreach (var address in to.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
                {
                    mail.To.Add(address.Trim());
                }

                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                // 📨 Add PDF attachment if stream is provided
                if (attachmentStream != null)
                {
                    attachmentStream.Position = 0; // reset stream position
                    Attachment attachment = new Attachment(attachmentStream, attachmentName, "application/pdf");
                    mail.Attachments.Add(attachment);
                }
                if (!string.IsNullOrEmpty(signature) && File.Exists(signature))
                {
                    byte[] signBytes = File.ReadAllBytes(signature);
                    string signBase64 = Convert.ToBase64String(signBytes);
                    MemoryStream signStream = new MemoryStream(signBytes);
                    Attachment signAttachment = new Attachment(signStream, "Signature.jpg");
                    mail.Attachments.Add(signAttachment);
                }
                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("vaghasiyaprit799@gmail.com", "jllp yyfw wspy gjel");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }

                return "✅ Email sent successfully!";
            }
        }
        catch (Exception ex)
        {
            return "❌ Error sending email: " + ex.Message;
        }
    }

    public static string MailWithouAttachment(string to, string subject, string body, string signature, string fromName)
    {
        try
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("vaghasiyaprit799@gmail.com", string.IsNullOrWhiteSpace(fromName) ? "Britts Imperial College Australia" : fromName);
                foreach (var address in to.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
                {
                    mail.To.Add(address.Trim());
                }

                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                if (!string.IsNullOrEmpty(signature) && File.Exists(signature))
                {
                    byte[] signBytes = File.ReadAllBytes(signature);
                    MemoryStream signStream = new MemoryStream(signBytes);
                    Attachment signAttachment = new Attachment(signStream, "Signature.jpg");
                    mail.Attachments.Add(signAttachment);
                }

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("vaghasiyaprit799@gmail.com", "jllp yyfw wspy gjel");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }

                return "Email sent successfully";
            }
        }
        catch (Exception ex)
        {
            return "Error sending email: " + ex.Message;
        }
    }
}
