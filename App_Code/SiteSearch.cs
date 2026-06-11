using System;
using System.Collections.Generic;
using System.Linq;

public class SiteSearchResult
{
    public string Title { get; set; }
    public string Description { get; set; }
    public string Url { get; set; }
    public string Category { get; set; }
}

public static class SiteSearch
{
    private static readonly List<SiteSearchResult> Index = BuildIndex();

    public static List<SiteSearchResult> Search(string query)
    {
        if (string.IsNullOrWhiteSpace(query))
        {
            return new List<SiteSearchResult>();
        }

        var terms = query.Trim().ToLowerInvariant()
            .Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

        if (terms.Length == 0)
        {
            return new List<SiteSearchResult>();
        }

        return Index
            .Where(item => terms.Any(term => Matches(item, term)))
            .ToList();
    }

    private static bool Matches(SiteSearchResult item, string term)
    {
        return Contains(item.Title, term)
            || Contains(item.Description, term)
            || Contains(item.Category, term);
    }

    private static bool Contains(string value, string term)
    {
        return !string.IsNullOrEmpty(value)
            && value.IndexOf(term, StringComparison.OrdinalIgnoreCase) >= 0;
    }

    private static List<SiteSearchResult> BuildIndex()
    {
        var items = new List<SiteSearchResult>();

        AddPage(items, "Home", "Britts Imperial College Australia. Nationally recognised business qualifications under RTO Code 5015.", "Default.aspx", "Page");
        AddPage(items, "About Us", "Learn about Britts Imperial College Australia, our mission, quality training and student focus.", "About.aspx", "Page");
        AddPage(items, "Our Courses", "Browse all nationally recognised business qualifications from Certificate III to Advanced Diploma.", "Courses.aspx", "Course");
        AddPage(items, "Enrolment", "How to enrol, pre-training review, LLND assessment and admissions process.", "Enrolment.aspx", "Page");
        AddPage(items, "Calendar Dates", "Term dates, intake dates and important academic calendar information.", "Calendar.aspx", "Page");
        AddPage(items, "Fees", "Course fees, payment information and refund policy overview.", "Fees.aspx", "Page");
        AddPage(items, "Policies", "Student policies and procedures including complaints, privacy, assessment and access and equity.", "Policies.aspx", "Policy");
        AddPage(items, "Download Centre", "Student handbook, enrolment forms, policy documents and downloadable resources.", "Downloads.aspx", "Download");
        AddPage(items, "Student Support Services", "LLND support, reasonable adjustment, academic support and welfare referrals.", "Student_Support.aspx", "Page");
        AddPage(items, "Contact Us", "Contact admissions and student support by phone, email or message.", "Contact.aspx", "Page");

        foreach (var course in CourseData.GetAll())
        {
            items.Add(new SiteSearchResult
            {
                Title = course.Code + " " + course.Title,
                Description = course.ShortDescription ?? course.Description,
                Url = CourseData.GetDetailUrl(course.Code),
                Category = "Course"
            });
        }

        AddPolicy(items, "Complaints and Appeals", "Fair process for raising concerns and appealing decisions.", "Policies.aspx");
        AddPolicy(items, "Privacy", "How we collect, use and protect your personal information.", "Policies.aspx");
        AddPolicy(items, "Fees, Charges and Refunds", "What you pay, when, and your refund entitlements.", "Policies.aspx");
        AddPolicy(items, "Assessment", "How assessment is conducted fairly and validly.", "Policies.aspx");
        AddPolicy(items, "Access and Equity", "Fair and equal access to training for all students.", "Policies.aspx");

        AddDownload(items, "Student Handbook", "Essential guide for students at Britts Imperial.", "assets/downloads/student-handbook.pdf");
        AddDownload(items, "Enrolment Form", "Request or complete your course enrolment.", "assets/downloads/enrolment-form.pdf");
        AddDownload(items, "Credit Transfer / RPL Application", "Apply for credit transfer or recognition of prior learning.", "assets/downloads/credit-transfer-rpl.pdf");
        AddDownload(items, "Complaints and Appeals Form", "Submit a complaint or appeal.", "assets/downloads/complaints-appeals.pdf");
        AddDownload(items, "Course Timetables and Term Calendar", "Term dates and timetable information.", "assets/downloads/term-calendar.pdf");
        AddDownload(items, "Privacy Policy", "Full privacy policy document.", "assets/downloads/privacy-policy.pdf");
        AddDownload(items, "Fees, Charges and Refunds Policy", "Full fees and refunds policy document.", "assets/downloads/fees-refunds-policy.pdf");
        AddDownload(items, "Assessment Policy", "Full assessment policy document.", "assets/downloads/assessment-policy.pdf");
        AddDownload(items, "Access and Equity Policy", "Full access and equity policy document.", "assets/downloads/access-equity-policy.pdf");

        return items;
    }

    private static void AddPage(List<SiteSearchResult> items, string title, string description, string url, string category)
    {
        items.Add(new SiteSearchResult
        {
            Title = title,
            Description = description,
            Url = url,
            Category = category
        });
    }

    private static void AddPolicy(List<SiteSearchResult> items, string title, string description, string url)
    {
        items.Add(new SiteSearchResult
        {
            Title = title,
            Description = description,
            Url = url,
            Category = "Policy"
        });
    }

    private static void AddDownload(List<SiteSearchResult> items, string title, string description, string url)
    {
        items.Add(new SiteSearchResult
        {
            Title = title,
            Description = description,
            Url = url,
            Category = "Download"
        });
    }
}
