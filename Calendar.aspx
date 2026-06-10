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
    <div class="bi-content-section">
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <div class="bi-content-card text-center">
                    <div class="bi-info-card" style="margin-bottom:25px;">
                        <div class="icon" style="margin:0 auto 18px;"><i class="ti-calendar"></i></div>
                        <h4>Course Intakes &amp; Term Dates</h4>
                        <p>Britts Imperial offers regular course intakes throughout the year. Intake and term dates can change, so please contact us for the current schedule of upcoming start dates or refer to the term calendar in the Download Centre.</p>
                    </div>
                    <div class="bi-btn-group" style="justify-content:center;">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md">Contact for Current Schedule</a>
                        <a href="Downloads.aspx" class="btn btn-dark border btn-md">Download Term Calendar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
