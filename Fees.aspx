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
    <div class="bi-content-section">
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <div class="bi-content-card">
                    <h3>Course Fees</h3>
                    <p>Course fees vary by qualification and are confirmed before you enrol. Please contact us for current fee information.</p>
                    <h3>Payment &amp; Refunds</h3>
                    <p>Your fees, payment terms and refund entitlements are set out in your written enrolment agreement and in our Fees, Charges and Refunds Policy, in line with the Standards for Registered Training Organisations.</p>
                    <div class="bi-btn-group">
                        <a href="Contact.aspx" class="btn btn-theme effect btn-md">Request Fee Information</a>
                        <a href="Downloads.aspx" class="btn btn-dark border btn-md">Fees &amp; Refunds Policy</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
