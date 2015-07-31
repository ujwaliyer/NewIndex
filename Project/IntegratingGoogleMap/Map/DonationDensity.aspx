<%@ Page Title="" Language="C#" MasterPageFile="~/defaultSite.master" AutoEventWireup="true" CodeFile="DonationDensity.aspx.cs" Inherits="DonationDensity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">

    <script src="Scripts/jquery-1.7.1.js"></script>
  


        $(document).ready(function () {
            $('a#Density').addClass('selected');
        });



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
   <div>
      
   </div>
</asp:Content>

