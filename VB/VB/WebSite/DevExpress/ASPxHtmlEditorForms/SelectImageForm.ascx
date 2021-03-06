<%@ Control Language="vb" AutoEventWireup="true" CodeFile="SelectImageForm.ascx.vb" Inherits="SelectImageForm" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFileManager" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v10.2, Version=10.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<script type="text/javascript" id="dxss_SelectImageForm">
	function aspxHESelectImageForm_OnSelectedFileChanged(s, e) {
		dxheSelectImageForm_SelectButton.SetEnabled(!!e.file);
	}
	function aspxHEClosePopup() {
		BrowsePopup.Hide();
	}
	function aspxHESelectImageForm_ImageSelected() {
		aspxHEClosePopup();
		var imageUrl = FileManager.cp_RootFolderRelativePath + FileManager.GetSelectedFile().GetFullName("\/", true);
		_dxeTbxInsertImageUrl.SetText(imageUrl);
		aspxInsertImageSrcValueChanged(imageUrl);
		_dxeTbxInsertImageUrl.Validate();
	}
	function aspxHESelectImageForm_Canceled() {
		aspxHEClosePopup();
	}
</script>
<dx:ASPxPanel ID="MainPanel" runat="server" Width="100%" DefaultButton="InsertButton">
	<PanelCollection>
		<dx:PanelContent ID="PanelContent1" runat="server">
			<table cellpadding="0" cellspacing="0" id="dxSelectImageForm">
				<tr>
					<td>
						<dx:HtmlEditorFileManager ID="FileManager" runat="server" Height="500px" Width="800px" ClientInstanceName="FileManager" OnCustomJSProperties="FileManager_CustomJSProperties" Border-BorderStyle="None">
							<ClientSideEvents SelectedFileChanged="aspxHESelectImageForm_OnSelectedFileChanged" SelectedFileOpened="aspxHESelectImageForm_ImageSelected" />
							<Styles>
								<FolderContainer Width="250px">
								</FolderContainer>
								<File>
									<Margins Margin="1px"></Margins>
								</File>
							</Styles>
						</dx:HtmlEditorFileManager>
					</td>
				</tr>
				<tr>
					<td class="buttonsCell" align="right">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<dx:ASPxButton ID="SelectButton" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False" ClientEnabled="false" ClientInstanceName="dxheSelectImageForm_SelectButton">
										<ClientSideEvents Click="aspxHESelectImageForm_ImageSelected" />
									</dx:ASPxButton>
								</td>
								<td class="cancelButton">
									<dx:ASPxButton ID="CancelButton" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False">
										<ClientSideEvents Click="aspxHESelectImageForm_Canceled" />
									</dx:ASPxButton>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</dx:PanelContent>
	</PanelCollection>
</dx:ASPxPanel>