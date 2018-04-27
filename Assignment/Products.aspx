<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.vb" Inherits="Assignment.Products" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-fluid">
        <h3 style="text-align: center; font-weight: bold;">List Product </h3>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC; text-align: center; font-weight: bold">
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Image ID="imageLabel" runat="server" ImageUrl='<%# Eval("image") %>' Width="100px" Height="100px" />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="name1Label" runat="server" Text='<%# Eval("name1") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CommandName="Edit"><i class="glyphicon glyphicon-pencil"></i> Edit</asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CommandName="Delete"><i class="glyphicon glyphicon-trash"></i> Delete</asp:LinkButton>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #008A8C; color: #FFFFFF;">
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    </td>
                    <td>
                        <asp:DropDownList CssClass="form-control" DataSourceID="SqlDataSource2" ID="ddl1" runat="server" DataTextField="name" DataValueField="id" SelectedValue='<%# Bind("category_id")%>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-success" runat="server" CommandName="Update"><i class="glyphicon glyphicon-edit"></i> Update</asp:LinkButton>
                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-danger" runat="server" CommandName="Cancel"><i class="glyphicon glyphicon-remove-circle"></i> Cancel</asp:LinkButton>
                    </td>

                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="text-align: center;">
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' placeholder="Product Image" />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server" Text='<%# Bind("name")%>' placeholder="Product Name" />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' placeholder="Product Price" />
                    </td>
                    <td>
                        <asp:DropDownList CssClass="form-control" DataSourceID="SqlDataSource2" ID="ddl1" runat="server" DataTextField="name" DataValueField="id" SelectedValue='<%# Bind("category_id")%>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CommandName="Insert"><i class="glyphicon glyphicon-plus-sign"></i> Insert</asp:LinkButton>
                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-danger" runat="server" CommandName="Cancel"><i class="glyphicon glyphicon-remove-sign"></i> Clear</asp:LinkButton>
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC; color: #000000; text-align: center; font-weight: bold">
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Image ID="imageLabel" runat="server" ImageUrl='<%# Eval("image") %>' Width="100px" Height="100px" />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="name1Label" runat="server" Text='<%# Eval("name1") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CommandName="Edit"><i class="glyphicon glyphicon-pencil"></i> Edit</asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CommandName="Delete"><i class="glyphicon glyphicon-trash"></i> Delete</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="table table-responsive table-hover">
                    <tr runat="server" >
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" class="table table-responsive" style="width: 80%; margin: 10px auto">
                                <tr runat="server" style="background:red">
                                    <th style="text-align: center" runat="server">Id</th>
                                    <th style="text-align: center" runat="server">Image</th>
                                    <th style="text-align: center" runat="server">Name</th>
                                    <th style="text-align: center" runat="server">Price</th>
                                    <th style="text-align: center" runat="server">Category Name</th>
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-primary" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-primary" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    </td>
                    <td>
                        <asp:Label ID="name1Label" runat="server" Text='<%# Eval("name1") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [purchase_item] WHERE [purchase_id] = @id DELETE FROM [products] WHERE [id] = @id" InsertCommand="INSERT INTO [products] ([name], [price], [image], [category_id]) VALUES (@name, @price, @image, @category_id)" SelectCommand="SELECT p.[id], p.[name], [price], [image], [category_id],c.name FROM [products] as p INNER JOIN [category] as c on p.category_id = c.id" UpdateCommand="UPDATE [products] SET [name] = @name, [price] = @price, [image] = @image, [category_id] = @category_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name] FROM [category]"></asp:SqlDataSource>

    </div>
</asp:Content>
