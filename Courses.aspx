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



    <div class="bi-courses-page popular-courses-area">

        <div class="container">

            <div class="site-heading text-center bi-courses-heading">

                <h2>Business Qualifications</h2>

                <p>Nationally recognised qualifications from Certificate III through to Advanced Diploma, delivered under RTO Code 5015.</p>

            </div>



            <div class="top-course-items bi-courses-list">

                <asp:Repeater ID="rptCourses" runat="server">

                    <ItemTemplate>

                        <div class="bi-course-card equal-height">

                            <div class="item">

                                <div class="thumb">

                                    <div class="bi-course-thumb">

                                        <img src="<%# CourseData.GetThumbImage((string)Eval("Code")) %>" alt="<%# Eval("Title") %>" />

                                    </div>

                                    <div class="overlay">

                                        <a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">

                                            <i class="ti-arrow-right"></i>

                                        </a>

                                    </div>

                                </div>

                                <div class="info">

                                    <div class="meta">

                                        <ul>

                                            <li><a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>"><%# Eval("Code") %></a></li>

                                        </ul>

                                    </div>

                                    <h4><a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>"><%# Eval("Title") %></a></h4>

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

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>

