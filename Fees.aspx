<%@ Page Title="Fees" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Fees</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Fees</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Fees</li>
            </ul>
        </div>
    </div>

    <div class="bi-fees-page">
        <section class="bi-fees-intro">
            <div class="container">
                <div class="bi-fees-intro-grid">
                    <div class="bi-fees-intro-copy">
                        <span class="bi-rto-badge">Transparent Pricing</span>
                        <h2>Understand Your Course Fees</h2>
                        <p>Course fees vary by qualification and are always confirmed before you enrol, so you know exactly what you are committing to from day one.</p>
                        <div class="bi-fees-stats">
                            <div class="bi-fees-stat">
                                <strong><i class="fas fa-graduation-cap"></i></strong>
                                <span>Per Qualification</span>
                            </div>
                            <div class="bi-fees-stat">
                                <strong><i class="fas fa-file-signature"></i></strong>
                                <span>Confirmed Before Enrol</span>
                            </div>
                            <div class="bi-fees-stat">
                                <strong><i class="fas fa-shield-alt"></i></strong>
                                <span>ASQA Aligned</span>
                            </div>
                        </div>
                    </div>
                    <div class="bi-fees-intro-visual">
                        <div class="bi-fees-photo-main">
                            <img src="assets/img/college-students-about.jpg" alt="Students at Britts Imperial College Australia" />
                            <div class="bi-fees-photo-accent">
                                <img src="image/Student_image.jpg" alt="Britts Imperial students on campus" />
                            </div>
                            <div class="bi-fees-photo-badge">
                                <i class="fas fa-dollar-sign"></i>
                                <span>Fees Confirmed Before Enrolment</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-fees-cards-section">
            <div class="container">
                <div class="site-heading text-center bi-fees-heading">
                    <h2>Fee Information</h2>
                    <p>Everything you need to know about course fees, payments and your refund rights.</p>
                </div>

                <div class="bi-fees-main-cards">
                    <div class="bi-fees-main-card">
                        <div class="bi-fees-main-card-icon"><i class="fas fa-book-open"></i></div>
                        <h3>Course Fees</h3>
                        <p>Course fees vary by qualification and are confirmed before you enrol. Please contact us for current fee information for the course you are interested in.</p>
                        <ul class="bi-fees-card-list">
                            <li><i class="fas fa-check"></i> Fees differ by qualification level</li>
                            <li><i class="fas fa-check"></i> Confirmed in writing before enrolment</li>
                            <li><i class="fas fa-check"></i> No hidden charges beyond your agreement</li>
                        </ul>
                    </div>
                    <div class="bi-fees-main-card">
                        <div class="bi-fees-main-card-icon"><i class="fas fa-credit-card"></i></div>
                        <h3>Payment and Refunds</h3>
                        <p>Your fees, payment terms and refund entitlements are set out in your written enrolment agreement and in our Fees, Charges and Refunds Policy, in line with the Standards for Registered Training Organisations.</p>
                        <ul class="bi-fees-card-list">
                            <li><i class="fas fa-check"></i> Payment terms in your enrolment agreement</li>
                            <li><i class="fas fa-check"></i> Clear refund entitlements explained upfront</li>
                            <li><i class="fas fa-check"></i> Full policy available in the Download Centre</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-fees-details">
            <div class="container">
                <div class="bi-fees-details-grid">
                    <div class="bi-fees-details-photo">
                        <img src="assets/img/Enroll_online_bg.jpg" alt="Enrolment and fee information at Britts Imperial" />
                        <div class="bi-fees-quote-card">
                            <div class="bi-fees-quote-icon"><i class="fas fa-quote-left"></i></div>
                            <p>Your fees and rights are always set out clearly in writing before you commit.</p>
                        </div>
                    </div>
                    <div class="bi-fees-details-copy">
                        <span class="bi-rto-badge">Your Rights</span>
                        <h2>What You Can Expect</h2>
                        <p>Britts Imperial follows the Standards for Registered Training Organisations so your fee information is fair, transparent and easy to understand.</p>
                        <ul class="bi-fees-details-list">
                            <li>
                                <span class="bi-fees-details-list-icon"><i class="fas fa-file-contract"></i></span>
                                <div>
                                    <strong>Written enrolment agreement</strong>
                                    <span class="bi-fees-details-list-text">Your course, fees and student rights are confirmed in a signed agreement before training begins.</span>
                                </div>
                            </li>
                            <li>
                                <span class="bi-fees-details-list-icon"><i class="fas fa-hand-holding-usd"></i></span>
                                <div>
                                    <strong>Clear payment terms</strong>
                                    <span class="bi-fees-details-list-text">Payment schedules and amounts are explained upfront so there are no surprises.</span>
                                </div>
                            </li>
                            <li>
                                <span class="bi-fees-details-list-icon"><i class="fas fa-undo-alt"></i></span>
                                <div>
                                    <strong>Refund entitlements</strong>
                                    <span class="bi-fees-details-list-text">Your refund rights are set out in our Fees, Charges and Refunds Policy, available on request or in the Download Centre.</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-fees-promise">
            <div class="container">
                <div class="bi-fees-promise-grid">
                    <div class="bi-fees-promise-item">
                        <i class="fas fa-file-alt"></i>
                        <h4>Written Agreement</h4>
                        <p>All fees and conditions are documented before you start your course.</p>
                    </div>
                    <div class="bi-fees-promise-item">
                        <i class="fas fa-balance-scale"></i>
                        <h4>Fair and Compliant</h4>
                        <p>Our fee practices meet the Standards for Registered Training Organisations.</p>
                    </div>
                    <div class="bi-fees-promise-item">
                        <i class="fas fa-download"></i>
                        <h4>Policy Available</h4>
                        <p>Download the Fees, Charges and Refunds Policy from our Download Centre.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-fees-cta">
            <div class="container">
                <div class="bi-fees-cta-inner">
                    <div class="bi-fees-cta-copy">
                        <h2>Need Current Fee Information?</h2>
                        <p>Contact us for up-to-date course fees or download our Fees, Charges and Refunds Policy.</p>
                    </div>
                    <div class="bi-fees-cta-actions">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Request Fee Information</a>
                        <a href="Downloads.aspx" class="btn btn-dark border btn-md"><i class="fas fa-download"></i> Fees and Refunds Policy</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
