<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Post back Posting demo</title>
</head>
<body>
<h1>Post back Posting demo</h1>
<form runat="server">
    <asp:Label runat="server">Name</asp:Label>
    <asp:TextBox ID="TextBox" runat="server"></asp:TextBox><br/><br/>
    <asp:Button ID="Button" runat="server" Text="Post Back Greet"/><br/><br/>
    <asp:Label ID="Message" runat="server"></asp:Label><br/><br/>
    <asp:LinkButton ID="CrossPagePostingDemoLink" runat="server">Cross Page Posting Demo</asp:LinkButton>
</form>
<script runat="server">
    void Page_Load(Object sender, EventArgs e)
    {
        Button.Click += Greet;
        CrossPagePostingDemoLink.Click += RedirectToCrossPagePostingDemo;
    }
    void Greet(Object sender, EventArgs e)
    {
        if (TextBox.Text == "")
        {
            Message.Text = "Enter your name";
            return;
        }

        Message.Text = "Hello " + TextBox.Text;
    }
    void RedirectToCrossPagePostingDemo(Object sender, EventArgs e)
    {
        Response.Redirect("CrossPagePosting.aspx");
    }
</script>
</body>
</html>