<%@ Page Title="Calendar Dates" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="CalendarPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Calendar Dates</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Calendar Dates</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Calendar Dates</li>
            </ul>
        </div>
    </div>

    <div class="bi-calendar-page">
        <section class="bi-cal-premium">
            <div class="container">
                <div class="bi-cal-premium-layout">
                    <div class="bi-cal-premium-visual">
                        <div class="bi-cal-frame">
                            <img src="assets/img/college-students-about.jpg" alt="Students at Britts Imperial College Australia" />
                        </div>
                        <div class="bi-cal-visual-note">
                            <i class="fas fa-calendar-alt"></i>
                            <span>Regular intakes throughout the year</span>
                        </div>
                    </div>

                    <div class="bi-cal-premium-content">
                        <p class="bi-cal-eyebrow">Academic Calendar</p>
                        <h2>Course Intakes and Term Dates</h2>
                        <p class="bi-cal-lead">
                            Britts Imperial offers regular course intakes throughout the year. Intake and term dates can change, so please
                            <a href="Contact.aspx">contact us</a> for the current schedule of upcoming start dates or refer to the term calendar in the
                            <a href="Downloads.aspx">Download Centre</a>.
                        </p>

                        <div class="bi-cal-premium-tiles">
                            <a href="Contact.aspx" class="bi-cal-tile">
                                <div class="bi-cal-tile-head">
                                    <span class="bi-cal-tile-icon"><i class="fas fa-envelope"></i></span>
                                    <span class="bi-cal-tile-go"><i class="fas fa-arrow-right"></i></span>
                                </div>
                                <h3>Contact Us</h3>
                                <p>Request the current schedule of upcoming start dates for your course.</p>
                            </a>
                            <a href="Downloads.aspx" class="bi-cal-tile">
                                <div class="bi-cal-tile-head">
                                    <span class="bi-cal-tile-icon"><i class="fas fa-download"></i></span>
                                    <span class="bi-cal-tile-go"><i class="fas fa-arrow-right"></i></span>
                                </div>
                                <h3>Download Centre</h3>
                                <p>Access the term calendar, timetables and enrolment documents.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
