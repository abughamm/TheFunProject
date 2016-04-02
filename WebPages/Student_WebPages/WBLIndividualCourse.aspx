<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLStudentMasterPage.master" AutoEventWireup="true" CodeFile="WBLIndividualCourse.aspx.cs" Inherits="WebPages_Student_WebPages_WBLIndividualCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        
    <body>
    <form id="form1" runat="server">
    <div>
        <p>This is the individual course page. Here the student can access materials related to a specific course.</p>
        <table>
      
       <tr><td><h3>Course Home Page</h3></td></tr>
       <tr><td>Course: </td><td><asp:DropDownList ID="ddCourse" runat="server" DataTextField="CourseName" ></asp:DropDownList></td></tr>
     </table>
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                    AllowPaging="true" DataKeyNames="CourseID" PageSize="5" PagerSettings-Mode="Numeric" 
                    EmptyDataText="No Courses Available">
             <Columns> 
                <asp:TemplateField HeaderText="Select"> 
                    <ItemTemplate> 
                        <asp:CheckBox ID="chkSelect" runat="server" /> 
                    </ItemTemplate> 
                </asp:TemplateField> 
                 <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
                  <asp:BoundField DataField="CourseName" HeaderText="Course Name" ReadOnly="True" SortExpression="CourseName" />
                  <asp:BoundField DataField="Difficulty" HeaderText="Difficulty" ReadOnly="True" SortExpression="Difficulty" />
                  <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" SortExpression="MemberID" />
                  <asp:BoundField DataField="FirstName" HeaderText="Teacher" ReadOnly="True" SortExpression="FirstName" />
                  <asp:BoundField DataField="LastName" HeaderText="Name" ReadOnly="True" SortExpression="LastName" />
                  <asp:BoundField DataField="SectionID" HeaderText="SectionID" ReadOnly="True" SortExpression="SectionID" />
                  <asp:BoundField DataField="MeetingDays" HeaderText="Meeting Days" ReadOnly="True" SortExpression="MeetingDays" />
                  <asp:BoundField DataField="MeetingTime" HeaderText="Meeting Time" ReadOnly="True" SortExpression="MeetingTime" />
                  <asp:BoundField DataField="RoomNumber" HeaderText="Room/Location" ReadOnly="True" SortExpression="RoomNumber" />
                  <asp:BoundField DataField="StartDate" HeaderText="Start Date" ReadOnly="True" SortExpression="StartDate" />
                  <asp:BoundField DataField="EndDate" HeaderText="End Date" ReadOnly="True" SortExpression="EndDate" />
                  <asp:BoundField DataField="LocationID" HeaderText="LocationID" ReadOnly="True" SortExpression="LocationID" />
                  <asp:BoundField DataField="LocationName" HeaderText="Location" ReadOnly="True" SortExpression="LocationName" />
                  <asp:BoundField DataField="Street" HeaderText="Street" ReadOnly="True" SortExpression="Street" />
                  <asp:BoundField DataField="City" HeaderText="City" ReadOnly="True" SortExpression="City" />
                  <asp:BoundField DataField="State" HeaderText="State" ReadOnly="True" SortExpression="State" />
            </Columns>  
        </asp:GridView> 

   
           </div>
    </form>
  
</body>
  
</asp:Content>

