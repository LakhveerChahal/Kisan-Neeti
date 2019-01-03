Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        GridView1.Visible = False
        croplabel.Visible = False
        distlabel.Visible = False
        marketlabel.Visible = False
    End Sub
    Protected Sub cropdown_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cropdown.SelectedIndexChanged
        Dim crop As String = cropdown.SelectedValue
        mandidown.Items.Clear()
        mandidown.Items.Insert(0, "--Select--")
        If crop IsNot "0" Then
            croplabel.Visible = False
            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=kisaan_niti;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = ("select crop_id from crops where cropname='" & crop & "'")
            Dim sdr As SqlDataReader = cmd.ExecuteReader
            If sdr.Read() Then
                Session("cropid") = sdr.Item("crop_id")
            End If
            sdr.Close()
            con.Close()
        End If
    End Sub
    Protected Sub distdown_SelectedIndexChanged(sender As Object, e As EventArgs) Handles distdown.SelectedIndexChanged
        mandidown.Items.Clear()
        mandidown.Items.Insert(0, "--Select--")
        Dim dist As String = distdown.SelectedValue
        If cropdown.SelectedValue IsNot "0" Then
            If dist IsNot "0" Then
                distlabel.Visible = False
                Dim con As New SqlConnection
                Dim cmd As New SqlCommand
                con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=kisaan_niti;Integrated Security=True"
                con.Open()
                cmd.Connection = con
                cmd.CommandText = ("select dist_id from location where locname='" & dist & "'")
                Dim sdr As SqlDataReader = cmd.ExecuteReader
                If sdr.Read() Then
                    Session("distid") = sdr.Item("dist_id")
                End If
                sdr.Close()
                con.Close()
            Else
                    distlabel.Visible = True
            End If
        Else
            croplabel.Visible = True
        End If
    End Sub
    Protected Sub mandidown_SelectedIndexChanged(sender As Object, e As EventArgs) Handles mandidown.SelectedIndexChanged
        If mandidown.SelectedValue IsNot "0" Then
            marketlabel.Visible = False
            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=kisaan_niti;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = ("select mandi_id from mandi where mandiname='" & mandidown.SelectedValue & "'")
            Dim sdr As SqlDataReader = cmd.ExecuteReader
            If sdr.Read() Then
                Session("mandiid") = sdr.Item("mandi_id")
            End If
            sdr.Close()
            con.Close()
        Else
                marketlabel.Visible = True
        End If
    End Sub
    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        If mandidown.SelectedValue IsNot "0" And distdown.SelectedValue IsNot "0" And cropdown.SelectedValue IsNot "0" Then
            GridView1.Visible = True
            GridView1.DataBind()
        Else
            GridView1.Visible = False
            If mandidown.SelectedValue Is "0" Then
                marketlabel.Visible = True
            End If
            If distdown.SelectedValue Is "0" Then
                distlabel.Visible = True
            End If
            If cropdown.SelectedValue Is "0" Then
                croplabel.Visible = True
            End If
        End If

    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
