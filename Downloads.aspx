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
        <div class="container">
            <div class="bi-download-card">
                <div class="bi-download-card-head">
                    <div class="bi-download-card-icon">
                        <i class="fas fa-download"></i>
                    </div>
                    <h2>Forms &amp; Documents</h2>
                </div>

                <p class="bi-download-intro">
                    Find the forms and documents you need in one place.
                </p>

                <h3 class="bi-download-heading">Available downloads include:</h3>

                <ul class="bi-download-list">
                    <li>Student Handbook</li>
                    <li>Enrolment Form</li>
                    <li>Credit Transfer / Recognition of Prior Learning (RPL) application</li>
                    <li>Complaints and Appeals form</li>
                    <li>Course timetables and term calendar</li>
                    <li>Key policies (Privacy, Refunds, Assessment, Access and Equity)</li>
                </ul>

                <p class="bi-download-footer">
                    Can&rsquo;t find what you need?
                    <a href="Contact.aspx">Contact us</a> and we&rsquo;ll help.
                </p>

                <div class="bi-download-actions">
                    <a href="Contact.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-envelope"></i> Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
