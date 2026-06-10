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
    <div class="bi-content-section">
        <div class="container">
            <div class="col-md-10 col-md-offset-1">
                <div class="bi-content-card">
                    <p>Britts Imperial operates under a clear set of policies and procedures that protect your rights as a student and meet our obligations under the Standards for Registered Training Organisations.</p>
                    <h3>Key Policies</h3>
                    <div class="bi-table-wrap">
                        <table class="table table-bordered">
                            <thead>
                                <tr><th>Policy</th><th>Summary</th><th>Download</th></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><strong>Complaints and Appeals</strong></td>
                                    <td>A fair, transparent process for raising concerns and appealing decisions.</td>
                                    <td><a href="Downloads.aspx"><i class="fas fa-download"></i> Download Centre</a></td>
                                </tr>
                                <tr>
                                    <td><strong>Privacy</strong></td>
                                    <td>How we collect, use, store and protect your personal information.</td>
                                    <td><a href="Downloads.aspx"><i class="fas fa-download"></i> Download Centre</a></td>
                                </tr>
                                <tr>
                                    <td><strong>Fees, Charges and Refunds</strong></td>
                                    <td>What you pay, when, and your refund entitlements.</td>
                                    <td><a href="Downloads.aspx"><i class="fas fa-download"></i> Download Centre</a></td>
                                </tr>
                                <tr>
                                    <td><strong>Assessment</strong></td>
                                    <td>How assessment is conducted fairly and validly.</td>
                                    <td><a href="Downloads.aspx"><i class="fas fa-download"></i> Download Centre</a></td>
                                </tr>
                                <tr>
                                    <td><strong>Access and Equity</strong></td>
                                    <td>Our commitment to fair and equal access to training.</td>
                                    <td><a href="Downloads.aspx"><i class="fas fa-download"></i> Download Centre</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="bi-btn-group">
                        <a href="Downloads.aspx" class="btn btn-theme effect btn-md">Go to Download Centre</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
