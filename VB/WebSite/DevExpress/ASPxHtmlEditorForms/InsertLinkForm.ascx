<%@ Control Language="vb" AutoEventWireup="true" CodeFile="InsertLinkForm.ascx.vb"
	Inherits="InsertLinkForm" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxHiddenField" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<dxp:ASPxPanel ID="MainPanel" runat="server" Width="100%" DefaultButton="btnOk">
	<PanelCollection>
		<dxp:PanelContent runat="server">
			<table cellpadding="0" cellspacing="0" id="dxInsertLinkForm">
				<tr>
					<td class="contentCell">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td class="typeRadionButtonListCell">
									<dxe:ASPxRadioButtonList ID="rblLinkType" runat="server" ItemSpacing="22px" RepeatDirection="Horizontal"
										SelectedIndex="0" ClientInstanceName="_dxeRblLinkType">
										<ClientSideEvents SelectedIndexChanged="function(s, e) { OnTypeLinkChanged__InsertLinkForm(s); }" />
										<Border BorderStyle="None" />
										<Paddings PaddingLeft="0px" PaddingTop="0px" PaddingBottom="0px" />
									</dxe:ASPxRadioButtonList>
								</td>
							</tr>
							<tr>
								<td>
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpInsertLink" runat="server">
										<panelcollection>
									<dxhe:HtmlEditorRoundPanelContent runat="server">
										<!-- URL -->                                        
										<table cellpadding="0" cellspacing="0" id='<% =HtmlEditor.ClientID + "_dxeURLArea" %>'>
											<tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblUrl" runat="server" AssociatedControlID="txbURL">
													</dxe:ASPxLabel>                                
												</td>
												<td class="inputCell">                        
													<dxe:ASPxTextBox ID="txbURL" ClientInstanceName="_dxeTxbURL" runat="server" Width="274px" AutoCompleteType="Disabled">
														<ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom" SetFocusOnError="True" ValidateOnLeave="False" ValidationGroup="_dxeTxbURLGroup">
															<RequiredField IsRequired="True" />
															<ErrorFrameStyle Font-Size="10px">
															</ErrorFrameStyle>
														</ValidationSettings>
													</dxe:ASPxTextBox>                                
												</td>
											</tr>
										</table>
										<table cellpadding="0" cellspacing="0" id='<% =HtmlEditor.ClientID + "_dxeEmailArea" %>' style="display: none;">
											<tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblEmailTo" runat="server" AssociatedControlID="txbEmailTo">
													</dxe:ASPxLabel>                                
												</td>
												<td class="inputCell">                        
													<dxe:ASPxTextBox ID="txbEmailTo" ClientInstanceName="_dxeTxbEmailTo" runat="server" Width="250px" AutoCompleteType="Disabled">
														<ValidationSettings ErrorDisplayMode="Text" ErrorTextPosition="Bottom" SetFocusOnError="True" ValidateOnLeave="False" ValidationGroup="_dxeTxbEmailToGroup">
															<RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
															<ErrorFrameStyle Font-Size="10px">
															</ErrorFrameStyle>
															<RequiredField IsRequired="True" />
														</ValidationSettings>
													</dxe:ASPxTextBox>
												</td>                        
											</tr>
											<tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblSubject" runat="server" AssociatedControlID="txbSubject">
													</dxe:ASPxLabel>                                
												</td>
												<td class="inputCell">                        
													<dxe:ASPxTextBox ID="txbSubject" ClientInstanceName="_dxeTxbSubject" runat="server" Width="250px" AutoCompleteType="Disabled">
													</dxe:ASPxTextBox>                                
												</td>                        
											</tr>
										</table>
										<table cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="2" class="displayPropertiesCell">
													<dxe:ASPxLabel ID="lblLinkDisplay" runat="server">
													</dxe:ASPxLabel>                                                            
												</td>
											</tr>
											<tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblText" ClientInstanceName="_dxeLblText" runat="server" AssociatedControlID="txbText">
													</dxe:ASPxLabel>
												</td>
												<td class="inputCell">                        
													<dxe:ASPxTextBox ID="txbText" ClientInstanceName="_dxeTxbText" runat="server" Width="258px" AutoCompleteType="Disabled">
													</dxe:ASPxTextBox>
												</td>
											</tr>
											<tr>
												<td colspan="2" class="separatorCell"></td>
											</tr>
											<tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblToolTip" runat="server" AssociatedControlID="txbToolTip">
													</dxe:ASPxLabel>
												</td>
												<td class="inputCell">
													<dxe:ASPxTextBox ID="txbToolTip" ClientInstanceName="_dxeTxbToolTip" runat="server" Width="258px" AutoCompleteType="Disabled">
													</dxe:ASPxTextBox>
												</td>
											</tr>
											 <tr>
												<td class="captionCell">                        
													<dxe:ASPxLabel ID="lblImage" runat="server" Text="Image" AssociatedControlID="uplImage">
													</dxe:ASPxLabel>
												</td>
												<td class="inputCell">
													<dxhe:ASPxHtmlEditorUploadControl ID="uplImage" runat="server" ClientInstanceName="_dxeUplImage"
														OnFileUploadComplete="uplImage_FileUploadComplete" Width="100%">
														<ClientSideEvents FileUploadComplete="function(s, e) {aspxImageLinkUploadComplete(e); }" 
														/>
													</dxhe:ASPxHtmlEditorUploadControl>
												</td>
											</tr>
										</table>
									</dxhe:HtmlEditorRoundPanelContent>
								</panelcollection>
									</dxhe:ASPxHtmlEditorRoundPanel>
								</td>
							</tr>
							<tr>
								<td id='<% =HtmlEditor.ClientID + "_dxeTargetArea" %>' class="targetCheckBoxCell">
									<dxe:ASPxCheckBox ID="ckbOpenInNewWindow" ClientInstanceName="_dxeCkbOpenInNewWindow"
										runat="server">
									</dxe:ASPxCheckBox>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="buttonsCell" align="right">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<dxe:ASPxButton ID="btnOk" runat="server" AutoPostBack="False" Height="23px" Width="74px"
										ClientInstanceName="_dxeBtnOk" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) {OnOkButtonClick_InsertLinkForm();}" />
									</dxe:ASPxButton>
									<dxe:ASPxButton ID="btnChange" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" ClientInstanceName="_dxeBtnChange" ClientVisible="False" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) { OnOkButtonClick_InsertLinkForm(); }" />
									</dxe:ASPxButton>
								</td>
								<td class="cancelButton">
									<dxe:ASPxButton ID="btnCancel" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) {OnCancelButtonClick_InsertLinkForm();}" />
									</dxe:ASPxButton>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</dxp:PanelContent>
	</PanelCollection>
