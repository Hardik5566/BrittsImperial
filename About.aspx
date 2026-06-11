<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">About Us</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="breadcrumb-area shadow dark text-center text-light bi-page-hero">
        <div class="container">
            <h1>About Us</h1>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="fas fa-home"></i> Home</a></li>
                <li class="active">About Us</li>
            </ul>
        </div>
    </div>

    <div class="about-area bi-about-page default-padding">
        <div class="container">
            <div class="row about-items">
                <div class="col-md-6 col-sm-12 col-xs-12 about-info">
                    <span class="bi-rto-badge">RTO Code 5015</span>
                    <h2>Why Choose <span>Britts Imperial</span></h2>
                    <p>Britts Imperial College Australia is a privately operated registered training organisation focused on quality business education and practical, job-ready skills.</p>
                    <blockquote>
                        We deliver nationally recognised qualifications under the Australian Qualifications Framework, regulated by the Australian Skills Quality Authority (ASQA).
                    </blockquote>
                    <div class="bi-btn-group">
                        <a class="btn btn-theme effect btn-md" href="Enrolment.aspx">Start Enrolment</a>
                        <a class="btn btn-dark border btn-md" href="Contact.aspx">Contact Us</a>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12 thumb">
                    <img src="image/Student_image.jpg" alt="Students at Britts Imperial College Australia">
                </div>
            </div>
        </div>
    </div>

    <div class="features-area bi-about-features default-padding">
        <div class="container">
            <div class="site-heading text-center bi-about-heading">
                <h2>Why Study With Us</h2>
                <p>Five reasons students choose Britts Imperial for their business qualifications.</p>
            </div>

            <div class="row bi-about-cards-row">
                <div class="equal-height col-md-4 col-sm-6 col-xs-12">
                    <div class="bi-info-card">
                        <div class="icon"><i class="ti-medall"></i></div>
                        <h4>Nationally Recognised Training</h4>
                        <p>Every qualification is on our ASQA scope of registration and issued under the AQF.</p>
                    </div>
                </div>
                <div class="equal-height col-md-4 col-sm-6 col-xs-12">
                    <div class="bi-info-card">
                        <div class="icon"><i class="ti-shield"></i></div>
                        <h4>Quality Assured</h4>
                        <p>We operate under the Standards for Registered Training Organisations and are regulated by ASQA.</p>
                    </div>
                </div>
                <div class="equal-height col-md-4 col-sm-6 col-xs-12">
                    <div class="bi-info-card">
                        <div class="icon"><i class="ti-briefcase"></i></div>
                        <h4>Industry-Focused Delivery</h4>
                        <p>Training is mapped to the BSB Business Services Training Package and current workplace needs.</p>
                    </div>
                </div>
                <div class="equal-height col-md-4 col-sm-6 col-xs-12">
                    <div class="bi-info-card">
                        <div class="icon"><i class="ti-headphone-alt"></i></div>
                        <h4>Student Support</h4>
                        <p>LLN help and learner support are available throughout your course.</p>
                    </div>
                </div>
                <div class="equal-height col-md-4 col-sm-6 col-xs-12">
                    <div class="bi-info-card">
                        <div class="icon"><i class="ti-direction-alt"></i></div>
                        <h4>Clear Pathways</h4>
                        <p>Progress from Certificate III through to Advanced Diploma, with pathways toward further study and employment.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
