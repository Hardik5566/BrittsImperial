using System;
using System.Collections.Generic;
using System.Linq;

public class CourseUnit
{
    public string Code { get; set; }
    public string Title { get; set; }
    public string Type { get; set; }
}

public class CourseInfo
{
    public string Code { get; set; }
    public string Title { get; set; }
    public string Level { get; set; }
    public string ShortDescription { get; set; }
    public string Description { get; set; }
    public int TotalUnits { get; set; }
    public int CoreUnits { get; set; }
    public int ElectiveUnits { get; set; }
    public string Assessment { get; set; }
    public string CareerOutcomes { get; set; }
    public string Pathways { get; set; }
    public List<CourseUnit> Units { get; set; }
}

public static class CourseData
{
    public static readonly string AssessmentText =
        "Assessed through a mix of methods, which may include written questions, projects, presentations, report writing and role plays or observations. Your trainer outlines the assessment tasks at the start of each unit.";

    public static readonly string Disclaimer =
        "Nationally recognised under the AQF and listed on our ASQA scope of registration (RTO 5015). The elective units shown reflect Britts Imperial's planned selection; entry requirements, duration, fees and delivery mode are confirmed at enrolment.";

    private static readonly Dictionary<string, CourseInfo> _courses = BuildCourses();

    public static CourseInfo GetByCode(string code)
    {
        if (string.IsNullOrEmpty(code)) return null;
        CourseInfo course;
        _courses.TryGetValue(code.ToUpperInvariant(), out course);
        return course;
    }

    public static List<CourseInfo> GetAll()
    {
        return _courses.Values.ToList();
    }

    public static string GetDetailUrl(string code)
    {
        return "Course_Detail.aspx?code=" + code;
    }

    public static string GetThumbClass(string code)
    {
        switch ((code ?? "").ToUpperInvariant())
        {
            case "BSB30120": return "cert3";
            case "BSB40120": return "cert4";
            case "BSB50120":
            case "BSB50420": return "diploma";
            case "BSB60120": return "advdip";
            default: return "cert3";
        }
    }

    public static string GetThumbIcon(string code)
    {
        switch ((code ?? "").ToUpperInvariant())
        {
            case "BSB30120": return "ti-book";
            case "BSB40120": return "ti-stats-up";
            case "BSB50120": return "ti-briefcase";
            case "BSB50420": return "ti-user";
            case "BSB60120": return "ti-crown";
            default: return "ti-book";
        }
    }

    public static string GetThumbImage(string code)
    {
        switch ((code ?? "").ToUpperInvariant())
        {
            case "BSB30120": return "assets/img/Banner/b1.jpg";
            case "BSB40120": return "assets/img/Banner/b2.jpg";
            case "BSB50120": return "assets/img/Banner/ad_g_5.jpg";
            case "BSB50420": return "assets/img/Banner/ad_g_8.jpg";
            case "BSB60120": return "assets/img/Banner/ad_g_6.jpg";
            default: return "assets/img/Banner/b1.jpg";
        }
    }

