<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Post back and cross page submission demo</title>
</head>
<body>
<form runat="server">
    <asp:Label ID="Message" runat="server"></asp:Label>
</form>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage != null)
        {
            TextBox txtBox = (TextBox)PreviousPage.FindControl("TextBox");

            if (txtBox.Text != "")
            {
                Message.Text = "Welcome " + txtBox.Text;
                return;
            }
            
            Message.Text = "Go Back and enter your name first";
            return;
        }

        Response.Redirect("Default.aspx");
    }
</script>
</body>
</html>