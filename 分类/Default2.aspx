<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <script type="text/javascript" src="bootstrap-3.4.1-dist/js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" CssClass="table  table-hover" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="moment" HeaderText="moment" 
                    SortExpression="moment" />
                <asp:CommandField ButtonType="Button" HeaderText="编辑" ShowEditButton="True" 
                    ShowHeader="True" />
                <asp:CommandField ButtonType="Button" HeaderText="删除" ShowDeleteButton="True" 
                    ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:123ConnectionString %>" 
            DeleteCommand="DELETE FROM [Table] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Table] ([id], [name], [moment], [picture]) VALUES (@id, @name, @moment)" 
            SelectCommand="SELECT * FROM [Table]" 
            UpdateCommand="UPDATE [Table] SET [name] = @name, [moment] = @moment WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="moment" Type="String" />
               
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="moment" Type="String" />
                 
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
