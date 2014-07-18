<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <asp:Button ID="Button3" runat="server" Text="Button" onclick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [student] WHERE [name] = @original_name AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))" 
            InsertCommand="INSERT INTO [student] ([name], [branch], [age]) VALUES (@name, @branch, @age)" 
            SelectCommand="SELECT * FROM [student]" 
            
            UpdateCommand="UPDATE [student] SET [branch] = @branch, [age] = @age WHERE [name] = @original_name AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL))" 
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_branch" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_branch" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="name" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Visible="False">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" 
                SortExpression="name" />
            <asp:BoundField DataField="branch" HeaderText="branch" 
                SortExpression="branch" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br /> 
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="height: 26px" Text="Insert" />
    <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
   
    <br />
   
  </form>
</body>
    </html>
