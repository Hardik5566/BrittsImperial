<%@ Page Title="Policies" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Policies.aspx.cs" Inherits="Policies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Policies</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Policies</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Policies</li>
            </ul>
        </div>
    </div>

    <div class="bi-policies-page">
        <section class="bi-policy-intro-section">
            <div class="container">
                <div class="bi-policy-intro-layout">
                    <div class="bi-policy-intro-content">
                        <p class="bi-policy-eyebrow">Student Rights and Compliance</p>
                        <h2>Policies and Procedures</h2>
                        <p class="bi-policy-lead">
                            Britts Imperial operates under a clear set of policies and procedures that protect your rights as a student and meet our obligations under the Standards for Registered Training Organisations.
                        </p>
                        <div class="bi-policy-trust-badge">
                            <i class="fas fa-shield-alt"></i>
                            <span>Regulated training under ASQA standards</span>
                        </div>
                    </div>
                    <div class="bi-policy-intro-visual">
                        <div class="bi-policy-frame">
                            <img src="assets/img/college-students-about.jpg" alt="Britts Imperial College Australia students" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-policy-list-section">
            <div class="container">
                <div class="bi-policy-section-head">
                    <h3>Key Policies</h3>
                    <p>Our core policies that govern your training experience and protect your rights.</p>
                </div>

                <div class="bi-policy-grid">
                    <div class="bi-policy-item">
                        <div class="bi-policy-item-icon"><i class="fas fa-balance-scale"></i></div>
                        <h4>Complaints and Appeals</h4>
                        <p>A fair, transparent process for raising concerns and appealing decisions, including access to an independent external party.</p>
                    </div>
                    <div class="bi-policy-item">
                        <div class="bi-policy-item-icon"><i class="fas fa-user-shield"></i></div>
                        <h4>Privacy</h4>
                        <p>How we collect, use, store and protect your personal information in line with the Privacy Act and the Australian Privacy Principles.</p>
                    </div>
                    <div class="bi-policy-item">
                        <div class="bi-policy-item-icon"><i class="fas fa-file-invoice-dollar"></i></div>
                        <h4>Fees, Charges and Refunds</h4>
                        <p>What you pay, when, and your refund entitlements.</p>
                    </div>
                    <div class="bi-policy-item">
                        <div class="bi-policy-item-icon"><i class="fas fa-clipboard-check"></i></div>
                        <h4>Assessment</h4>
                        <p>How assessment is conducted fairly and validly, in line with the principles of assessment and the rules of evidence.</p>
                    </div>
                    <div class="bi-policy-item bi-policy-item--wide">
                        <div class="bi-policy-item-icon"><i class="fas fa-users"></i></div>
                        <div class="bi-policy-item-body">
                            <h4>Access and Equity</h4>
                            <p>Our commitment to fair and equal access to training, regardless of background.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-policy-cta">
            <div class="container">
                <div class="bi-policy-cta-inner">
                    <div class="bi-policy-cta-copy">
                        <h3>Need a Full Copy?</h3>
                        <p>
                            Full copies of these policies are available in the
                            <a href="Downloads.aspx">Download Centre</a> or on request.
                        </p>
                    </div>
                    <div class="bi-policy-cta-actions">
                        <a href="Downloads.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-download"></i> Download Centre</a>
                        <a href="Contact.aspx" class="btn btn-light border effect btn-md"><i class="fas fa-envelope"></i> Request a Copy</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