</dxp:ASPxPanel>

<script type="text/javascript" id="dxss_InsertLinkForm">
	// for v2010 vol 2.
	InsertLinkCommand.PrepareLinkText = function(text) { return text; }
	// for  v2011 vol 1.
	//ASPxHtmlEditorCommands.InsertLink.PrepareLinkText = function(text) { return text; }
	function OnOkButtonClick_InsertLinkForm() {
		if (IsValidFields_InsertLinkForm()) {

			if (_dxeUplImage.GetText() != "") {
				_dxeUplImage.Upload();
			}
			else {
				aspxDialogComplete(1, GetDialogData_InsertLinkForm(""));
			}
		}
	}
	function aspxImageLinkUploadComplete(e) {
		aspxDialogComplete(1, GetDialogData_InsertLinkForm(e.callbackData));

	}
	function OnCancelButtonClick_InsertLinkForm() {
		aspxDialogComplete(0, GetDialogData_InsertLinkForm());
	}

	function OnTypeLinkChanged__InsertLinkForm(radioButtonList) {

		var value = radioButtonList.GetValue();
		var urlArea = _aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeURLArea" %>');
		var emailArea = _aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeEmailArea" %>');
		var targetArea = _aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeTargetArea" %>');

		_aspxSetElementDisplay(urlArea, value == "URL");
		_aspxSetElementDisplay(targetArea, value == "URL");

		_aspxSetElementDisplay(emailArea, value == "Email");
	}
	function IsValidFields_InsertLinkForm() {
		var ret = true;
		if (_dxeTxbEmailTo.IsVisible())
			ret = ASPxClientEdit.ValidateGroup("_dxeTxbEmailToGroup") && ret;
		if (_dxeTxbURL.IsVisible())
			ret = ASPxClientEdit.ValidateGroup("_dxeTxbURLGroup") && ret;
		return ret;
	}
	function GetDialogData_InsertLinkForm(image) {
		var res = new Object();
		res.subject = "";
		res.target = "";
		res.text = "";
		res.title = "";
		res.url = "";
		res.isCheckedOpenInNewWindow = false;

		res.isCheckedOpenInNewWindow = _dxeCkbOpenInNewWindow.GetValue();
		res.isTextOnlySelected = _dxeTxbText.GetEnabled();
		res.url = _dxeRblLinkType.GetValue() == "Email" ? _dxeTxbEmailTo.GetValue() : _dxeTxbURL.GetValue();
		res.subject = _dxeTxbSubject.GetValue();
		res.title = _dxeTxbToolTip.GetText();
		if (image == "") {
			res.text = _dxeTxbText.GetText();
		}
		else {
			res.text = _dxeTxbText.GetText() + '<img alt="" src="' + image + '" />';
		}
		return res;
	}
</script>