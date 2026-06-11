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

    <div class="bi-downloads-page">
        <section class="bi-dl-intro">
            <div class="container">
                <div class="bi-dl-intro-layout">
                    <div class="bi-dl-intro-content">
                        <p class="bi-dl-eyebrow">Forms and Documents</p>
                        <h2>Download Centre</h2>
                        <p class="bi-dl-lead">Find the forms and documents you need in one place.</p>
                        <div class="bi-dl-badge">
                            <i class="fas fa-folder-open"></i>
                            <span>Student forms, policies and resources</span>
                        </div>
                    </div>
                    <div class="bi-dl-intro-visual">
                        <div class="bi-dl-frame">
                            <img src="assets/img/Enroll_online_bg.jpg" alt="Enrolment documents and forms at Britts Imperial" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-dl-documents">
            <div class="container">
                <div class="bi-dl-section-head">
                    <h3>Available Downloads</h3>
                    <p>Access key documents for enrolment, study and student support.</p>
                </div>

                <div class="bi-dl-grid">
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Student Handbook</h4>
                        <a href="assets/downloads/student-handbook.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Enrolment Form</h4>
                        <a href="assets/downloads/enrolment-form.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Credit Transfer / RPL Application</h4>
                        <a href="assets/downloads/credit-transfer-rpl.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Complaints and Appeals Form</h4>
                        <a href="assets/downloads/complaints-appeals.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Course Timetables and Term Calendar</h4>
                        <a href="assets/downloads/term-calendar.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Privacy Policy</h4>
                        <a href="assets/downloads/privacy-policy.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Fees, Charges and Refunds Policy</h4>
                        <a href="assets/downloads/fees-refunds-policy.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Assessment Policy</h4>
                        <a href="assets/downloads/assessment-policy.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                    <div class="bi-dl-doc">
                        <div class="bi-dl-doc-pdf"><i class="fas fa-file-pdf"></i></div>
                        <h4>Access and Equity Policy</h4>
                        <a href="assets/downloads/access-equity-policy.pdf" class="bi-dl-download-btn" target="_blank" download><i class="fas fa-file-pdf"></i> Download</a>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-dl-cta">
            <div class="container">
                <div class="bi-dl-cta-inner">
                    <div class="bi-dl-cta-copy">
                        <h3>Cannot Find What You Need?</h3>
                        <p>
                            <a href="Contact.aspx">Contact us</a> and we will help you get the right document.
                        </p>
                    </div>
                    <div class="bi-dl-cta-actions">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Contact Us</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
