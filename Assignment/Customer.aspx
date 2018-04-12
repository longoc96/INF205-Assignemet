<%@ Page Title="Customer" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.vb" Inherits="Assignment.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-fluid">
        <h3 style="text-align: center; font-weight: bold;">List Customers</h3>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFF8DC; text-align: center; font-weight: bold">
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Image ID="imageLabel" runat="server" ImageUrl='<%# Eval("avatar")%>' Width="100px" Height="100px" />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("gender")%>' />
                    </td>
                    <td>
                        <asp:Label ID="name1Label" runat="server" Text='<%# Eval("address")%>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("phone")%>' />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("email")%>' />
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
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("avatar")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" SelectedValue='<%# Bind("gender")%>'>
                            <asp:ListItem Value="Nam">Nam</asp:ListItem>
                            <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("address")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("phone")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Bind("email")%>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-success" runat="server" CommandName="Update"><i class="glyphicon glyphicon-edit"></i> Update</asp:LinkButton>
                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-danger" runat="server" CommandName="Cancel"><i class="glyphicon glyphicon-remove-circle"></i> Cancel</asp:LinkButton>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="text-align: center;">
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("avatar")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" SelectedValue='<%# Bind("gender")%>'>
                            <asp:ListItem Value="Nam">Nam</asp:ListItem>
                            <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("address")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("phone")%>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Bind("email")%>' />
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
                        <asp:Image ID="imageLabel" runat="server" ImageUrl='<%# Eval("avatar")%>' Width="100px" Height="100px" />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("gender")%>' />
                    </td>
                    <td>
                        <asp:Label ID="name1Label" runat="server" Text='<%# Eval("address")%>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("phone")%>' />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("email")%>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CommandName="Edit"><i class="glyphicon glyphicon-pencil"></i> Edit</asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CommandName="Delete"><i class="glyphicon glyphicon-trash"></i> Delete</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server" class="table table-responsive table-hover">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" class="table table-responsive" style="width: 95%; margin: 10px auto">
                                <tr id="Tr2" runat="server" class="bg-primary">
                                    <th id="Th1" style="text-align: center" runat="server">Id</th>
                                    <th id="Th2" style="text-align: center" runat="server">Image</th>
                                    <th id="Th3" style="text-align: center" runat="server">Name</th>
                                    <th id="Th4" style="text-align: center" runat="server">Gender</th>
                                    <th id="Th5" style="text-align: center" runat="server">Address</th>
                                    <th id="Th7" style="text-align: center" runat="server">Phone</th>
                                    <th id="Th8" style="text-align: center" runat="server">Email</th>
                                    <th id="Th6" runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td2" runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nhom5_QLBHConnectionString %>"
            DeleteCommand="DELETE FROM purchase_item Where purchase_id in (Select id From purchase Where customer_id = @id)
	                       DELETE FROM purchase Where customer_id = @id
	                       DELETE FROM customer Where id = @id"
            InsertCommand="INSERT INTO [customer] ([email], [name], [gender], [phone], [address], [avatar]) VALUES (@email, @name, @gender, @phone, @address, @avatar)"
            SelectCommand="SELECT [id], [email], [name], [gender], [phone], [address], [avatar] FROM [customer]" UpdateCommand="UPDATE [customer] SET [email] = @email, [name] = @name, [gender] = @gender, [phone] = @phone, [address] = @address, [avatar] = @avatar WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="avatar" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="avatar" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
