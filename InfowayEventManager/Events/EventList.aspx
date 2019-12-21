<%@ Page Title="" Language="C#" MasterPageFile="~/IEM_Master_Page.Master" AutoEventWireup="true" CodeBehind="EventList.aspx.cs" Inherits="InfowayEventManager.Events.EventList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="328px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="606px">
        <Columns>
            <asp:BoundField DataField="event_id" HeaderText="Event Id" SortExpression="event_id" />
            <asp:BoundField DataField="event_name" HeaderText="Event Name" SortExpression="event_name" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Details" ShowHeader="True" Text="Button">
            <ControlStyle CssClass="btn btn-success" />
            </asp:ButtonField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAllEvents" TypeName="InfowayEventManager.Dal.InfowayEventDal"></asp:ObjectDataSource>
</asp:Content>
