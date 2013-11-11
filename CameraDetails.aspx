<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CameraDetails.aspx.vb" Inherits="CameraDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Camera Details</h1>
        <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_CameraComparation %>" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Camera_Type], [Price], [Effective_Pixels], [Weight], [Image_Sensor_Format]) VALUES (@Camera_Type, @Price, @Effective_Pixels, @Weight, @Image_Sensor_Format)" UpdateCommand="UPDATE [Table] SET [Camera_Type] = @Camera_Type, [Price] = @Price, [Effective_Pixels] = @Effective_Pixels, [Weight] = @Weight, [Image_Sensor_Format] = @Image_Sensor_Format WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Camera_Type" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Effective_Pixels" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Image_Sensor_Format" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Camera_Type" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Effective_Pixels" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Image_Sensor_Format" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

    <br /><br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="246px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Camera_Type" HeaderText="Camera Type" SortExpression="Camera_Type" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Effective_Pixels" HeaderText="Effective Pixels" SortExpression="Effective_Pixels" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Image_Sensor_Format" HeaderText="Image Sensor Format" SortExpression="Image_Sensor_Format" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
</asp:DetailsView>
</asp:Content>

