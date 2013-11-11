
Partial Class CameraDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Camera.aspx")
    End Sub
End Class
