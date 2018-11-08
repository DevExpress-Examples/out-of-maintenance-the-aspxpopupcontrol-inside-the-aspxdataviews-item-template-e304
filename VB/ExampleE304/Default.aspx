<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxDataView"
	TagPrefix="dxdv" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxPopupControl"
	TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<dxdv:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="AccessDataSource1">
			<ItemTemplate>
				<b>title_id</b>:
				<asp:Label runat="server" Text='<%#Eval("title_id")%>' ID="Label1"></asp:Label><br />
				<b>qty</b>:
				<asp:Label runat="server" Text='<%#Eval("qty")%>' ID="Label4"></asp:Label><br />

				<dxe:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="#" Text="More info..." ClientSideEvents-Click='<%#GetClickHandler(Container.ItemIndex)%>'>
				</dxe:ASPxHyperLink><br />
				<dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName='<%#GetClientInstanceName(Container.ItemIndex)%>' HeaderText='<%#Eval("title_id")%>'>
					<ContentCollection>
						<dxpc:PopupControlContentControl runat="server">
							<b>ord_num</b>:
							<asp:Label runat="server" Text='<%#Eval("ord_num")%>' ID="Label2"></asp:Label>
							<br />
							<b>ord_date</b><strong>: </strong>
							<asp:Label runat="server" Text='<%#Eval("ord_date")%>' ID="Label3"></asp:Label>
							<br />
							<b>payterms</b>:
							<asp:Label runat="server" Text='<%#Eval("payterms")%>' ID="Label5"></asp:Label>
							<br />
							<b>title_id</b>:
							<asp:Label runat="server" Text='<%#Eval("stor_id")%>' ID="Label6"></asp:Label>
						</dxpc:PopupControlContentControl>
					</ContentCollection>
				</dxpc:ASPxPopupControl>
			</ItemTemplate>
			<ItemStyle Height="100px" Width="150px" />
		</dxdv:ASPxDataView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
			SelectCommand="SELECT * FROM [sales]"></asp:AccessDataSource>
	</form>
</body>
</html>
