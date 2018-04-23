Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxDataView
Imports DevExpress.Web.ASPxClasses

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub dataView_DataBound(ByVal sender As Object, ByVal e As EventArgs)
		Dim dv As ASPxDataView = CType(sender, ASPxDataView)
		SaveJsProperties(dv)
	End Sub
	Protected Sub dataView_CustomCallback(ByVal sender As Object, ByVal e As CallbackEventArgsBase)
		Dim dv As ASPxDataView = CType(sender, ASPxDataView)
		Select Case e.Parameter
			Case "Next"
				dv.PageIndex += 1
			Case "Prev"
				dv.PageIndex -= 1
		End Select
		SaveJsProperties(dv)
	End Sub
	Private Sub SaveJsProperties(ByVal dv As ASPxDataView)
		dv.JSProperties("cpPageCount") = dv.PageCount
		dv.JSProperties("cpPageIndex") = dv.PageIndex
	End Sub
End Class