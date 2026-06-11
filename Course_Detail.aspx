<%@ Page Title="Course Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course_Detail.aspx.cs" Inherits="Course_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <asp:Literal ID="litPageTitle" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <asp:Panel ID="pnlCourse" runat="server">
        <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
            <div class="container">
                <h1><asp:Literal ID="litBreadcrumbTitle" runat="server" /></h1>
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="Courses.aspx">Courses</a></li>
                    <li class="active"><asp:Literal ID="litBreadcrumbCode" runat="server" /></li>
                </ul>
            </div>
        </div>

        <div class="bi-course-detail-page course-details-area">
            <div class="container">
                <div class="row bi-course-detail-row">
                    <div class="col-lg-8 col-md-7">
                        <div class="bi-course-detail-hero">
                            <div class="bi-course-detail-thumb">
                                <asp:Image ID="imgCourseThumb" runat="server" CssClass="bi-course-detail-img" />
                            </div>
                            <div class="bi-course-detail-header">
                                <h2><asp:Literal ID="litTitle" runat="server" /></h2>
                                <div class="bi-course-meta-grid">
                                    <div class="bi-course-meta-item">
                                        <span class="label">Qualification Code</span>
                                        <strong><asp:Literal ID="litCode" runat="server" /></strong>
                                    </div>
                                    <div class="bi-course-meta-item">
                                        <span class="label">Units</span>
                                        <strong><asp:Literal ID="litUnitCount" runat="server" /></strong>
                                    </div>
                                </div>
                                <div class="bi-btn-group bi-course-detail-actions">
                                    <a class="btn btn-theme effect btn-md" href="Enrolment.aspx"><i class="fas fa-edit"></i> Enrol Now</a>
                                    <a class="btn btn-dark border btn-md" href="Contact.aspx"><i class="fas fa-envelope"></i> Enquire</a>
                                </div>
                            </div>
                        </div>

                        <div class="bi-course-detail-sections">
                            <div class="bi-course-section-card">
                                <h3>Overview</h3>
                                <h4>Course Description</h4>
                                <p><asp:Literal ID="litDescription" runat="server" /></p>
                                <h4>Course Structure</h4>
                                <p><asp:Literal ID="litStructure" runat="server" /></p>
                                <p>You must complete all required units to be awarded the full qualification. A nationally recognised Statement of Attainment is issued for any individual units completed where the full qualification is not finished (USI verification required).</p>
                                <h4>Assessment</h4>
                                <p><asp:Literal ID="litAssessment" runat="server" /></p>
                                <p class="bi-course-note"><asp:Literal ID="litDisclaimer" runat="server" /></p>
                            </div>

                            <div class="bi-course-section-card">
                                <h3>Units</h3>
                                <div class="bi-table-wrap">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Unit Code</th>
                                                <th>Unit Title</th>
                                                <th>Type</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="rptUnits" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# Eval("Code") %></td>
                                                        <td><%# Eval("Title") %></td>
                                                        <td><span class="bi-unit-type <%# Eval("Type").ToString().ToLower() %>"><%# Eval("Type") %></span></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="bi-course-section-card">
                                <h3>Outcomes</h3>
                                <h4>Career Outcomes</h4>
                                <p><asp:Literal ID="litCareers" runat="server" /></p>
                                <h4>Pathways</h4>
                                <p><asp:Literal ID="litPathways" runat="server" /></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-5">
                        <div class="bi-course-sidebar">
                            <div class="bi-sidebar-widget">
                                <h4>Other Courses</h4>
                                <ul>
                                    <asp:Repeater ID="rptOtherCourses" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">
                                                    <span class="code"><%# Eval("Code") %></span>
                                                    <span class="title"><%# Eval("Title") %></span>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <div class="bi-sidebar-widget bi-sidebar-cta">
                                <h4>Need Help?</h4>
                                <p>Contact our admissions team for enrolment information, intake dates and course advice.</p>
                                <a href="Contact.aspx" class="btn btn-theme effect btn-md">Contact Admissions</a>
                                <a href="Downloads.aspx" class="btn btn-dark border btn-md">Download Centre</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlNotFound" runat="server" Visible="false">
        <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
            <div class="container">
                <h1>Course Not Found</h1>
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="Courses.aspx">Courses</a></li>
                    <li class="active">Not Found</li>
                </ul>
            </div>
        </div>
        <div class="bi-course-detail-page bi-course-not-found">
            <div class="container text-center">
                <div class="bi-content-card">
                    <h3>Course Not Found</h3>
                    <p>The course you are looking for could not be found. Browse our full list of business qualifications.</p>
                    <div class="bi-btn-group bi-btn-group-center">
                        <a href="Courses.aspx" class="btn btn-theme effect btn-md">View All Courses</a>
                        <a href="Contact.aspx" class="btn btn-dark border btn-md">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
