Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=kisaan_niti;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        Dim plid As Integer = Session("pd")
        cmd.CommandText = ("select policyname from policy where policy_id=" & plid)
        Dim sdr As SqlDataReader = cmd.ExecuteReader
        Dim pname As String
        If sdr.Read() Then
            pname = sdr.Item("policyname")
        End If
        Label1.Text = pname
        sdr.Close()
        cmd.CommandText = ("select pdetails from policydetails where pid=" & plid)
        sdr = cmd.ExecuteReader
        If sdr.Read() Then
            Dim pdet As String
            pdet = sdr.Item("pdetails")
            Label2.Text = pdet
        End If

        sdr.Close()
        con.Close()

        If plid = 1 Then
            Image1.ImageUrl = Page.ResolveUrl("Krishi unnati yojana.png")
        ElseIf plid = 2 Then
            Image1.ImageUrl = Page.ResolveUrl("Rashtriya-Krishi-Vikas-Yojana-RKVY.jpg")
        ElseIf plid = 3 Then
            Image1.ImageUrl = Page.ResolveUrl("Pradhan mantri krishi sinchai yajana.jpg")
        ElseIf plid = 4 Then
            Image1.ImageUrl = Page.ResolveUrl("Jute development schemes.jpg")
        ElseIf plid = 5 Then
            Image1.ImageUrl = Page.ResolveUrl("Agricultural Marketing Infrastructure.jpg")
        ElseIf plid = 6 Then
            Image1.ImageUrl = Page.ResolveUrl("Schemes on Seeds.jpg")
        ElseIf plid = 7 Then
            Image1.ImageUrl = Page.ResolveUrl("National Agroforestry Policy.jpg")
        ElseIf plid = 8 Then
            Image1.ImageUrl = Page.ResolveUrl("National Certificcation System-Tissues.jpg")
        ElseIf plid = 9 Then
            Image1.ImageUrl = Page.ResolveUrl("Scheme for Conservation,Development...jpg")
        Else
            Image1.ImageUrl = Page.ResolveUrl("Coming soon.png")
        End If
    End Sub
End Class
