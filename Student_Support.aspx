<%@ Page Title="Student Support Services" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student_Support.aspx.cs" Inherits="Student_Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Student Support Services</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Student Support Services</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Student Support</li>
            </ul>
        </div>
    </div>
    <div class="bi-content-section">
        <div class="container">
            <div class="col-md-10 col-md-offset-1">
                <div class="bi-content-card">
                    <p style="font-size:17px;font-weight:500;color:var(--bi-navy);">Your success matters to us. Britts Imperial provides a range of support services to help you complete your studies.</p>
                    <div class="bi-info-grid">
                        <div class="bi-info-card">
                            <div class="icon"><i class="ti-book"></i></div>
                            <h4>LLND Support</h4>
                            <p>Additional help for students identified through the pre-training LLN assessment.</p>
                        </div>
                        <div class="bi-info-card">
                            <div class="icon"><i class="ti-wheelchair"></i></div>
                            <h4>Reasonable Adjustment</h4>
                            <p>We make reasonable adjustments to support students with disability or additional needs.</p>
                        </div>
                        <div class="bi-info-card">
                            <div class="icon"><i class="ti-blackboard"></i></div>
                            <h4>Academic Support</h4>
                            <p>Guidance from trainers and assessors, study-skills help and access to learning resources.</p>
                        </div>
                        <div class="bi-info-card">
                            <div class="icon"><i class="ti-heart"></i></div>
                            <h4>Welfare &amp; Wellbeing</h4>
                            <p>Referral to external counselling, health and welfare services when needed.</p>
                        </div>
                    </div>
                    <p>If you need support, contact our student support team or speak with your trainer.</p>
                    <div class="bi-btn-group">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md">Contact Student Support</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
