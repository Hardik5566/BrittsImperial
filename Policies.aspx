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
        <div class="container">
            <div class="bi-policy-card">
                <div class="bi-policy-card-head">
                    <div class="bi-policy-card-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h2>Policies &amp; Procedures</h2>
                </div>

                <p class="bi-policy-intro">
                    Britts Imperial operates under a clear set of policies and procedures that protect your rights as a student and meet our obligations under the Standards for Registered Training Organisations.
                </p>

                <h3 class="bi-policy-heading">Key policies include:</h3>

                <ul class="bi-policy-list">
                    <li>
                        <strong>Complaints and Appeals:</strong>
                        a fair, transparent process for raising concerns and appealing decisions, including access to an independent external party.
                    </li>
                    <li>
                        <strong>Privacy:</strong>
                        how we collect, use, store and protect your personal information in line with the Privacy Act and the Australian Privacy Principles.
                    </li>
                    <li>
                        <strong>Fees, Charges and Refunds:</strong>
                        what you pay, when, and your refund entitlements.
                    </li>
                    <li>
                        <strong>Assessment:</strong>
                        how assessment is conducted fairly and validly, in line with the principles of assessment and the rules of evidence.
                    </li>
                    <li>
                        <strong>Access and Equity:</strong>
                        our commitment to fair and equal access to training, regardless of background.
                    </li>
                </ul>

                <p class="bi-policy-footer">
                    Full copies of these policies are available in the
                    <a href="Downloads.aspx">Download Centre</a> or on request.
                </p>

                <div class="bi-policy-actions">
                    <a href="Downloads.aspx" class="btn btn-theme effect btn-md"><i class="fas fa-download"></i> Download Centre</a>
                    <a href="Contact.aspx" class="btn btn-dark border btn-md"><i class="fas fa-envelope"></i> Request a Copy</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
