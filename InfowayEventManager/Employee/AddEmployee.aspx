<%@ Page Title="" Language="C#" MasterPageFile="~/IEM_Master_Page.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="InfowayEventManager.Employee.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
 
    <div class="container" >

   
  <div class="form-group">
    <label for="eid">Employee Id:</label>
      <asp:TextBox ID="eid" TextMode="Number" runat="server"></asp:TextBox>
<%--<input type="number" class="form-control" id="eid" runat="server">--%>
  </div>
  <div class="form-group">
    <label for="ename">Employee Name:</label>
     <asp:TextBox ID="ename" runat="server"></asp:TextBox>
  </div>
    <div class="form-group">
    <label for="deptid">Department id:</label>
  
        <asp:TextBox ID="deptid" TextMode="Number" runat="server"></asp:TextBox>
  </div>
   <div class="form-group">
    <label for="city">City:</label>
    
       <asp:TextBox ID="ecity" runat="server"></asp:TextBox>
  </div>
   <div class="form-group">
    <label for="email">Email id:</label>
       <asp:TextBox ID="email"  TextMode="Email" runat="server"></asp:TextBox>
   
  </div>
     <div class="form-group">
    <label for="phno">Phone no:</label>
          <asp:TextBox ID="phno" TextMode="Number" runat="server"></asp:TextBox>

  </div>
  <div class="form-group">
    <label for="dob">Date of Birth:</label>
      <asp:TextBox ID="dob" TextMode="Datetime" runat="server"></asp:TextBox>
   
  </div>
    <div class="form-group">
    <label for="doj">Date of Joining:</label>
         <asp:TextBox ID="doj" TextMode="Datetime" runat="server"></asp:TextBox>
    
  </div>
    
        <div class="form-group">
    <label for="rollid">Roll id:</label>
    
      <asp:TextBox ID="rollid" TextMode="Number" runat="server"></asp:TextBox>    
  </div>

  <label for="rollname">Roll Name:</label>
      <asp:TextBox ID="rolename"  runat="server"></asp:TextBox>    
  </div>
       
     <div class="form-group">
    <label for="pwd">Password:</label>
    
      <asp:TextBox ID="pwd"  runat="server"></asp:TextBox>    
  </div>
 <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
 </div>
    <br /><br /><br />
</asp:Content>
