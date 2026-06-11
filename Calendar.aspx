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
        <div class="container">
            <div class="bi-cal-card">
                <div class="bi-cal-card-icon">
                    <i class="fas fa-calendar-alt"></i>
                </div>
                <h2>Course Intakes &amp; Term Dates</h2>
                <p class="bi-cal-card-text">
                    Britts Imperial offers regular course intakes throughout the year. Intake and term dates can change, so please
                    <a href="Contact.aspx">contact us</a> for the current schedule of upcoming start dates or refer to the term calendar in the
                    <a href="Downloads.aspx">Download Centre</a>.
                </p>
                <div class="bi-cal-actions">
                    <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Contact Us</a>
                    <a href="Downloads.aspx" class="btn btn-dark border btn-md"><i class="fas fa-download"></i> Download Centre</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
