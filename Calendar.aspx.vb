Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Imports System.Net.NetworkCredential
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If Not (TextBox1.Text.Length = 0) And DropDownList1.SelectedValue IsNot "0" Then
            Dim con As New SqlConnection
            Dim cmd As New SqlCommand
            Dim cropid As Integer
            con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=kisaan_niti;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = ("select crop_id from crops where cropname='" & DropDownList1.SelectedValue & "'")
            Dim sdr As SqlDataReader = cmd.ExecuteReader
            If sdr.Read() Then
                cropid = sdr.Item("crop_id")
            End If
            sdr.Close()
            cmd.CommandType = CommandType.StoredProcedure
            Dim sdate As Date = TextBox1.Text
            Dim month As Integer = sdate.Month
            cmd.CommandText = "retaction"
            cmd.Parameters.Add("@crop", SqlDbType.Int).Value = cropid
            cmd.Parameters.Add("@month", SqlDbType.Int).Value = month
            cmd.Parameters.Add("@action", SqlDbType.VarChar, 500).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            Dim value As String
            value = cmd.Parameters("@action").Value
            result.Text = "Recommended Actions : " + value
            con.Close()
            Label3.Visible = True
            TextBox2.Visible = True
            Button2.Visible = True
            If Not TextBox2.Text.Length = 0 Then
                Using mail As New MailMessage("luckychahal4@gmail.com", TextBox2.Text.ToString)
                    mail.IsBodyHtml = True
                    mail.Subject = "Calendar Information"
                    mail.Body = value + "Thanks for using our service!"
                    Dim smtp As New System.Net.Mail.SmtpClient()
                    smtp.Host = "smtp.gmail.com"
                    smtp.Port = 587
                    smtp.Credentials = New System.Net.NetworkCredential("luckychahal4@gmail.com", "@lakhveer476")
                    smtp.UseDefaultCredentials = True
                    smtp.EnableSsl = True
                    smtp.Send(mail)
                    ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent');", True)
                End Using
            End If
        End If
    End Sub
    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label3.Visible = False
        TextBox2.Visible = False
        Button2.Visible = False
        Label4.Visible = False
    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Calendar1.Visible = True
    End Sub
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Label3.Visible = True
        TextBox2.Visible = True
        Button2.Visible = True
        label4.visible = True
    End Sub
End Class
