<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pgStudents.aspx.cs" Inherits="Client.pgStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

     <asp:GridView runat="server" ID="grdStudents" AutoGenerateColumns="false">
          <Columns>
              <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
              <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
              <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
              <asp:BoundField DataField="Courses" HeaderText="Courses" SortExpression="Courses" />
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btngrdEdit" runat="server" Text="Edit" Font-Bold="true" OnClick="btngrdEdit_Click" ForeColor="Navy"/>
                </ItemTemplate>
            </asp:TemplateField>
          </Columns>
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"  />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"  />
          <EditRowStyle BackColor="#999999"  />
          <HeaderStyle CssClass="grdHeader" />
          <RowStyle CssClass="grdRow"  />
          <AlternatingRowStyle CssClass="grdAlt"  />
          <SelectedRowStyle CssClass="grdSelected" /> 
      </asp:GridView>
          <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                  <div class="form-group">
                                      <asp:HyperLink runat="server" Text="Add New Student" NavigateUrl="~/pgAddStudent.aspx"></asp:HyperLink>
                                  </div>
                                  </div>
                                   </div>
    </form>
</body>
</html>
