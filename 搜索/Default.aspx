<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="bootstrap-3.4.1-dist/css/bootstrap.css" />  这两行对应下面的CssClass，用于美观gridview
    <script type="text/javascript" src="bootstrap-3.4.1-dist/js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           
            <asp:TextBox ID="TextBoxSearch" runat="server" ></asp:TextBox>
            <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
        </div>
    <div>
    
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id"          
            >    id作为关键字需要换一下                同时CssClass="table table-bordered table-hover"是将bootstrap文件夹拖入解决方案里即可
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号"  />              作为搜索结果展示出来包括哪些属性
                <asp:BoundField DataField="name" HeaderText="类别"   />
                <asp:BoundField DataField="moment" HeaderText="内容"   />
                <asp:BoundField DataField="picture" HeaderText="picture"   />
            </Columns>
        </asp:GridView>
 
    
        <br />
        
    
    </div>

    </form>
</body>
</html>
