﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grafftiBlog.aspx.cs" Inherits="grafftiBlog" %>

<!DOCTYPE html>
<style type="text/css">
    html {background-color: black}
        #form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
        .auto-style1 {
            background-color: #000;
        }

        .auto-style2 {
            width: 200px;
        }         </style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <a href="Topics.aspx"> Back To Topics</a>
    <form id="form1" runat="server">
        <div>
    <h2>
   Graffti Blogs - You May Paint Over Me but I WILL Still be HERE!</h2>
<br />
        <div style="margin-left: 601px">
        <asp:Repeater ID="rptPages" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <%# Container.ItemIndex + 1 %>
        <asp:HyperLink ID="HyperLink" NavigateUrl='<%# string.Format("~/blog/{0}/{1}.aspx", Eval("PostID"), Eval("Subject")) %>'
            Text='<%# Eval("Subject") %>' runat="server" validateRequest ="false" />
    </ItemTemplate>
    <SeparatorTemplate>
        <br />
    </SeparatorTemplate>
</asp:Repeater>
            </div >
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WBLConnectionString5 %>" SelectCommand="SELECT [PostID], [BlogPostDate], [PostContent], [Subject] FROM [BlogPost] WHERE ([DisciplineType] = @DisciplineType)">
            <SelectParameters>
                <asp:SessionParameter Name="DisciplineType" SessionField="DisciplineType" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
                 Rules:</p>
        <p>
            Graffti topics only
             </p>
    
        <asp:Button ID="AddPost" runat="server" Text="Add Post" OnClick="AddPost_Click" style="margin-left: 601px" />
    
        </p>
        <div style="margin-left: 1000px" ><script src="https://www.reddit.com/r/hiphop/new/.embed?limit=10&t=week&sort=new" type="text/javascript"></script></div>
        </form>
</body>
</html>
