
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles ImageButton3.Click
        Response.Redirect("Mandiprices.aspx")
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles ImageButton4.Click

        Response.Redirect("Calendar.aspx")
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles ImageButton5.Click
        Response.Redirect("helpline.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles ImageButton2.Click
        Response.Redirect("policies.aspx")
    End Sub
End Class
