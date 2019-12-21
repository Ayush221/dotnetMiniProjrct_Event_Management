<%@ Page Title="" Language="C#" MasterPageFile="~/IEM_Master_Page.Master" AutoEventWireup="true" CodeBehind="EventDetails.aspx.cs" Inherits="InfowayEventManager.Events.EventDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
   
    <h1>Details of : <asp:Literal ID="eventhead" runat="server"></asp:Literal></h1>

    <table  class="table table-hover table-striped">
       <tr>    
            <td>Event id</td>
            <td><asp:Literal ID="eventid" runat="server"></asp:Literal></td>
        </tr>
        <tr>    
            <td>Event Name</td>
            <td><asp:Literal ID="eventName" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Host</td>
            <td><asp:Literal ID="host" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Venue</td>
            <td><asp:Literal ID="venue" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Start Date</td>
            <td><asp:Literal ID="sdate" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>End Date</td>
            <td><asp:Literal ID="edate" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Start Time</td>
            <td><asp:Literal ID="stime" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>End Time</td>
            <td><asp:Literal ID="etime" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Fees</td>
            <td><asp:Literal ID="fees" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Publish Date</td>
            <td><asp:Literal ID="pdate" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Last Registration Date</td>
            <td><asp:Literal ID="rdate" runat="server"></asp:Literal></td>
        </tr>
         <tr>
            <td>Logo</td>
            <td>
                <asp:Image ID="logo" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
