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

    <div class="bi-support-page">
        <section class="bi-support-intro">
            <div class="container">
                <div class="bi-support-intro-grid">
                    <div class="bi-support-intro-copy">
                        <span class="bi-rto-badge">We Are Here For You</span>
                        <h2>Your Success Matters to Us</h2>
                        <p>Britts Imperial provides a range of support services to help you complete your studies with confidence, from academic guidance to wellbeing referrals.</p>
                        <div class="bi-support-stats">
                            <div class="bi-support-stat">
                                <strong>4+</strong>
                                <span>Support Services</span>
                            </div>
                            <div class="bi-support-stat">
                                <strong>LLND</strong>
                                <span>Targeted Help</span>
                            </div>
                            <div class="bi-support-stat">
                                <strong>1:1</strong>
                                <span>Trainer Guidance</span>
                            </div>
                        </div>
                    </div>
                    <div class="bi-support-intro-visual">
                        <div class="bi-support-photo-main">
                            <img src="image/Student_image.jpg" alt="Students receiving support at Britts Imperial College Australia" />
                            <div class="bi-support-photo-accent">
                                <img src="assets/img/college-students.jpg" alt="Students collaborating on campus" />
                            </div>
                            <div class="bi-support-photo-badge">
                                <i class="ti-headphone-alt"></i>
                                <span>Dedicated Support Team</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-support-services">
            <div class="container">
                <div class="site-heading text-center bi-support-heading">
                    <h2>How We Support You</h2>
                    <p>Practical, accessible services designed to help every student succeed in their qualification.</p>
                </div>

                <div class="bi-support-cards">
                    <div class="bi-support-card">
                        <div class="bi-support-card-icon"><i class="ti-book"></i></div>
                        <h3>LLND Support</h3>
                        <p>Additional help for students identified through the pre-training Language, Literacy, Numeracy and Digital (LLND) assessment.</p>
                    </div>
                    <div class="bi-support-card">
                        <div class="bi-support-card-icon"><i class="ti-wheelchair"></i></div>
                        <h3>Reasonable Adjustment</h3>
                        <p>We make reasonable adjustments to support students with disability or additional needs throughout their training.</p>
                    </div>
                    <div class="bi-support-card">
                        <div class="bi-support-card-icon"><i class="ti-blackboard"></i></div>
                        <h3>Academic Support</h3>
                        <p>Guidance from trainers and assessors, study-skills help and access to learning resources when you need them.</p>
                    </div>
                    <div class="bi-support-card">
                        <div class="bi-support-card-icon"><i class="ti-heart"></i></div>
                        <h3>Welfare &amp; Wellbeing</h3>
                        <p>Referral to external counselling, health and welfare services when you need professional support beyond the classroom.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-support-help">
            <div class="container">
                <div class="bi-support-help-grid">
                    <div class="bi-support-help-photo">
                        <img src="assets/img/college-students-about.jpg" alt="Britts Imperial students in a supportive learning environment" />
                        <div class="bi-support-quote-card">
                            <div class="bi-support-quote-icon"><i class="fas fa-quote-left"></i></div>
                            <p>Support is built into your learning journey, not added on at the end.</p>
                        </div>
                    </div>
                    <div class="bi-support-help-copy">
                        <span class="bi-rto-badge">Getting Help</span>
                        <h2>Need Support? Here Is How</h2>
                        <p>If you need assistance at any point during your course, reach out and we will guide you to the right help quickly.</p>
                        <ul class="bi-support-help-list">
                            <li>
                                <span class="bi-support-help-list-icon"><i class="fas fa-user"></i></span>
                                <div>
                                    <strong>Speak with your trainer</strong>
                                    <span class="bi-support-help-list-text">Raise questions during class or schedule a one-on-one conversation.</span>
                                </div>
                            </li>
                            <li>
                                <span class="bi-support-help-list-icon"><i class="fas fa-envelope"></i></span>
                                <div>
                                    <strong>Contact student support</strong>
                                    <span class="bi-support-help-list-text">Our admissions and support team can assist with enrolment, LLND and welfare referrals.</span>
                                </div>
                            </li>
                            <li>
                                <span class="bi-support-help-list-icon"><i class="fas fa-folder-open"></i></span>
                                <div>
                                    <strong>Access resources</strong>
                                    <span class="bi-support-help-list-text">Find policies, forms and the Student Handbook in the Download Centre.</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-support-promise">
            <div class="container">
                <div class="bi-support-promise-grid">
                    <div class="bi-support-promise-item">
                        <i class="ti-shield"></i>
                        <h4>Fair &amp; Inclusive</h4>
                        <p>Committed to access and equity for all learners, regardless of background.</p>
                    </div>
                    <div class="bi-support-promise-item">
                        <i class="ti-time"></i>
                        <h4>Available Throughout</h4>
                        <p>Support services are available for the full duration of your course.</p>
                    </div>
                    <div class="bi-support-promise-item">
                        <i class="ti-direction-alt"></i>
                        <h4>Clear Pathways</h4>
                        <p>We connect you to the right internal or external support without delay.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-support-cta">
            <div class="container">
                <div class="bi-support-cta-inner">
                    <div class="bi-support-cta-copy">
                        <h2>We Are Ready to Help</h2>
                        <p>Contact our student support team or speak with your trainer. We are here to help you succeed.</p>
                    </div>
                    <div class="bi-support-cta-actions">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Contact Student Support</a>
                        <a href="Downloads.aspx" class="btn btn-dark border btn-md"><i class="fas fa-download"></i> Download Centre</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
