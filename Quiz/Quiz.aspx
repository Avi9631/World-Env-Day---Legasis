<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="WED.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz</title>
    <link href="resource/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resource/css/styles.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" />
    <%--<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">--%>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet" />
    <style type="text/css">
        .FormatRadioButtonList label {
            margin-right: 15px !important;
            margin-left: 5px !important;
        }


        .display-none {
            display: none !important;
        }

        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20px;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20px;
            }

        .modal {
            position: fixed;
            top: 0;
            left: 0;
            background-color: #ffffff;
            z-index: 99;
            opacity: 0.90;
            filter: alpha(opacity=90);
            -moz-opacity: 0.8;
            min-height: 100%;
            width: 100%;
        }

        .center {
            z-index: 1000;
            margin: 200px auto;
            padding: 10px;
            width: 190px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .center img {
                height: 128px;
                width: 128px;
            }

        input[type="radio"] {
            margin-left: 5px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="uplM" UpdateMode="Conditional">

            <ContentTemplate>
                <div class="container-fluid">
                    <div class="shadow-lg p-5 mt-3 rounded bg-white">
                        <div class="row justify-content-between align-items-center mb-4">
                            <img class="img-fluid img-1010" style="height: 50px; width: 100px" src="resource/img/Legasis_services1.png" />
                            <div class="row justify-content-center align-items-center">
                                <h3 class="text-center div-title">ESG Standing Evaluation</h3>
                            </div>

                            <img class="img-fluid img-legasis" style="height: 50px; width: 100px" src="resource/img/Legasis_services1.png" />
                        </div>
                        <div class="row border rounded">
                            <div class="col">
                                <asp:Label ID="lblmsg" CssClass="font-weight-bold text-danger" runat="server"></asp:Label>
                                <div class="row">
                                    <div class="col mb-sm-3 mb-lg-auto">
                                        <h4 class="mb-3 mt-3">Personal Details</h4>
                                        <div class="row">
                                            <div class="col-md-6 form-group">
                                                <label for="txtEntity">Company Name:</label></label><small title="Required" style="color: red !important;">&#10033;</small>
                                                <asp:RequiredFieldValidator CssClass="small font-weight-bold float-right" runat="server"
                                                    ValidationGroup="aaa" ID="RequiredFieldValidator1" ErrorMessage="Enter Company Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtEntity"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtEntity" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 form-group">
                                                <label for="txtPointOfContact">Person Name:</label></label><small title="Required" style="color: red !important;">&#10033;</small>
                                                <asp:RequiredFieldValidator CssClass="small font-weight-bold float-right" runat="server"
                                                    ValidationGroup="aaa" ID="RequiredFieldValidator2" ErrorMessage="Enter Details" ForeColor="Red" SetFocusOnError="true"
                                                    ControlToValidate="txtPointOfContact"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="txtPointOfContact" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <div class="col-md-6 form-group">
                                                <label for="txtCompanyEmail">Email:</label></label><small title="Required" style="color: red !important;">&#10033;</small>
                                                <asp:RequiredFieldValidator CssClass="small font-weight-bold float-right" runat="server" Text="" ValidationGroup="aaa" ID="RequiredFieldValidator4" ErrorMessage="Enter Email" ForeColor="Red"
                                                    SetFocusOnError="true" ControlToValidate="txtCompanyEmail"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator CssClass="small font-weight-bold float-right" Text="" ID="RegularExpressionValidator2" ValidationGroup="aaa" runat="server" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                                    ErrorMessage="Invalid email address" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtCompanyEmail"></asp:RegularExpressionValidator>
                                                <asp:TextBox ID="txtCompanyEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 form-group">
                                                <div class="row">
                                                    <div class="col-md-3 form-group">
                                                        <label for="txtCountryCode">Country Code:</label>
                                                        <asp:TextBox ID="txtCountryCode" placeholder="Eg. +91" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-9 form-group">
                                                        <label for="txtCompanyContact">Contact Number:</label><small title="Required" style="color: red !important;">&#10033;</small>
                                                        <asp:RequiredFieldValidator CssClass="small font-weight-bold float-right" runat="server" ValidationGroup="aaa" ID="RequiredFieldValidator14" ErrorMessage="Enter Contact" ForeColor="Red"
                                                            SetFocusOnError="true" Text="" ControlToValidate="txtCompanyContact"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator CssClass="small font-weight-bold float-right" ErrorMessage="Enter a valid phone number" ForeColor="Red"
                                                            SetFocusOnError="true" ControlToValidate="txtCompanyContact" runat="server" ValidationExpression="^\d{10}" />
                                                        <asp:TextBox ID="txtCompanyContact" CssClass="form-control" runat="server"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row border rounded mt-2">
                            <div class="col">
                                <div class="row">
                                    <div class="col mb-sm-3 mb-lg-auto">
                                        <h4 class="mb-3 mt-3 text-center">
                                            <asp:Label ID="lblStepCount" runat="server" Text="Quiz"></asp:Label></h4>
                                        <div class="text-center">
                                            <asp:Label ID="lblResult" CssClass="font-weight-bold text-success" runat="server"></asp:Label>
                                        </div>
                                        <hr />
                                        <asp:Wizard DisplayCancelButton="true" ID="Wizard1" runat="server" DisplaySideBar="false" StartNextButtonStyle-CssClass="btn btn-primary" StepNextButtonStyle-CssClass="btn btn-primary" FinishCompleteButtonStyle-CssClass="btn btn-success" StepPreviousButtonStyle-CssClass="btn btn-warning" FinishPreviousButtonStyle-CssClass="btn btn-warning" CancelButtonStyle-CssClass="btn btn-danger" CssClass="table table-responsive table-borderless" OnCancelButtonClick="Wizard1_CancelButtonClick" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" OnPreviousButtonClick="Wizard1_PreviousButtonClick">
                                            <FinishNavigationTemplate>

                                                <asp:Button runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" CssClass="btn btn-warning" ID="FinishPreviousButton"></asp:Button>

                                                <asp:Button runat="server" CommandName="MoveComplete" CausesValidation="true" ValidationGroup="aaa" Text="Finish" CssClass="btn btn-success" ID="FinishButton"></asp:Button>

                                                <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" ID="CancelButton"></asp:Button>

                                            </FinishNavigationTemplate>

                                            <StartNavigationTemplate>

                                                <asp:Button runat="server" CommandName="MoveNext" CausesValidation="true" ValidationGroup="aaa" Text="Next" CssClass="btn btn-primary" ID="StartNextButton"></asp:Button>

                                                <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" ID="CancelButton"></asp:Button>

                                            </StartNavigationTemplate>

                                            <StepNavigationTemplate>

                                                <asp:Button runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" CssClass="btn btn-warning" ID="StepPreviousButton"></asp:Button>

                                                <asp:Button runat="server" CommandName="MoveNext" CausesValidation="true" ValidationGroup="aaa" Text="Next" CssClass="btn btn-primary" ID="StepNextButton"></asp:Button>

                                                <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" ID="CancelButton"></asp:Button>

                                            </StepNavigationTemplate>
                                            <WizardSteps>
                                                <asp:WizardStep ID="WizardStep1" runat="server" EnableTheming="true">
                                                    <div class="form-group m-0 p-0">
                                                        <p class="lead text-break">Q1. Does your company disclose basic information about the company such as size, location, products, no. of employees, CSR activities and prepare a report on the same? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList" ValidationGroup="aaa">
                                            <asp:ListItem Text=" Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text=" No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text=" Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Q1" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>
                                                        <hr />
                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep2" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q2. Is your company making disclosures about company’s operations in environmentally sensitive areas such as water-stressed zones etc?  </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Q2" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep3" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q3. Does the company disclose information on policies and processes relating to the National Guidelines on Responsible Business Conduct (NGRBC) Principles concerning leadership, governance, and stakeholder engagement and provide links to their websites where these policies are available? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q3" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Q3" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep4" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q4. Does your company provide details regarding meetings and dialogues organised on responsible business conduct and sustainability with shareholders along with details of anti-corruption or anti-bribery policy? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q4" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="Q4" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep5" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q5. Is the entity making disclosures on the basis of materiality as specified in Regulation 30 of SEBI (Listing Obligations and Disclosure Obligations) Regulations, 2015 and as disclosed on the entity’s website? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q5" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="Q5" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep6" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q6. Does your entity indicate, what proportion of its inputs (by quantity or value) are sourced from suppliers who are either covered by the company’s sustainable sourcing programmes and/or are certified to be compliant with social and environmental standards such as SA 8000, ISO 14001, OHSAS 18001 or relevant labels like Rainforest Alliance, Rugmark, RSPO etc? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q6" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="Q6" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep7" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q7. Is your company complying with ‘the Uniform Framework for Extended Producers Responsibility’ issued by the Ministry of Environment, Forest and Climate Change that places responsibility on producers, importers and brand owners to establish a system for collecting back the plastic waste generated due to their products and submit a plan for such collection, with the relevant Pollution Control Boards? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q7" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="Q7" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep8" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q8. Does your entity take steps for well-being of employees and disclose information regarding accessibility of workplaces, return to work and retention rates of permanent employees/ workers that took parental leave, training imparted to the employees and workers on health and safety measures and on skill upgradation, performance and career development review, measures taken by the entity to ensure a safe and healthy work place? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q8" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="Q8" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep9" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q9. Is your entity disclosing the basis for determining stakeholders and determining the groups with whom to engage or not to engage and comply with National Guidelines for Responsible Business Conduct, in respect of its responsibility of its stakeholders?  </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q9" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="Q9" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep10" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q10. Does the entity indicate if stakeholder engagement is used to support the identification and management of environmental, and social topics? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q10" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="Q10" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep11" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q11. Does your entity take steps for well-being of employees and disclose information regarding accessibility of workplaces, return to work and retention rates of permanent employees/ workers that took parental leave, training imparted to the employees and workers on health and safety measures and on skill upgradation, performance and career development review, measures taken by the entity to ensure a safe and healthy work place? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q11" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="Q11" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep12" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q12. Is your entity disclosing the basis for determining stakeholders and determining the groups with whom to engage or not to engage and comply with National Guidelines for Responsible Business Conduct, in respect of its responsibility of its stakeholders?  </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q12" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="Q12" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep13" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q13. Does the entity indicate if stakeholder engagement is used to support the identification and management of environmental, and social topics? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q13" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="Q13" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep14" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q14. Is your entity organising Training programs on human rights issues and policies for employees and workers and disclosing information regarding remuneration/ salary/ wages of employees and complaints made by employees and workers on sexual harassment, discrimination at workplace, child labour, forced labour/involuntary labour, wages or other human rights related issues?   </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q14" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="Q14" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep15" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q15. Does the entity provide details of total energy consumption, total water withdrawn, policy regarding discharge of the waste-water to the environment, greenhouse gas (GHG) emissions, waste generated, recycled and re-used, waste management practices, Environmental Impact Assessments (EIA) in compliance with applicable environmental laws? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q15" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="Q15" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep16" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q16. Is the entity complying with targets related to energy consumption, set up by Perform Achieve and Trade (PAT) scheme (“Scheme”) has been launched by Bureau of Energy Efficiency under the National Mission for Enhanced Energy Efficiency (NMEEE).  </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q16" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="Q16" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep17" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q17. Whether the entity has undertaken Social Impact Assessments (SIA) in compliance with laws such as the Right to Fair Compensation and Transparency in Land Acquisition, Rehabilitation and Resettlement Act, 2013? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q17" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="Q17" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep18" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q18. Whether the entity has set up a mechanism and to receive grievances of the local community? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q18" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="Q18" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep19" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q19. Does your entity provide details regarding percentage of inputs directly sourced from MSMEs/ small producers? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q19" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="Q19" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep20" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q20. Is your entity making disclosure regarding the number of instances and reasons for voluntary or forced recall of products of the entity? (A product recall is the process of retrieving defective and/or potentially unsafe goods from consumers.)  </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q20" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="Q20" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep21" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q21. Is your entity making disclosure of details regarding CSR projects undertaken by your company in designated aspirational districts as identified by government bodies? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q21" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="Q21" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                                <asp:WizardStep ID="WizardStep22" runat="server" EnableTheming="true">
                                                    <div class="form-group">
                                                        <p class="lead">Q22. Whether your entity’s policy/policies cover each principle and its core elements of the NGRBCs? </p>
                                                        Ans:
                                        <asp:RadioButtonList ID="Q22" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know" Value="0"></asp:ListItem>

                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ControlToValidate="Q22" runat="server" ForeColor="Red" ErrorMessage="Select Answer" ValidationGroup="aaa"></asp:RequiredFieldValidator>

                                                    </div>
                                                </asp:WizardStep>
                                            </WizardSteps>
                                        </asp:Wizard>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="uProgress" runat="server">
            <ProgressTemplate>
                <div class="modals" id="mm" runat="server">
                    <div class="center" align="center" id="ll" runat="server" style="vertical-align: middle">
                        <table>
                            <tr>
                                <img src="resource/img/Loadingsome.gif" alt="loading" class="img-fluid" />
                            </tr>
                        </table>
                    </div>
                </div>

            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
    <script src="resource/js/jquery-3.4.0.min.js"></script>
    <script src="resource/js/bootstrap.min.js"></script>
    <%--<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>--%>
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
</body>
</html>

