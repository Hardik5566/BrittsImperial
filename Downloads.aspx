<%@ Page Title="Download Centre" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Downloads.aspx.cs" Inherits="Downloads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Download Centre</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Download Centre</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Download Centre</li>
            </ul>
        </div>
    </div>
    <div class="bi-content-section">
        <div class="container">
            <div class="col-md-10 col-md-offset-1">
                <div class="bi-content-card">
                    <p style="font-size:17px;font-weight:500;color:var(--bi-navy);">Find the forms and documents you need in one place.</p>
                    <div class="bi-table-wrap">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr><th>Document</th><th>Description</th><th>Download</th></tr>
                            </thead>
                            <tbody>
                                <tr><td>Student Handbook</td><td>Essential information for all students</td><td><a href="assets/downloads/student-handbook.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Enrolment Form</td><td>Application form for new students</td><td><a href="assets/downloads/enrolment-form.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Credit Transfer / RPL Application</td><td>Apply for recognition of prior learning</td><td><a href="assets/downloads/credit-transfer-rpl.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Complaints and Appeals Form</td><td>Submit a complaint or appeal</td><td><a href="assets/downloads/complaints-appeals.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Term Calendar</td><td>Current intake and term dates</td><td><a href="assets/downloads/term-calendar.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Privacy Policy</td><td>How we handle your personal information</td><td><a href="assets/downloads/privacy-policy.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Fees, Charges and Refunds Policy</td><td>Fee and refund information</td><td><a href="assets/downloads/fees-refunds-policy.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Assessment Policy</td><td>Assessment principles and procedures</td><td><a href="assets/downloads/assessment-policy.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                                <tr><td>Access and Equity Policy</td><td>Fair access to training for all</td><td><a href="assets/downloads/access-equity-policy.pdf" target="_blank"><i class="fas fa-file-pdf"></i> PDF</a></td></tr>
                            </tbody>
                        </table>
                    </div>
                    <p>Can't find what you need? <a href="Contact.aspx">Contact us</a> and we'll help.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
