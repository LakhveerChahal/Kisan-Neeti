Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim policyid As Integer = TryCast(GridView1.SelectedRow.FindControl("pid"), Label).Text
        Session("pd") = policyid
        Response.Redirect("policydetails.aspx")
    End Sub
End Class
