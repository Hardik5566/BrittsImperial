<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">Home</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* Home page — consistent container width & alignment */
        .bi-home-page,
        .bi-home-banner {
            overflow-x: hidden;
            max-width: 100%;
            width: 100%;
        }

        .bi-home-page {
            overflow-x: clip;
        }

        .bi-home-page .container,
        .bi-home-banner .container {
            max-width: 100%;
        }

        .bi-home-page img,
        .bi-home-banner img {
            max-width: 100%;
            height: auto;
        }

        .bi-home-page .features-area .row > .features,
        .bi-home-page .about-area .row > .about-items {
            margin-left: 0;
            margin-right: 0;
            width: 100%;
        }

        /* Home feature boxes */
        .bi-home-page .bi-home-features .row {
            margin-left: 0;
            margin-right: 0;
        }

        .bi-home-page .features-area.bi-home-features .row > .features {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 24px;
            width: 100%;
            margin: 0 !important;
            padding: 0;
        }

        .bi-home-page .bi-home-features .features > .equal-height {
            float: none;
            width: 100% !important;
            max-width: 100%;
            padding: 0 !important;
            margin: 0 !important;
            display: flex;
            flex-direction: column;
        }

        .bi-home-page .bi-home-features .features .item {
            margin-bottom: 0;
            width: 100%;
            height: 100%;
        }

        .bi-home-page .bi-home-features .features .item a {
            height: 100%;
            box-shadow: var(--bi-shadow) !important;
            border: 1px solid var(--bi-border);
            border-radius: var(--bi-radius);
            background: #ffffff;
        }

        .bi-home-page .bi-home-features .features .item a .icon i {
            position: relative;
            z-index: 1;
        }

        .bi-home-page .bi-home-features .features .item a .icon i::after {
            display: none;
        }

        .bi-home-page .bi-home-features .item.mariner .icon i { color: #307ad5; }
        .bi-home-page .bi-home-features .item.brilliantrose .icon i { color: #e948ae; }
        .bi-home-page .bi-home-features .item.casablanca .icon i { color: #f9bd44; }
        .bi-home-page .bi-home-features .item.malachite .icon i { color: #10c45c; }

        @media (min-width: 768px) {
            .bi-home-page .bi-home-features .features .item a {
                flex-direction: column !important;
                text-align: center;
                align-items: center;
            }

            .bi-home-page .bi-home-features .features .item a .icon {
                flex: 0 0 auto;
                width: auto;
                height: auto;
                background: transparent;
                border-radius: 0;
                margin-bottom: 0;
            }

            .bi-home-page .bi-home-features .features .item a .icon i {
                font-size: 60px !important;
            }
        }

        .bi-home-page .about-area .thumb img {
            width: 100%;
            max-width: 100%;
        }

        @media (max-width: 991px) {
            .bi-home-page .about-area .about-items > [class*="col-"] {
                float: none;
                width: 100%;
                max-width: 100%;
                min-width: 0;
            }
        }

        .bi-home-page .bi-home-features .features > .equal-height,
        .bi-home-page .bi-home-support-card,
        .bi-home-courses-slider .owl-item > .item {
            min-width: 0;
        }

        .bi-home-page .popular-courses-area .site-heading {
            margin-bottom: 48px;
        }

        .bi-home-page .bi-home-popular-courses {
            overflow: hidden;
            overflow-x: clip;
        }

        .bi-home-page .bi-home-popular-courses > .container,
        .bi-home-page .bi-home-popular-courses .col-md-12 {
            max-width: 100%;
        }

        /* Home Popular Courses slider */
        .bi-home-courses-wrap {
            position: relative;
            width: 100%;
            max-width: 100%;
            padding: 10px 0 4px;
            margin-top: 8px;
            margin-left: 0;
            margin-right: 0;
            overflow: hidden;
            overflow-x: clip;
        }

        .bi-home-courses-slider.owl-carousel {
            position: relative;
            width: 100% !important;
            max-width: 100%;
            overflow: hidden;
            overflow-x: clip;
        }

        .bi-home-courses-slider .owl-stage-outer {
            overflow: hidden;
            overflow-x: clip;
            padding: 4px 0 12px;
            width: 100%;
            max-width: 100%;
        }

        .bi-home-courses-slider .owl-stage {
            display: flex;
        }

        .bi-home-courses-slider .owl-item {
            max-width: 100%;
            float: none;
            -webkit-tap-highlight-color: transparent;
        }

        .bi-home-courses-slider.top-course-items .item {
            margin-bottom: 0;
        }

        .bi-home-courses-slider .owl-item > .item {
            width: 100%;
            display: flex;
            flex-direction: column;
            margin-bottom: 0;
            box-sizing: border-box;
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

        /* ---- Home page responsive ---- */
        .bi-home-banner {
            width: 100%;
            max-width: 100vw;
            overflow: hidden;
            overflow-x: clip;
        }

        .bi-home-banner #bootcarousel {
            width: 100%;
            max-width: 100%;
            overflow: hidden;
        }

        .bi-home-banner .carousel-inner {
            position: relative;
            width: 100%;
            max-width: 100%;
            overflow: hidden;
        }

        .bi-home-banner .carousel-inner > .item {
            width: 100%;
            max-width: 100%;
            background-position: center center;
            background-size: cover;
            overflow: hidden;
        }

        .bi-home-banner .carousel .content p {
            padding-right: 0;
        }

        @media (min-width: 992px) {
            .bi-home-banner .carousel .content p {
                padding-right: 10%;
            }
        }

        @media (min-width: 1200px) {
            .bi-home-banner .carousel .content h2 {
                font-size: clamp(42px, 3.8vw, 60px);
                line-height: 1.15;
            }

            .bi-home-banner .carousel .content p {
                padding-right: 15%;
            }
        }

        .bi-home-banner .carousel-control.shadow {
            z-index: 5;
            pointer-events: auto;
        }

        .bi-home-banner .carousel-control.shadow.left,
        .bi-home-banner .carousel-control.shadow.right {
            opacity: 1;
            left: auto;
            right: auto;
        }

        .bi-home-banner .carousel-control.shadow.left {
            left: 16px;
        }

        .bi-home-banner .carousel-control.shadow.right {
            right: 16px;
        }

        .bi-home-banner:hover .carousel-control.shadow.left {
            left: 16px;
        }

        .bi-home-banner:hover .carousel-control.shadow.right {
            right: 16px;
        }

        .bi-home-page #home_about {
            padding-top: 70px;
        }

        .bi-home-page .about-info h2 span {
            display: block;
            color: var(--bi-gold);
            font-size: 0.72em;
            margin-top: 6px;
            line-height: 1.35;
        }

        @media (max-width: 1199px) {
            .bi-home-banner .carousel.top-pad .content {
                padding-top: 100px;
                padding-bottom: 70px;
            }

            .bi-home-banner .carousel .content h2 {
                font-size: clamp(30px, 3.8vw, 46px);
                line-height: 1.2;
            }

            .bi-home-page .bi-home-support-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 20px;
            }
        }

        @media (max-width: 991px) {
            .bi-home-banner.banner-area,
            .bi-home-banner #bootcarousel,
            .bi-home-banner .carousel-inner,
            .bi-home-banner .carousel-inner > .item {
                min-height: 72vh;
                min-height: 72dvh;
            }

            /* shadow.dark only behind text — not full slide height */
            .bi-home-banner .box-table,
            .bi-home-banner .box-cell {
                display: block;
                width: 100%;
                height: auto !important;
                min-height: 0 !important;
            }

            .bi-home-banner .carousel.top-pad .content {
                padding-top: 92px;
                padding-bottom: 64px;
            }

            .bi-home-banner .content h2 {
                font-size: clamp(28px, 4.5vw, 36px);
                line-height: 1.25;
                margin-bottom: 18px;
                overflow-wrap: anywhere;
            }

            .bi-home-banner .content p {
                font-size: 16px;
                line-height: 1.75;
                margin-bottom: 22px;
            }

            .bi-home-banner .content .col-md-8 {
                width: 100%;
                float: none;
            }

            .bi-home-page .features-area.default-padding.bottom-less {
                padding-top: 55px;
                padding-bottom: 25px;
            }

            .bi-home-page .features-area.bi-home-features .row > .features {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 18px;
            }

            .bi-home-page #home_about {
                padding-top: 55px;
                padding-bottom: 55px;
            }

            .bi-home-page #home_about .about-info {
                margin-bottom: 32px;
            }

            .bi-home-page #home_about .about-info h2 {
                font-size: clamp(28px, 4vw, 42px);
                margin-top: 0;
                line-height: 1.3;
            }

            .bi-home-page #home_about .about-info h2 span {
                font-size: clamp(18px, 3vw, 24px);
            }

            .bi-home-page .popular-courses-area.default-padding.bottom-less {
                padding-top: 55px;
                padding-bottom: 25px;
            }

            .bi-home-page .popular-courses-area .col-md-offset-2 {
                margin-left: 0;
            }

            .bi-home-page .popular-courses-area .site-heading {
                margin-bottom: 36px;
            }

            .bi-home-courses-slider .bi-course-thumb {
                height: 200px;
            }

            .bi-home-courses-slider .item .info h4 a {
                font-size: 16px;
            }
        }

        @media (max-width: 767px) {
            .bi-home-banner.banner-area,
            .bi-home-banner #bootcarousel {
                min-height: 0;
            }

            .bi-home-banner .carousel-inner > .item {
                min-height: 88vh;
                min-height: 88dvh;
            }

            .bi-home-banner .carousel.top-pad .content {
                padding: 78px 0 56px;
            }

            .bi-home-banner .content .col-md-8 {
                width: 100%;
                float: none;
            }

            .bi-home-banner .content h2 {
                font-size: clamp(24px, 6.5vw, 30px) !important;
                line-height: 1.3 !important;
                margin-bottom: 14px;
            }

            .bi-home-banner .content p {
                font-size: 15px !important;
                line-height: 1.7 !important;
                margin-bottom: 20px;
            }

            .bi-home-banner .content .btn {
                display: inline-block;
                width: auto;
                min-width: 160px;
            }

            .bi-home-banner .carousel-control.shadow {
                width: 40px;
                height: 40px;
                line-height: 40px;
                font-size: 18px;
                margin-top: -20px;
            }

            .bi-home-banner .carousel-control.shadow.left {
                left: 8px;
            }

            .bi-home-banner .carousel-control.shadow.right {
                right: 8px;
            }

            .bi-home-page .features-area.default-padding.bottom-less {
                padding-top: 45px;
                padding-bottom: 15px;
            }

            .bi-home-page .features-area.bi-home-features .row > .features {
                grid-template-columns: 1fr;
                gap: 12px;
            }

            .bi-home-page .bi-home-features .features .item {
                height: auto;
            }

            .bi-home-page .bi-home-features .features .item:hover {
                transform: none;
            }

            .bi-home-page .bi-home-features .features .item a {
                display: flex !important;
                flex-direction: row;
                align-items: center;
                text-align: left;
                gap: 14px;
                padding: 16px 14px !important;
                min-height: 0;
            }

            .bi-home-page .bi-home-features .features .item a .icon {
                flex: 0 0 50px;
                width: 50px;
                height: 50px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 12px;
                background: var(--bi-bg);
                margin: 0;
            }

            .bi-home-page .bi-home-features .features .item a .icon i {
                font-size: 22px !important;
                margin: 0 !important;
                line-height: 1;
            }

            .bi-home-page .bi-home-features .features .item .info {
                flex: 1;
                min-width: 0;
                display: block;
            }

            .bi-home-page .bi-home-features .features .item .info h4 {
                font-size: 15px;
                font-weight: 700;
                margin: 0 0 5px;
                line-height: 1.35;
                color: var(--bi-navy);
            }

            .bi-home-page .bi-home-features .features .item .info p {
                font-size: 13px;
                line-height: 1.55;
                margin: 0;
                opacity: 1;
                color: var(--bi-slate);
            }

            .bi-home-page #home_about {
                padding-top: 45px;
                padding-bottom: 45px;
            }

            .bi-home-page #home_about .about-info h2 {
                font-size: clamp(24px, 6vw, 28px);
                line-height: 1.3;
                margin-bottom: 16px;
            }

            .bi-home-page #home_about .about-info h2 span {
                font-size: 0.68em;
            }

            .bi-home-page #home_about blockquote {
                padding: 16px 18px;
                font-size: 14px;
                margin-bottom: 16px;
            }

            .bi-home-page #home_about .about-info p {
                font-size: 15px;
                line-height: 1.75;
                margin-bottom: 20px;
            }

            .bi-home-page #home_about .about-info .btn {
                width: 100%;
                text-align: center;
            }

            .bi-home-page #home_about .thumb img {
                max-height: 320px;
                object-fit: cover;
            }

            .bi-home-page .popular-courses-area.default-padding.bottom-less {
                padding-top: 45px;
                padding-bottom: 15px;
            }

            .bi-home-page .site-heading h2 {
                font-size: clamp(24px, 6vw, 28px);
            }

            .bi-home-page .site-heading p {
                font-size: 15px;
                line-height: 1.7;
            }

            .bi-home-courses-wrap {
                padding-top: 4px;
                margin-top: 0;
            }

            .bi-home-courses-slider .bi-course-thumb {
                height: 190px;
            }

            .bi-home-courses-slider .item .info {
                padding: 18px;
            }

            .bi-home-courses-slider .item .info h4 {
                margin-bottom: 12px;
            }

            .bi-home-courses-slider .item .info h4 a {
                font-size: 15px;
                line-height: 1.4;
            }

            .bi-home-courses-slider .item .footer-meta {
                padding-top: 12px;
                margin-top: 12px;
            }

            .bi-home-courses-slider .item .footer-meta .btn {
                width: 100%;
                text-align: center;
            }

            .bi-home-courses-slider .item:hover {
                transform: none;
            }

            .bi-home-courses-slider .owl-dots {
                margin-top: 20px;
                padding-bottom: 4px;
            }

            .bi-home-courses-slider .item .info h4 a {
                overflow-wrap: anywhere;
                word-break: break-word;
            }

            .bi-home-page .bi-home-support {
                padding: 45px 0 50px;
            }

            .bi-home-page .bi-home-support-head {
                margin-bottom: 28px;
            }

            .bi-home-page .bi-home-support-head h2 {
                font-size: clamp(24px, 6vw, 30px);
            }

            .bi-home-page .bi-home-support-head p {
                font-size: 15px;
            }

            .bi-home-page .bi-home-support-grid {
                grid-template-columns: 1fr;
                gap: 14px;
            }

            .bi-home-page .bi-home-support-card {
                padding: 24px 20px 22px;
            }

            .bi-home-page .bi-home-support-actions {
                flex-direction: column;
                align-items: stretch;
                gap: 12px;
                margin-top: 24px;
            }

            .bi-home-page .bi-home-support-actions .btn {
                width: 100%;
                min-width: 0;
            }

            .bi-home-page .bi-home-enrol-hero {
                padding: 56px 0;
            }

            .bi-home-page .bi-home-enrol-hero-content h2 {
                font-size: clamp(26px, 6.5vw, 34px);
            }

            .bi-home-page .bi-home-enrol-hero-content > p {
                font-size: 15px;
            }

            .bi-home-page .bi-home-enrol-hero-points {
                flex-direction: column;
                align-items: center;
                gap: 10px;
                margin-bottom: 24px;
            }

            .bi-home-page .bi-home-enrol-hero-actions {
                flex-direction: column;
                align-items: stretch;
                gap: 12px;
            }

            .bi-home-page .bi-home-enrol-hero-actions .btn {
                width: 100%;
                min-width: 0;
            }
        }

        @media (max-width: 480px) {
            .bi-home-page .features-area.bi-home-features .row > .features {
                gap: 10px;
            }

            .bi-home-page .bi-home-features .features .item a {
                padding: 14px 12px !important;
                gap: 12px;
            }

            .bi-home-page .bi-home-features .features .item a .icon {
                flex: 0 0 46px;
                width: 46px;
                height: 46px;
            }

            .bi-home-page .bi-home-features .features .item a .icon i {
                font-size: 20px !important;
            }

            .bi-home-page .bi-home-features .features .item .info h4 {
                font-size: 14px;
            }

            .bi-home-page .bi-home-features .features .item .info p {
                font-size: 12px;
                line-height: 1.5;
            }

            .bi-home-banner .carousel-inner > .item {
                min-height: 92vh;
                min-height: 92dvh;
            }

            .bi-home-banner .carousel.top-pad .content {
                padding: 72px 0 48px;
            }

            .bi-home-banner .content h2 {
                font-size: 22px !important;
            }

            .bi-home-banner .content .btn {
                width: 100%;
                display: block;
                text-align: center;
            }

            .bi-home-courses-slider .bi-course-thumb {
                height: 175px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">



    <!-- Start Banner - index-5.html structure -->

    <div class="banner-area bi-home-banner">

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

    <div class="bi-home-page">

    <div class="features-area bi-home-features default-padding bottom-less">

        <div class="container">

            <div class="row">

                <div class="features">

                    <div class="equal-height col-lg-3 col-md-6 col-sm-6 col-xs-12">

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

                    <div class="equal-height col-lg-3 col-md-6 col-sm-6 col-xs-12">

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

                    <div class="equal-height col-lg-3 col-md-6 col-sm-6 col-xs-12">

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

                    <div class="equal-height col-lg-3 col-md-6 col-sm-6 col-xs-12">

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

                    <div class="col-lg-6 col-md-6 col-sm-12 about-info">

                        <h2>Welcome ! <span>Britts Imperial College Australia</span></h2>

                        <blockquote>

                            We're a nationally registered training organisation (RTO Code 5015) delivering business qualifications to students right across Australia.

                        </blockquote>

                        <p>

                            Our focus is practical, industry-relevant training that helps you graduate ready for work. Every qualification is nationally recognised under the AQF, and our training meets the Standards for Registered Training Organisations as regulated by ASQA.

                        </p>

                        <a class="btn circle btn-theme effect btn-md" href="Courses.aspx">Our Courses</a>

                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-12 thumb">

                        <div class="thumb">

                            <img src="image/Student_image.jpg" alt="Students at Britts Imperial College Australia" />

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>



    <div class="popular-courses-area weekly-top-items bg-gray default-padding bottom-less bi-home-popular-courses">

        <div class="container">

            <div class="row">

                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">

                    <div class="site-heading text-center">

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

    <section class="bi-home-support">
        <div class="container">
            <div class="bi-home-support-head text-center">
                <span class="bi-rto-badge">We Are Here For You</span>
                <h2>Student Support Services</h2>
                <p>Your success matters to us. Britts Imperial provides practical support to help you complete your studies with confidence.</p>
            </div>

            <div class="bi-home-support-grid">
                <div class="bi-home-support-card">
                    <div class="bi-home-support-card-icon"><i class="fas fa-book-open"></i></div>
                    <h3>LLND Support</h3>
                    <p>Extra help for students identified through the pre-training Language, Literacy, Numeracy and Digital assessment.</p>
                </div>
                <div class="bi-home-support-card">
                    <div class="bi-home-support-card-icon"><i class="fas fa-universal-access"></i></div>
                    <h3>Reasonable Adjustment</h3>
                    <p>We make reasonable adjustments to support students with disability or additional needs throughout training.</p>
                </div>
                <div class="bi-home-support-card">
                    <div class="bi-home-support-card-icon"><i class="fas fa-chalkboard-teacher"></i></div>
                    <h3>Academic Support</h3>
                    <p>Guidance from trainers and assessors, study-skills help and access to learning resources when you need them.</p>
                </div>
                <div class="bi-home-support-card">
                    <div class="bi-home-support-card-icon"><i class="fas fa-heart"></i></div>
                    <h3>Welfare &amp; Wellbeing</h3>
                    <p>Referral to external counselling, health and welfare services when you need professional support.</p>
                </div>
            </div>

            <div class="bi-home-support-actions">
                <a href="Student_Support.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-info-circle"></i> Learn More</a>
                <a href="Contact.aspx" class="btn circle btn-dark border btn-md"><i class="fas fa-envelope"></i> Contact Student Support</a>
            </div>
        </div>
    </section>

    <section class="bi-home-enrol-hero" aria-label="Ready to enrol">
        <div class="container">
            <div class="bi-home-enrol-hero-content">
                <span class="bi-home-enrol-hero-label">Take the Next Step</span>
                <h2>Ready to Enrol?</h2>
                <p>Contact our admissions team to request an enrolment form or speak with us about your study options.</p>
                <ul class="bi-home-enrol-hero-points">
                    <li><i class="fas fa-check-circle"></i> Nationally recognised qualifications</li>
                    <li><i class="fas fa-check-circle"></i> Guided admissions support</li>
                    <li><i class="fas fa-check-circle"></i> RTO Code 5015</li>
                </ul>
                <div class="bi-home-enrol-hero-actions">
                    <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Enrol Now</a>
                    <a href="Enrolment.aspx" class="btn btn-light border effect btn-md"><i class="fas fa-file-alt"></i> Enrolment Info</a>
                </div>
            </div>
        </div>
    </section>

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

                var slideCount = $slider.children('.item').length;
                var loopSlides = slideCount > 3;

                function equalizeHomeCourseCards() {
                    var $allCards = $slider.find('.owl-item .item');
                    var $measureCards = $slider.find('.owl-item:not(.cloned) .item');

                    if (!$measureCards.length) {
                        $measureCards = $allCards;
                    }

                    $allCards.css('min-height', '');

                    var maxH = 0;
                    $measureCards.each(function () {
                        maxH = Math.max(maxH, $(this).outerHeight(true));
                    });

                    if (maxH > 0) {
                        $allCards.css('min-height', maxH);
                    }
                }

                function scheduleEqualizeHomeCourseCards() {
                    window.requestAnimationFrame(function () {
                        equalizeHomeCourseCards();
                        window.requestAnimationFrame(equalizeHomeCourseCards);
                    });
                }

                $slider.owlCarousel({
                    loop: loopSlides,
                    rewind: !loopSlides,
                    margin: 24,
                    nav: false,
                    dots: true,
                    slideBy: 1,
                    autoplay: slideCount > 1,
                    autoplayTimeout: 4500,
                    autoplayHoverPause: true,
                    autoplaySpeed: 650,
                    smartSpeed: 650,
                    mouseDrag: slideCount > 1,
                    touchDrag: false,
                    pullDrag: false,
                    freeDrag: false,
                    responsive: {
                        0: {
                            items: 1,
                            margin: 16,
                            slideBy: 1,
                            stagePadding: 0
                        },
                        768: {
                            items: 2,
                            margin: 20,
                            slideBy: 1,
                            stagePadding: 0
                        },
                        992: {
                            items: 3,
                            margin: 24,
                            slideBy: 1,
                            stagePadding: 0
                        }
                    },
                    onInitialized: scheduleEqualizeHomeCourseCards,
                    onRefreshed: scheduleEqualizeHomeCourseCards
                });

                $slider.find('img').on('load', scheduleEqualizeHomeCourseCards);

                var resizeTimer;
                $(window).on('resize orientationchange', function () {
                    clearTimeout(resizeTimer);
                    resizeTimer = setTimeout(function () {
                        if ($slider.data('owl.carousel')) {
                            $slider.trigger('refresh.owl.carousel');
                            scheduleEqualizeHomeCourseCards();
                        }
                    }, 150);
                });

            });
        })(jQuery);
    </script>
</asp:Content>

