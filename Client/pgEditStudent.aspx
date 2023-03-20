<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pgEditStudent.aspx.cs" Inherits="Client.pgEditStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
     <form id="form1" runat="server">
        <section id="main-content">
<section class="wrapper">
<div class="row">
<div class="col-lg-12">
<section class="panel">
<header class="panel-heading">
<div class="col-md-4 col-md-offset-4">
<h1> Edit Student</h1>
</div>
</header>
<div class="panel-body">
<div class="row">
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtFName"><b>ID :</b></asp:Label>
<asp:Label runat="server" ID="lblID"></asp:Label>
</div>
</div>
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtFName"><b>First Name</b></asp:Label><br />
<asp:TextBox runat="server" name="BrandName" ID="txtFName" class="form-control input-sm" placeholder="First Name"></asp:TextBox>
</div>
</div>
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtLName"><b>Last Name</b></asp:Label><br />
<asp:TextBox runat="server" name="BrandName" ID="txtLName" class="form-control input-sm" placeholder="Last Name"></asp:TextBox>
</div>
</div>
</div>
<div class="row">
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtEmail"><b>Email</b></asp:Label><br />
<asp:TextBox runat="server" TextMode="Email" name="BrandName" ID="txtEmail" class="form-control input-sm" placeholder="Email"></asp:TextBox>
</div>
</div>
</div>
<div class="row">
      <div class="col-md-4 col-md-offset-1">
<div class="form-group">
     <asp:Label runat="server" AssociatedControlID="chkCourses"><b>Available Courses</b></asp:Label><br />
    <asp:CheckBoxList ID="chkCourses" Width="15%" CssClass="form-control input-sm" runat="server" >
    </asp:CheckBoxList>
     </div> 
</div>
</div>
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="form-group">
<asp:Button Text="Edit" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-primary btn-lg" Width="20%" runat="server" />
<asp:Label Text="" ForeColor="Green" Font-Bold="true" ID="lblMessage" CssClass="label label-success" runat="server" />
</div>
</div>
</div>

</div>
</section>
      <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                  <div class="form-group">
                                      <asp:HyperLink runat="server" Text="View All Students" NavigateUrl="~/pgStudents.aspx"></asp:HyperLink>
                                  </div>
                                  </div>
                                   </div>
</div>
</div>
</section>
</section>
    </form>


</body>
</html>
