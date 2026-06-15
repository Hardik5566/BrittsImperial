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
        <section class="bi-policy-intro-section">
            <div class="container">
                <div class="bi-policy-intro-layout">
                    <div class="bi-policy-intro-content">
                        <p class="bi-policy-eyebrow">Student Rights and Compliance</p>
                        <h2>Policies and Procedures</h2>
                        <p class="bi-policy-lead">
                            Britts Imperial operates under a clear set of policies and procedures that protect your rights as a student and meet our obligations under the Standards for Registered Training Organisations.
                        </p>
                        <div class="bi-policy-trust-badge">
                            <i class="fas fa-shield-alt"></i>
                            <span>Regulated training under ASQA standards</span>
                        </div>
                    </div>
                    <div class="bi-policy-intro-visual">
                        <div class="bi-policy-frame">
                            <img src="assets/img/college-students-about.jpg" alt="Britts Imperial College Australia students" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bi-policy-list-section">
            <div class="container">
                <div class="bi-policy-docs">
                    <div class="bi-policy-docs-intro">
                        <h3>Student Policies</h3>
                        <p>Official policy documents available for download.</p>
                    </div>

                    <div class="bi-policy-table-wrap">
                        <table class="bi-policy-table">
                            <thead>
                                <tr>
                                    <th scope="col">Policy</th>
                                    <th scope="col" class="bi-policy-table-action-col">Download</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-label="Policy">Complaints and Appeals</td>
                                    <td data-label="Download" class="bi-policy-table-action-col">
                                        <a href="image/policy/Britts%20Imperial%20Complaints%20and%20Appeals%20Policy%20and%20Procedure_V1.1_Dec2025.docx" class="bi-policy-table-download" download><i class="fas fa-download"></i><span>Download</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td data-label="Policy">Privacy</td>
                                    <td data-label="Download" class="bi-policy-table-action-col">
                                        <a href="image/policy/Britts%20Imperial%20Privacy%20Policy_V.1.1_Feb2026.docx" class="bi-policy-table-download" download><i class="fas fa-download"></i><span>Download</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td data-label="Policy">Fees, Charges and Refunds</td>
                                    <td data-label="Download" class="bi-policy-table-action-col">
                                        <a href="image/policy/Britts%20Imperial%20Fees%20and%20Refund%20Policy%20and%20Procedure_V1.1_Jan2026.docx" class="bi-policy-table-download" download><i class="fas fa-download"></i><span>Download</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td data-label="Policy">Assessment</td>
                                    <td data-label="Download" class="bi-policy-table-action-col">
                                        <a href="image/policy/Britts%20Imperial%20Assessment%20Policy%20and%20Procedure_V.1.1_Dec2025.docx" class="bi-policy-table-download" download><i class="fas fa-download"></i><span>Download</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td data-label="Policy">Access and Equity</td>
                                    <td data-label="Download" class="bi-policy-table-action-col">
                                        <a href="image/policy/Britts%20Imperial%20Access%20and%20Equity%20Policy_V1.1_Dec2025.docx" class="bi-policy-table-download" download><i class="fas fa-download"></i><span>Download</span></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="jqury" runat="Server"></asp:Content>
