<%@ Page Title="Enrolment" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Enrolment.aspx.cs" Inherits="Enrolment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Enrolment</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>Enrolment</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#">Studying With Us</a></li>
                <li class="active">Enrolment</li>
            </ul>
        </div>
    </div>

    <div class="bi-enrolment-page">
        <section class="bi-enrol-intro">
            <div class="container">
                <div class="bi-enrol-intro-grid">
                    <div class="bi-enrol-intro-copy">
                        <span class="bi-rto-badge">Start Your Journey</span>
                        <h2>Enrolling at Britts Imperial is Simple</h2>
                        <p>We guide you through every step, from your first enquiry to orientation day, so you can focus on building the skills that matter.</p>
                    </div>
                    <div class="bi-enrol-intro-highlights">
                        <div class="bi-enrol-highlight">
                            <div class="bi-enrol-highlight-icon"><i class="ti-clipboard"></i></div>
                            <div>
                                <strong>Pre-Training Review</strong>
                                <span>Confirm the course is right for you</span>
                            </div>
                        </div>
                        <div class="bi-enrol-highlight">
                            <div class="bi-enrol-highlight-icon"><i class="ti-pencil-alt"></i></div>
                            <div>
                                <strong>LLND Assessment</strong>
                                <span>Language, literacy, numeracy &amp; digital</span>
                            </div>
                        </div>
                        <div class="bi-enrol-highlight">
                            <div class="bi-enrol-highlight-icon"><i class="ti-id-badge"></i></div>
                            <div>
                                <strong>USI Required</strong>
                                <span>Australian Government identifier</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-enrol-info">
            <div class="container">
                <div class="site-heading text-center bi-enrol-heading">
                    <h2>What You Need to Know</h2>
                    <p>Everything you need before you begin your studies with us.</p>
                </div>

                <div class="bi-enrol-info-grid">
                    <div class="bi-enrol-info-card">
                        <div class="bi-enrol-info-icon"><i class="ti-check-box"></i></div>
                        <h3>Before You Enrol</h3>
                        <p>All applicants complete a pre-training review and a Language, Literacy, Numeracy and Digital (LLND) assessment, so we can confirm the course is right for you and arrange any support you may need.</p>
                    </div>
                    <div class="bi-enrol-info-card">
                        <div class="bi-enrol-info-icon"><i class="ti-medall"></i></div>
                        <h3>Eligibility</h3>
                        <p>There are no formal entry requirements under the training package for these qualifications. Britts Imperial applies its own entry requirements, including a satisfactory LLN result and basic digital literacy, confirmed during pre-enrolment and set out in the Student Handbook.</p>
                    </div>
                    <div class="bi-enrol-info-card">
                        <div class="bi-enrol-info-icon"><i class="ti-user"></i></div>
                        <h3>Unique Student Identifier (USI)</h3>
                        <p>Under Australian Government requirements, every student undertaking nationally recognised training must have a USI before we can issue a qualification or statement of attainment. Create yours free at <a href="https://www.usi.gov.au" target="_blank">usi.gov.au</a>, or we can help you during enrolment.</p>
                    </div>
                    <div class="bi-enrol-info-card bi-enrol-info-card--checklist">
                        <div class="bi-enrol-info-icon"><i class="ti-briefcase"></i></div>
                        <h3>What to Bring</h3>
                        <ul class="bi-enrol-checklist">
                            <li><i class="fas fa-check"></i> Photo identification (driver licence or passport)</li>
                            <li><i class="fas fa-check"></i> Your USI (or details to create one)</li>
                            <li><i class="fas fa-check"></i> Evidence of prior study or experience for credit transfer (CT) or RPL</li>
                            <li><i class="fas fa-check"></i> A completed enrolment form</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-enrol-process">
            <div class="container">
                <div class="site-heading text-center bi-enrol-heading bi-enrol-heading--light">
                    <h2>How to Enrol</h2>
                    <p>Four straightforward steps from enquiry to your first day of study.</p>
                </div>

                <div class="bi-enrol-steps">
                    <div class="bi-enrol-step">
                        <div class="bi-enrol-step-num">1</div>
                        <h4>Submit an Enquiry</h4>
                        <p>Request an enrolment form or speak with our admissions team.</p>
                    </div>
                    <div class="bi-enrol-step">
                        <div class="bi-enrol-step-num">2</div>
                        <h4>Complete Assessments</h4>
                        <p>Finish the pre-training review and LLND assessment.</p>
                    </div>
                    <div class="bi-enrol-step">
                        <div class="bi-enrol-step-num">3</div>
                        <h4>Sign Your Agreement</h4>
                        <p>Receive and sign your written enrolment agreement confirming course, fees and rights.</p>
                    </div>
                    <div class="bi-enrol-step">
                        <div class="bi-enrol-step-num">4</div>
                        <h4>Begin Studying</h4>
                        <p>Attend orientation and start your qualification journey.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-enrol-cta">
            <div class="container">
                <div class="bi-enrol-cta-inner">
                    <div class="bi-enrol-cta-copy">
                        <h2>Ready to Get Started?</h2>
                        <p>Contact us to request an enrolment form or speak with our admissions team today.</p>
                    </div>
                    <div class="bi-enrol-cta-actions">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Request Enrolment Form</a>
                        <a href="Downloads.aspx" class="btn btn-light border effect btn-md"><i class="fas fa-download"></i> Download Centre</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
