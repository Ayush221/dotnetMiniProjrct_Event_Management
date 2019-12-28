<%@ Page Title="" Language="C#" MasterPageFile="~/IEM_Master_Page.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="InfowayEventManager.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style> 
        .main-text
        {
            position: absolute;
            
            top: 70px;
            width: 96.66666666666666%;
            color: #FFF;
        }
        .btn-min-block
        {
            min-width: 170px;
            line-height: 26px;
        }
        .btn-clear
        {
            color: #FFF;
            background-color: transparent;
            border-color: #FFF;
            margin-right: 15px;
        }
        .btn-clear:hover
        {
            color: #000;
            background-color: #FFF;
        }

    </style>

</asp:Content>
   
  
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
   
    <asp:Literal ID="welcome" runat="server"></asp:Literal>

    <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
      <li data-target="#demo" data-slide-to="3"></li>
      <li data-target="#demo" data-slide-to="4"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/img1.png" alt="Los Angeles">
    </div>
    <div class="carousel-item">
      <img src="Images/img2.png" alt="Chicago">
    </div>
    <div class="carousel-item">
      <img src="Images/img3.png" alt="New York">
    </div>
       <div class="carousel-item">
      <img src="Images/img4.png" alt="New York">
    </div>
       <div class="carousel-item">
      <img src="Images/img5.png" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>


</asp:Content>
