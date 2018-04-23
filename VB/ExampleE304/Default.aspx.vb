Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Public Function GetClientInstanceName(ByVal index As Integer) As String
		Return "pc" & index.ToString()
	End Function
	Public Function GetClickHandler(ByVal index As Integer) As String
		Return "function(s, e){ pc" & index.ToString() & ".ShowAtPos(e.htmlEvent.x, e.htmlEvent.y); }"
	End Function
End Class
