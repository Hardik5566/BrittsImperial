<%@ Page Title="Course Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course_Detail.aspx.cs" Inherits="Course_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <asp:Literal ID="litPageTitle" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <asp:Panel ID="pnlCourse" runat="server">
        <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h1><asp:Literal ID="litBreadcrumbTitle" runat="server" /></h1>
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                            <li><a href="Courses.aspx">Courses</a></li>
                            <li class="active"><asp:Literal ID="litBreadcrumbCode" runat="server" /></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="course-details-area default-padding bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="courses-info bi-content-card" style="padding:35px;">
                            <h2><asp:Literal ID="litTitle" runat="server" /></h2>
                            <div class="course-meta">
                                <div class="item category">
                                    <h4>Qualification Code</h4>
                                    <asp:Literal ID="litCode" runat="server" />
                                </div>
                                <div class="item category">
                                    <h4>Level</h4>
                                    <asp:Literal ID="litLevel" runat="server" />
                                </div>
                                <div class="item category">
                                    <h4>Units</h4>
                                    <asp:Literal ID="litUnitCount" runat="server" />
                                </div>
                                <div class="align-right">
                                    <a class="btn btn-theme effect btn-sm" href="Enrolment.aspx"><i class="fas fa-edit"></i> Enrol</a>
                                    <a class="btn btn-dark effect btn-sm" href="Contact.aspx"><i class="fas fa-envelope"></i> Enquire</a>
                                </div>
                            </div>

                            <div class="tab-info">
                                <ul class="nav nav-pills">
                                    <li class="active"><a data-toggle="tab" href="#tab1">Overview</a></li>
                                    <li><a data-toggle="tab" href="#tab2">Units of Competency</a></li>
                                    <li><a data-toggle="tab" href="#tab3">Outcomes &amp; Pathways</a></li>
                                </ul>
                                <div class="tab-content tab-content-info">
                                    <div id="tab1" class="tab-pane fade active in">
                                        <div class="info title">
                                            <h4>Course Description</h4>
                                            <p><asp:Literal ID="litDescription" runat="server" /></p>
                                            <h4>Course Structure</h4>
                                            <p><asp:Literal ID="litStructure" runat="server" /></p>
                                            <p>You must complete all required units to be awarded the full qualification. A nationally recognised Statement of Attainment is issued for any individual units completed where the full qualification is not finished (USI verification required).</p>
                                            <h4>Assessment</h4>
                                            <p><asp:Literal ID="litAssessment" runat="server" /></p>
                                            <p><asp:Literal ID="litDisclaimer" runat="server" /></p>
                                        </div>
                                    </div>
                                    <div id="tab2" class="tab-pane fade">
                                        <div class="info title">
                                            <h4>Units of Competency</h4>
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Unit Code</th>
                                                            <th>Unit Title</th>
                                                            <th>Core / Elective</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="rptUnits" runat="server">
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td><%# Eval("Code") %></td>
                                                                    <td><%# Eval("Title") %></td>
                                                                    <td><%# Eval("Type") %></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="tab3" class="tab-pane fade">
                                        <div class="info title">
                                            <h4>Career Outcomes</h4>
                                            <p><asp:Literal ID="litCareers" runat="server" /></p>
                                            <h4>Pathways</h4>
                                            <p><asp:Literal ID="litPathways" runat="server" /></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="sidebar">
                            <div class="widget">
                                <h4>Other Courses</h4>
                                <ul class="list-unstyled">
                                    <asp:Repeater ID="rptOtherCourses" runat="server">
                                        <ItemTemplate>
                                            <li><a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>"><%# Eval("Code") %> – <%# Eval("Title") %></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <div class="widget">
                                <h4>Need Help?</h4>
                                <p>Contact our admissions team for enrolment information.</p>
                                <a href="Contact.aspx" class="btn btn-theme effect btn-sm btn-block">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlNotFound" runat="server" Visible="false">
        <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
            <div class="container"><h1>Course Not Found</h1></div>
        </div>
        <div class="default-padding text-center">
            <div class="container">
                <p>The course you are looking for could not be found.</p>
                <a href="Courses.aspx" class="btn btn-theme effect btn-md">View All Courses</a>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
