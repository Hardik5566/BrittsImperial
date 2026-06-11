<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Home</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* Home support section — 4 equal boxes, responsive (Default.aspx only) */
        .bi-home-support > .container > .row {
            margin-left: 0;
            margin-right: 0;
        }

        .bi-home-support .bi-content-card {
            width: 100%;
            max-width: 100%;
            box-sizing: border-box;
        }

        .bi-home-support .bi-home-support-intro {
            font-size: 17px;
            font-weight: 500;
            color: var(--bi-navy);
            margin-bottom: 0;
            line-height: 1.65;
        }

        .bi-home-support .bi-info-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 20px;
            width: 100%;
            margin: 28px 0 30px;
            align-items: stretch;
        }

        .bi-info-card
        {
            background:none;
            background-color:white;
        }
        .bi-home-support .bi-info-card {
            display: flex;
            flex-direction: column;
            height: 100%;
            min-width: 0;
            box-sizing: border-box;
            padding: 24px 20px;
        }

        .bi-home-support .bi-info-card .icon {
            flex-shrink: 0;
        }

        .bi-home-support .bi-info-card h4 {
            font-size: 16px;
            line-height: 1.35;
        }

        .bi-home-support .bi-info-card p {
            flex: 1;
        }

        @media (max-width: 1199px) and (min-width: 992px) {
            .bi-home-support .bi-info-grid {
                gap: 16px;
            }

            .bi-home-support .bi-info-card {
                padding: 22px 16px;
            }

            .bi-home-support .bi-info-card h4 {
                font-size: 15px;
            }

            .bi-home-support .bi-info-card p {
                font-size: 13px;
            }
        }

        @media (max-width: 991px) {
            .bi-home-support .bi-info-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 18px;
            }
        }

        @media (max-width: 575px) {
            .bi-home-support .bi-info-grid {
                grid-template-columns: 1fr;
                gap: 16px;
            }

            .bi-home-support .bi-info-card {
                padding: 24px 20px;
            }
        }

        /* Home enrol CTA — Enroll Now button vertical align */
        .bi-home-enrol-cta .row {
            display: flex;
            align-items: center;
        }

        .bi-home-enrol-cta .col-md-5 {
            display: flex;
            align-items: center;
            justify-content: flex-end;
        }

        .bi-home-enrol-cta form {
            width: auto;
            margin: 0;
        }

        .bi-home-enrol-cta form .input-group {
            display: flex;
            align-items: center;
            justify-content: center;
            width: auto;
            position: static;
        }

        .bi-home-enrol-cta .input-group button {
            position: static;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-height: 47px;
            height: 47px;
            padding: 0 36px;
            margin: 0;
            border-radius: 30px;
            line-height: 1;
            white-space: nowrap;
        }

        @media (max-width: 991px) {
            .bi-home-enrol-cta .col-md-5 {
                justify-content: center;
                margin-top: 20px;
            }
        }

        /* Home Popular Courses slider */
        .bi-home-courses-wrap {
            position: relative;
            padding: 0;
            margin-top: 8px;
        }

        .bi-home-courses-slider.owl-carousel {
            position: relative;
            width: 100%;
        }

        .bi-home-courses-slider .owl-stage-outer {
            padding: 8px 4px 12px;
        }

        .bi-home-courses-slider .owl-stage {
            display: flex;
            align-items: stretch;
        }

        .bi-home-courses-slider .owl-item {
            display: flex;
            align-items: stretch;
            height: auto;
        }

        .bi-home-courses-slider .owl-item > .item {
            flex: 1;
            width: 100%;
            min-height: 100%;
            display: flex;
            flex-direction: column;
            margin-bottom: 0;
        }

        .bi-home-courses-slider .item .thumb {
            position: relative;
            overflow: hidden;
            flex-shrink: 0;
        }

        .bi-home-courses-slider .item .info {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .bi-home-courses-slider .item .info h4 {
            flex: 1;
            margin-bottom: 16px;
        }

        .bi-home-courses-slider .item .footer-meta {
            margin-top: auto;
            flex-shrink: 0;
        }

        .bi-home-courses-slider .item .thumb .overlay {
            position: absolute;
            inset: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            background: rgba(12, 45, 74, 0.55);
            opacity: 0;
            transition: opacity 0.3s ease;
            z-index: 4;
        }

        .bi-home-courses-slider .item:hover .thumb .overlay {
            opacity: 1;
        }

        .bi-home-courses-slider .item .thumb .overlay a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 52px;
            height: 52px;
            border-radius: 50%;
            background: var(--bi-gold);
            color: var(--bi-navy-dark);
            text-decoration: none;
            transition: transform 0.3s ease;
        }

        .bi-home-courses-slider .item .thumb .overlay a:hover {
            transform: scale(1.08);
        }

        .bi-home-courses-slider .owl-nav {
            display: none !important;
        }

        .bi-home-courses-slider .owl-dots {
            margin-top: 28px;
            line-height: 1;
            display: block !important;
            text-align: center;
            width: 100%;
            position: relative;
            z-index: 5;
        }

        .bi-home-courses-slider .owl-dots .owl-dot {
            display: inline-block;
            cursor: pointer;
            outline: none;
        }

        .bi-home-courses-slider .owl-dots .owl-dot span {
            width: 10px;
            height: 10px;
            margin: 0 6px;
            background: #c5d0dc;
            border-radius: 30px;
            transition: all 0.3s ease;
            display: block;
        }

        .bi-home-courses-slider .owl-dots .owl-dot.active span,
        .bi-home-courses-slider .owl-dots .owl-dot:hover span {
            background: var(--bi-gold);
            width: 28px;
        }
    </style>
