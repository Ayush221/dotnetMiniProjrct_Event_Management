<%@ Page Title="" Language="C#" MasterPageFile="~/IEM_Master_Page.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="InfowayEventManager.Employee.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
 
    <div class="container" >

   
  <div class="form-group">
    <label for="eid">Employee Id:</label>
    <input type="number" class="form-control" id="eid" runat="server">
  </div>
  <div class="form-group">
    <label for="ename">Employee Name:</label>
    <input type="text" class="form-control" id="ename" runat="server">
  </div>
    <div class="form-group">
    <label for="deptid">Department id:</label>
    <input type="number" class="form-control" id="deptid" runat="server">
  </div>
   <div class="form-group">
    <label for="city">City:</label>
    <input type="text" class="form-control" id="ecity" runat="server">
  </div>
   <div class="form-group">
    <label for="email">Email id:</label>
    <input type="email" class="form-control" id="email" runat="server">
  </div>
     <div class="form-group">
    <label for="phno">Phone no:</label>
    <input type="number" class="form-control" id="phno" runat="server">
  </div>
  <div class="form-group">
    <label for="dob">Date of Birth:</label>
    <input type="date" class="form-control" id="dob" runat="server">
  </div>
    <div class="form-group">
    <label for="doj">Date of Joining:</label>
    <input type="date" class="form-control" id="doj" runat="server">
  </div>
     <div class="form-group">
    <label for="rollid">Roll id:</label>
    <input type="number" class="form-control" id="rollid" runat="server">
  </div>
 
  <button type="submit" class="btn btn-default">Submit</button>
     </div>
    <br /><br /><br />
</asp:Content>