    private static Dictionary<string, CourseInfo> BuildCourses()
    {
        var courses = new Dictionary<string, CourseInfo>(StringComparer.OrdinalIgnoreCase);

        courses["BSB30120"] = new CourseInfo
        {
            Code = "BSB30120",
            Title = "Certificate III in Business",
            Level = "Certificate III",
            ShortDescription = "Establish your career in business services with nationally recognised training for routine administrative and operational roles.",
            Description = "This qualification reflects the role of individuals in a variety of business services job roles who are establishing their own work performance. They carry out a range of routine procedural, clerical, administrative or operational tasks that require technology and business skills, applying a broad range of competencies using some discretion, judgement and relevant theoretical knowledge.",
            TotalUnits = 13,
            CoreUnits = 6,
            ElectiveUnits = 7,
            Assessment = AssessmentText,
            CareerOutcomes = "Administration Assistant, Customer Service Representative, Data Entry Operator, Office Junior.",
            Pathways = "BSB40120 Certificate IV in Business; BSB40520 Certificate IV in Leadership and Management; BSB40820 Certificate IV in Marketing and Communication; or other Certificate IV and Diploma qualifications in related fields, subject to meeting entry requirements.",
            Units = new List<CourseUnit>
            {
                U("BSBCRT311", "Apply critical thinking skills in a team environment", "Core"),
                U("BSBPEF201", "Support personal wellbeing in the workplace", "Core"),
                U("BSBSUS211", "Participate in sustainable work practices", "Core"),
                U("BSBTWK301", "Use inclusive work practices", "Core"),
                U("BSBWHS311", "Assist with maintaining workplace safety", "Core"),
                U("BSBXCM301", "Engage in workplace communication", "Core"),
                U("BSBTEC301", "Design and produce business documents", "Elective"),
                U("BSBTEC302", "Design and produce spreadsheets", "Elective"),
                U("BSBTEC303", "Create electronic presentations", "Elective"),
                U("BSBCRT412", "Articulate, present and debate ideas", "Elective"),
                U("BSBPMG430", "Undertake project work", "Elective"),
                U("BSBOPS305", "Process customer complaints", "Elective"),
                U("BSBWRT311", "Write simple documents", "Elective")
            }
        };

        courses["BSB40120"] = new CourseInfo
        {
            Code = "BSB40120",
            Title = "Certificate IV in Business",
            Level = "Certificate IV",
            ShortDescription = "Develop supervisory skills for specialist and moderately complex business services roles.",
            Description = "This qualification reflects the role of individuals in a variety of business services job roles who may have supervisory performance accountabilities. They carry out a mix of specialist and moderately complex administrative or operational tasks, using well-developed skills and a broad knowledge base to apply solutions to a defined range of unpredictable problems and to analyse information from a variety of sources. They may provide leadership and guidance to others.",
            TotalUnits = 12,
            CoreUnits = 6,
            ElectiveUnits = 6,
            Assessment = AssessmentText,
            CareerOutcomes = "Administrator, Office Supervisor, Project Officer, Team Leader.",
            Pathways = "BSB50120 Diploma of Business; or other Diploma qualifications in related fields, subject to meeting entry requirements.",
            Units = new List<CourseUnit>
            {
                U("BSBCRT411", "Apply critical thinking to work practices", "Core"),
                U("BSBTEC404", "Use digital technologies to collaborate in a work environment", "Core"),
                U("BSBTWK401", "Build and maintain business relationships", "Core"),
                U("BSBWHS411", "Implement and monitor WHS policies, procedures and programs", "Core"),
                U("BSBWRT411", "Write complex documents", "Core"),
                U("BSBXCM401", "Apply communication strategies in the workplace", "Core"),
                U("BSBPEF402", "Develop personal work priorities", "Elective"),
                U("BSBPEF502", "Develop and use emotional intelligence", "Elective"),
                U("BSBCRT412", "Articulate, present and debate ideas", "Elective"),
                U("BSBSTR401", "Promote innovation in team environments", "Elective"),
                U("BSBOPS405", "Organise meetings", "Elective"),
                U("BSBOPS403", "Apply business risk management processes", "Elective")
            }
        };

        courses["BSB50120"] = new CourseInfo
        {
            Code = "BSB50120",
            Title = "Diploma of Business",
            Level = "Diploma",
            ShortDescription = "Build frontline management skills for moderately complex business operations.",
            Description = "This qualification reflects the role of individuals in a variety of business services job roles who may have frontline management accountabilities. They carry out moderately complex tasks in a specialist field of expertise that requires business operations skills, and may have substantial experience while seeking to further develop their skills across a wide range of business functions. This qualification does not contain a specialisation.",
            TotalUnits = 12,
            CoreUnits = 5,
            ElectiveUnits = 7,
            Assessment = AssessmentText,
            CareerOutcomes = "Business Development Officer, Executive Officer, Program Coordinator, Office Manager.",
            Pathways = "BSB60120 Advanced Diploma of Business; or other diplomas, advanced diplomas or degree programs in related fields, subject to meeting entry requirements.",
            Units = new List<CourseUnit>
            {
                U("BSBCRT511", "Develop critical thinking in others", "Core"),
                U("BSBFIN501", "Manage budgets and financial plans", "Core"),
                U("BSBOPS501", "Manage business resources", "Core"),
                U("BSBSUS511", "Develop workplace policy and procedures for sustainability", "Core"),
                U("BSBXCM501", "Lead communication in the workplace", "Core"),
                U("BSBOPS503", "Develop administrative systems", "Elective"),
                U("BSBOPS504", "Manage business risk", "Elective"),
                U("BSBTWK503", "Manage meetings", "Elective"),
                U("BSBLDR522", "Manage people performance", "Elective"),
                U("BSBTWK502", "Manage team effectiveness", "Elective"),
                U("BSBCRT512", "Originate and develop concepts", "Elective"),
                U("BSBOPS502", "Manage business operational plans", "Elective")
            }
        };

        courses["BSB50420"] = new CourseInfo
        {
            Code = "BSB50420",
            Title = "Diploma of Leadership and Management",
            Level = "Diploma",
            ShortDescription = "Lead teams and manage operations with practical leadership and management skills.",
            Description = "This qualification reflects the role of individuals who apply knowledge, practical skills and experience in leadership and management across a range of enterprise and industry contexts. They display initiative and judgement in planning, organising, implementing and monitoring their own workload and the workload of others, and use communication skills to support individuals and teams to meet organisational requirements.",
            TotalUnits = 12,
            CoreUnits = 6,
            ElectiveUnits = 6,
            Assessment = AssessmentText,
            CareerOutcomes = "Team Leader, Coordinator, Frontline Manager, Operations Supervisor.",
            Pathways = "BSB60420 Advanced Diploma of Leadership and Management; or other diplomas, advanced diplomas or degree programs in related fields, subject to meeting entry requirements.",
            Units = new List<CourseUnit>
            {
                U("BSBCMM511", "Communicate with influence", "Core"),
                U("BSBCRT511", "Develop critical thinking in others", "Core"),
                U("BSBLDR523", "Lead and manage effective workplace relationships", "Core"),
                U("BSBOPS502", "Manage business operational plans", "Core"),
                U("BSBPEF502", "Develop and use emotional intelligence", "Core"),
                U("BSBTWK502", "Manage team effectiveness", "Core"),
                U("BSBOPS504", "Manage business risk", "Elective"),
                U("BSBTWK503", "Manage meetings", "Elective"),
                U("BSBLDR522", "Manage people performance", "Elective"),
                U("BSBOPS503", "Develop administrative systems", "Elective"),
                U("BSBCRT512", "Originate and develop concepts", "Elective"),
                U("BSBXCM501", "Lead communication in the workplace", "Elective")
            }
        };

        courses["BSB60120"] = new CourseInfo
        {
            Code = "BSB60120",
            Title = "Advanced Diploma of Business",
            Level = "Advanced Diploma",
            ShortDescription = "Advance to strategic business leadership and complex specialist expertise.",
            Description = "This qualification reflects the role of individuals in a variety of business services job roles who may have general management accountabilities. They carry out complex tasks in a specialist field of expertise, may undertake technical research and analysis, and often contribute to setting the strategic direction of a work area. It suits individuals responsible for the supervision and leadership of a team or work area.",
            TotalUnits = 10,
            CoreUnits = 5,
            ElectiveUnits = 5,
            Assessment = AssessmentText,
            CareerOutcomes = "Business Manager, Senior Administrator, Department Manager.",
            Pathways = "Graduate Diploma (AQF Level 8) courses; or other advanced diplomas or degree programs in related fields, subject to meeting entry requirements.",
            Units = new List<CourseUnit>
            {
                U("BSBCRT611", "Apply critical thinking for complex problem solving", "Core"),
                U("BSBFIN601", "Manage organisational finances", "Core"),
                U("BSBOPS601", "Develop and implement business plans", "Core"),
                U("BSBSUS601", "Lead corporate social responsibilities", "Core"),
                U("BSBTEC601", "Review organisational digital strategy", "Core"),
                U("BSBLDR601", "Lead and manage organisational change", "Elective"),
                U("BSBSTR601", "Manage innovation and continuous improvement", "Elective"),
                U("BSBSTR602", "Develop organisational strategies", "Elective"),
                U("BSBHRM613", "Contribute to the development of learning and development strategies", "Elective"),
                U("BSBSTR801", "Lead innovative thinking and practices", "Elective")
            }
        };

        return courses;
    }

    private static CourseUnit U(string code, string title, string type)
    {
        return new CourseUnit { Code = code, Title = title, Type = type };
    }
}