</asp:Content>

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

                                                From Certificate III to Advanced Diploma - quality assured training under ASQA, mapped to the BSB Business Services Training Package.

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

                            <a href="Contact.aspx">

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

                            <img src="image/Student_image.jpg" alt="Students at Britts Imperial College Australia" />

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

                <div class="col-md-12">

                    <div class="bi-home-courses-wrap">

                        <div class="top-course-items bi-home-courses-slider owl-carousel owl-theme">

                            <asp:Repeater ID="rptCourses" runat="server">

                                <ItemTemplate>

                                    <div class="item">

                                        <div class="thumb">

                                            <div class="bi-course-thumb">

                                                <img src="<%# CourseData.GetThumbImage((string)Eval("Code")) %>" alt="<%# Eval("Title") %>" />

                                            </div>

                                            <div class="overlay">

                                                <a href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">

                                                    <i class="ti-arrow-right" style="font-size:40px;color:#fff;"></i>

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

                                            <div class="footer-meta">

                                                <a class="btn btn-theme effect btn-sm" href="<%# CourseData.GetDetailUrl((string)Eval("Code")) %>">Enroll Now</a>

                                            </div>

                                        </div>

                                    </div>

                                </ItemTemplate>

                            </asp:Repeater>

                        </div>

                    </div>

                </div>

            </div>

           <%-- <div class="row">

                <div class="col-md-12 text-center" style="margin-top: 10px;">

                    <a href="Courses.aspx" class="btn btn-theme effect btn-md">View All Courses</a>

                </div>

            </div>--%>

        </div>

    </div>

    <div class="bi-content-section bi-home-support">
        <div class="container">
             <div class="site-heading text-center" style="margin-bottom:0px">

                    <div class="col-md-8 col-md-offset-2">

                        <h2>Student Support Services
</h2>

                        <p>

                       Your success matters to us. Britts Imperial provides a range of support services to help you complete your studies.
                        </p>

                    </div>

                </div>
            <div class="row">
                <div class="col-md-12">
                <div class="bi-content-card" style="background:none;border:none;box-shadow:none">
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
                    <div class="bi-btn-group bi-btn-group-center">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md">Contact Student Support</a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

    <div class="newsletter-area fixed bi-home-enrol-cta">

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

                                <button type="submit">Enroll Now</button>

                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server">
    <script>
        (function ($) {
            $(document).ready(function () {
                var $slider = $('.bi-home-courses-slider');
                if (!$slider.length || typeof $.fn.owlCarousel !== 'function') {
                    return;
                }

                $slider.owlCarousel({
                    loop: true,
                    margin: 24,
                    nav: false,
                    dots: true,
                    slideBy: 1,
                    rewind: false,
                    autoplay: true,
                    autoplayTimeout: 4500,
                    autoplayHoverPause: true,
                    autoplaySpeed: 650,
                    smartSpeed: 650,
                    mouseDrag: true,
                    touchDrag: true,
                    responsive: {
                        0: {
                            items: 1,
                            margin: 16,
                            slideBy: 1
                        },
                        576: {
                            items: 2,
                            margin: 20,
                            slideBy: 1
                        },
                        992: {
                            items: 3,
                            margin: 24,
                            slideBy: 1
                        }
                    }
                });
            });
        })(jQuery);
    </script>
</asp:Content>

