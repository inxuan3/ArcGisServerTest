<%@ Page Title="" Language="C#" MasterPageFile="~/地图.Master" AutoEventWireup="true"
    CodeBehind="主页.aspx.cs" Inherits="展会查询.WebForm3" %>

<%@ MasterType VirtualPath="~/地图.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="mymapdiv" class="MapClass" style="width: 100%; height: 613px" />
    <script type="text/javascript">
        dojo.require("esri.map");
        dojo.require("esri.dijit.Bookmarks");
        dojo.require("esri.dijit.OverviewMap");
        var books, i, j;
        i = 0;
        j = 0;
        function Bookmarks() {
            books = new esri.dijit.Bookmarks(
            {
                map: mymap,
                editable: "true"
            }, dojo.byId("bookmarks"));
        }
        function addBook() {
            var bookextent = mymap.extent;
            var bookmarkItem = new esri.dijit.BookmarkItem({
                "extent": bookextent,
                "name": "北京"
            });
            books.addBookmark(bookmarkItem);
        }
        function Book_Click() {
            if (i == 0) {
                Bookmarks();
                addBook();
                document.getElementById('bookmarks').style.display = 'block';
            }
            else {
                if (i % 2 == 0) {

                    document.getElementById('bookmarks').style.display = 'block';
                }
                if (i % 2 == 1) {
                    document.getElementById('bookmarks').style.display = 'none';
                }
            }
            i++;
        }
        function OverviewMap() {
            var over =
            {
                map: mymap,
                attachTo: "bottom-right",
                color: "#D84E13",
                expandFactor: 2,
                baseLayer: new esri.layers.ArcGISDynamicMapServiceLayer("http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineCommunity/MapServer")
            };
            var MapViewer = new esri.dijit.OverviewMap(over, dojo.byId("OverViewDiv"));
            MapViewer.startup();
        }
        function OverviewClick() {
            if (j == 0) {
                OverviewMap(); document.getElementById('close').style.display = 'block';
            }
            else {
                if (j % 2 == 0) {

                    document.getElementById('OverViewDiv').style.display = 'block'; document.getElementById('close').style.display = 'block';
                }
                if (j % 2 == 1) {
                    document.getElementById('OverViewDiv').style.display = 'none'; document.getElementById('close').style.display = 'none';
                }
            }
            j++;
        }
    </script>
    <div id="login">
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="幼圆" Font-Size="Small"
            Text="欢迎" ForeColor="#999999"></asp:Label>
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="True" Font-Italic="True"
            Font-Names="幼圆" Font-Overline="False" Font-Size="Small" 
            Font-Underline="True" ForeColor="#999999" />
    </div>
    <div id="div1" style="left: 40px; top: 140px;">
        <p />
        &nbsp;
        <img alt="移动" height="40px" width="40px" onclick="navToolbar.activate(esri.toolbars.Navigation.PAN);"
            src="图片/移动.png" title="移动" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40'"
            style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="拉框放大" src="图片/放大.png" height="40px" width="40px" onclick="navToolbar.activate(esri.toolbars.Navigation.ZOOM_IN);"
            title="拉框放大" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40'"
            style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="拉框缩小" src="图片/QQ图片20150426172056.png" height="40px" width="40px" onclick="navToolbar.activate(esri.toolbars.Navigation.ZOOM_OUT)"
            title="拉框缩小" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40';"
            style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="全图" src="图片/全图.png" height="40px" width="40px" onclick="navToolbar.zoomToFullExtent();"
            title="全图" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40'"
            style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="书签" src="图片/书签（有白色）.png" height="40px" width="40px" onclick="Book_Click();"
            title="书签" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40'"
            style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="鹰眼" src="图片/QQ图片20150429165224.jpg" height="40px" width="40px" onclick="OverviewClick();"
            title="鹰眼" onmouseover="this.width='55'; this.height='55';" onmouseout="this.width='40'; this.height='40'"
            style="cursor: pointer" />
    </div>
    <div id="div2" style="right: 40px; top: 140px;">
        <p />
        &nbsp;
        <img alt="查询" src="图片/望远镜.png" height="55px" width="55px" onclick="" title="查询" onmouseover="this.width='70'; this.height='70';"
            onmouseout="this.width='55'; this.height='55'" style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="绘图" src="图片/笔.png" height="55px" width="55px" onclick="" title="绘图" onmouseover="this.width='70'; this.height='70';"
            onmouseout="this.width='55'; this.height='55'" style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="餐厅" src="图片/叉子.png" height="55px" width="55px" onclick="" title="餐厅" onmouseover="this.width='70'; this.height='70';"
            onmouseout="this.width='55'; this.height='55'" style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="定位" src="图片/定位.png" height="55px" width="55px" onclick="" title="定位" onmouseover="this.width='70'; this.height='70';"
            onmouseout="this.width='55'; this.height='55'" style="cursor: pointer" />
        <p />
        &nbsp;
        <img alt="统计" src="图片/统计.png" height="55px" width="55px" onclick="" title="统计" onmouseover="this.width='70'; this.height='70';"
            onmouseout="this.width='55'; this.height='55'" style="cursor: pointer" />
    </div>
    <div id="bookmarks" style="top: 400px; left: 110px">
    </div>
    <div id="OverViewDiv" style="margin: 50px; width: 300px; height: 200px;">
    </div>
    <div id="close">
        <input id="Button1" type="button" value="ｘ" onclick="OverviewClick()" style="border-style: none;
            cursor: hand; font-size: large; color: #C1C1C1; font-weight: bolder; font-family: 'Arial Unicode MS';" />
    </div>
</asp:Content>
