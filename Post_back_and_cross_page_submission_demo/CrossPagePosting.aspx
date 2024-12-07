<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Cross Page Posting demo</title>
</head>
<body>
<h1>Cross Page Posting demo</h1>
<form runat="server">
    <asp:Label runat="server">Name</asp:Label>
    <asp:TextBox ID="TextBox" runat="server"></asp:TextBox><br/><br/>
    <asp:Button 
          ID="Button2" 
          PostBackUrl="~/Greet.aspx"
          runat="server"
          Text="Cross Page Greet"
        /><br/><br/>
    <asp:LinkButton ID="PostBackPostingDemoLink" runat="server">Cross Page Posting Demo</asp:LinkButton>
</form>
<script runat="server">
    void Page_Load(Object sender, EventArgs e)
    {
        PostBackPostingDemoLink.Click += RedirectToPostBackPostingDemo;
    }
    void RedirectToPostBackPostingDemo(Object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
</script>
</body>
</html>