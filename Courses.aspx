<%@ Page Title="Courses" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Courses</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Our Courses</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li class="active">Courses</li>
            </ul>
        </div>
    </div>

    <div class="popular-courses-area weekly-top-items bg-gray default-padding bottom-less">
        <div class="container">
            <div class="row">
                <div class="site-heading text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h2>Business Qualifications</h2>
                        <p>Nationally recognised qualifications from Certificate III through to Advanced Diploma, delivered under RTO Code 5015.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="top-course-items">
                    <asp:Repeater ID="rptCourses" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-6 equal-height">
                                <div class="item">
                                    <div class="bi-course-thumb <%# CourseData.GetThumbClass((string)Eval("Code")) %>">
                                        <span class="level-badge"><%# Eval("Level") %></span>
                                        <i class="<%# CourseData.GetThumbIcon((string)Eval("Code")) %>"></i>
                                    </div>
                                    <div class="info">
                                        <div class="meta"><ul><li><a href="#"><%# Eval("Code") %></a></li></ul></div>
                                        <h4><a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>"><%# Eval("Title") %></a></h4>
                                        <p><%# Eval("ShortDescription") %></p>
                                        <div class="footer-meta">
                                            <a class="btn btn-theme effect btn-sm" href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">View Details</a>
                                            <a class="btn btn-dark border btn-sm" href="Enrolment.aspx">Enrol</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
