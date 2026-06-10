<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Home</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">



    <!-- Start Banner - index-5.html structure -->

    <div class="banner-area">

        <div id="bootcarousel" class="carousel text-light top-pad text-dark slide animate_text" data-ride="carousel">



            <div class="carousel-inner carousel-zoom">

                <div class="item active bg-cover" style="background-image: url(assets/img/Banner/b1.jpg);">

                    <div class="box-table">

                        <div class="box-cell shadow dark">

                            <div class="container">

                                <div class="row">

                                    <div class="col-md-8">

                                        <div class="content">

                                            <h2 data-animation="animated slideInDown">Learn with Britts Imperial and Accelerate <strong>Your Bright Future.</strong></h2>

                                            <p data-animation="animated slideInLeft">

                                                Nationally recognised business qualifications (RTO Code 5015). Practical, industry-relevant training that helps you graduate ready for work across Australia.

                                            </p>

                                            <a data-animation="animated slideInUp" class="btn btn-theme effect btn-md" href="Courses.aspx">View Courses</a>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="item bg-cover" style="background-image: url(assets/img/Banner/b2.jpg);">

                    <div class="box-table">

                        <div class="box-cell shadow dark">

                            <div class="container">

                                <div class="row">

                                    <div class="col-md-8">

                                        <div class="content">

                                            <h2 data-animation="animated slideInDown">Learn From Australia's Best <strong>Business Training</strong></h2>

                                            <p data-animation="animated slideInLeft">

                                                From Certificate III to Advanced Diploma — quality assured training under ASQA, mapped to the BSB Business Services Training Package.

                                            </p>

                                            <a data-animation="animated slideInUp" class="btn btn-theme effect btn-md" href="Enrolment.aspx">Enrol Now</a>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>



            <a class="left carousel-control shadow" href="#bootcarousel" data-slide="prev">

                <i class="fa fa-angle-left"></i>

                <span class="sr-only">Previous</span>

            </a>

            <a class="right carousel-control shadow" href="#bootcarousel" data-slide="next">

                <i class="fa fa-angle-right"></i>

                <span class="sr-only">Next</span>

            </a>

        </div>

    </div>

    <!-- End Banner -->



    <div class="features-area default-padding bottom-less">

        <div class="container">

            <div class="row">

                <div class="features">

                    <div class="equal-height col-md-3 col-sm-6">

                        <div class="item mariner">

                            <a href="About.aspx">

                                <div class="icon"><i class="fas fa-book-open"></i></div>

                                <div class="info">

                                    <h4>Nationally Recognised</h4>

                                    <p>Every qualification is on our ASQA scope and issued under the Australian Qualifications Framework.</p>

                                </div>

                            </a>

                        </div>

                    </div>

                    <div class="equal-height col-md-3 col-sm-6">

                        <div class="item brilliantrose">

                            <a href="About.aspx">

                                <div class="icon"><i class="fas fa-user-shield"></i></div>

                                <div class="info">

                                    <h4>Quality Assured</h4>

                                    <p>Training meets the Standards for Registered Training Organisations, regulated by ASQA.</p>

                                </div>

                            </a>

                        </div>

                    </div>

                    <div class="equal-height col-md-3 col-sm-6">

                        <div class="item casablanca">

                            <a href="Courses.aspx">

                                <div class="icon"><i class="fas fa-file-alt"></i></div>

                                <div class="info">

                                    <h4>Industry Focused</h4>

                                    <p>Mapped to the BSB Business Services Training Package and current workplace needs.</p>

                                </div>

                            </a>

                        </div>

                    </div>

                    <div class="equal-height col-md-3 col-sm-6">

                        <div class="item malachite">

                            <a href="Student_Support.aspx">

                                <div class="icon"><i class="fas fa-gift"></i></div>

                                <div class="info">

                                    <h4>Student Support</h4>

                                    <p>LLN help and personalised learner support available throughout your course.</p>

                                </div>

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>



    <div class="about-area default-padding-bottom" id="home_about">

        <div class="container">

            <div class="row">

                <div class="about-items">

                    <div class="col-md-6 about-info">

                        <h2>Welcome ! <span>Britts Imperial College Australia</span></h2>

                        <blockquote>

                            We're a nationally registered training organisation (RTO Code 5015) delivering business qualifications to students right across Australia.

                        </blockquote>

                        <p>

                            Our focus is practical, industry-relevant training that helps you graduate ready for work. Every qualification is nationally recognised under the AQF, and our training meets the Standards for Registered Training Organisations as regulated by ASQA.

                        </p>

                        <a class="btn circle btn-theme effect btn-md" href="Courses.aspx">Our Courses</a>

                    </div>

                    <div class="col-md-6 thumb">

                        <div class="thumb">

                            <img src="assets/img/illustrations-1.svg" alt="Britts Imperial College Australia" />

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>



    <div class="popular-courses-area weekly-top-items bg-gray default-padding bottom-less">

        <div class="container">

            <div class="row">

                <div class="site-heading text-center">

                    <div class="col-md-8 col-md-offset-2">

                        <h2>Popular Courses</h2>

                        <p>

                            Nationally recognised business qualifications from Certificate III through to Advanced Diploma, delivered under RTO Code 5015.

                        </p>

                    </div>

                </div>

            </div>

            <div class="row">

                <div class="top-course-items">

                    <asp:Repeater ID="rptCourses" runat="server">

                        <ItemTemplate>

                            <div class="col-md-4 col-sm-6 equal-height">

                                <div class="item">

                                    <div class="thumb">

                                        <div class="bi-course-thumb <%# CourseData.GetThumbClass((string)Eval("Code")) %>" style="height:200px;">

                                            <span class="level-badge"><%# Eval("Level") %></span>

                                            <i class="<%# CourseData.GetThumbIcon((string)Eval("Code")) %>"></i>

                                        </div>

                                        <div class="overlay">

                                            <a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">

                                                <i class="<%# CourseData.GetThumbIcon((string)Eval("Code")) %>" style="font-size:40px;color:#fff;"></i>

                                            </a>

                                        </div>

                                    </div>

                                    <div class="info">

                                        <div class="meta">

                                            <ul>

                                                <li><a href="#"><%# Eval("Code") %></a></li>

                                            </ul>

                                        </div>

                                        <h4><a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>"><%# Eval("Title") %></a></h4>

                                        <p><%# Eval("ShortDescription") %></p>

                                        <div class="footer-meta">

                                            <a class="btn btn-theme effect btn-sm" href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">Enroll Now</a>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                </div>

            </div>

            <div class="row">

                <div class="col-md-12 text-center" style="margin-top: 10px;">

                    <a href="Courses.aspx" class="btn btn-theme effect btn-md">View All Courses</a>

                </div>

            </div>

        </div>

    </div>



    <div class="newsletter-area fixed">

        <div class="container">

            <div class="subscribe-items shadow theme-hard default-padding bg-cover" style="background-image: url(assets/img/hero-banner.svg);">

                <div class="row">

                    <div class="col-md-7 left-info">

                        <div class="info-box">

                            <div class="icon"><i class="flaticon-email"></i></div>

                            <div class="info">

                                <h3>Ready to Enrol?</h3>

                                <p>Contact our admissions team to request an enrolment form or speak with us about your study options.</p>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-5">

                        <form action="Contact.aspx">

                            <div class="input-group">

                                <input type="email" placeholder="Enter your e-mail here" class="form-control" name="email" />

                                <button type="submit">Subscribe <i class="fa fa-paper-plane"></i></button>

                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>

