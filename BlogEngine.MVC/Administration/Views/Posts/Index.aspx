﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="/Administration/Scripts/jquery.tipsy.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            LoadPostsForPage(1);
            $(".tableToolBox a").click(function () {
                $(".tableToolBox a").removeClass("current");
                $(this).addClass("current");
            });
        });
    </script>
	<div class="content-box-outer">
		<div class="content-box-right">
			<%--<menu:TabMenu ID="TabMenu" runat="server" />--%>
            
		</div>
		<div class="content-box-left">
            <h1><%=Resources.labels.posts %></h1>
            <div class="tableToolBox">
                <%=Resources.labels.show %>: <a class="current" href="#" onclick="return ChangePostFilterType('All')"><%=Resources.labels.all %></a> | 
                <a href="#" onclick="return ChangePostFilterType('Draft')"><%=Resources.labels.drafts %></a> | 
                <a href="#" onclick="return ChangePostFilterType('Published')"><%=Resources.labels.published %></a>
                <span id="filteredby"></span>
                <div class="Pager"></div>
                <div class="PageSize">
                    <label for="pageSizeTop">Posts/Page</label>
                    <select id="pageSizeTop" name="pageSizeTop" onchange="return ChangePostPageSize(this)">
                        <option value="10">10</option>
                        <option value="25" selected="selected">25</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                </div>
            </div>
            <div id="Container"></div>
            <div class="Pager"></div>
            <div class="PageSize">
                <label for="pageSizeBottom">Posts/Page</label>
                <select id="pageSizeBottom" name="pageSizeBottom" onchange="return ChangePostPageSize(this)">
                    <option value="10">10</option>
                    <option value="25" selected="selected">25</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>
        </div>
    </div>

</asp:Content>
