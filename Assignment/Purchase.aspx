<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.vb" Inherits="Assignment.Products" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container-fluid">
        <h3 style="text-align:center;font-weight:bold;">List Purchase</h3>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;text-align:center;font-weight:bold">
                     <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
   
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("purchase_no")%>' />
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("name")%>' />
                    </td>
                     <td>
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CommandName="Edit"><i class="glyphicon glyphicon-pencil"></i> Edit</asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CommandName="Delete" ><i class="glyphicon glyphicon-trash"></i> Delete</asp:LinkButton>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;text-align:center">
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("purchase_no")%>' />
                    </td>
                    <td>
                        <asp:DropDownList CssClass="form-control" DataSourceID="SqlDataSource2" ID="ddl1" runat="server" DataTextField="name" DataValueField="id" SelectedValue='<%# Bind("customer_id")%>' />
                    </td>
                     <td>
                        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-success" runat="server" CommandName="Update" ><i class="glyphicon glyphicon-edit"></i> Update</asp:LinkButton>
                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-danger" runat="server" CommandName="Cancel" ><i class="glyphicon glyphicon-remove-circle"></i> Cancel</asp:LinkButton>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="text-align:center;">
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="imageTextBox" runat="server" Text='<%# Bind("purchase_no")%>' placeholder="Purchase No" />
                    </td>
      
                    <td>
                        <asp:DropDownList CssClass="form-control" DataSourceID="SqlDataSource2" ID="ddl1" runat="server" DataTextField="name" DataValueField="id" SelectedValue='<%# Bind("customer_id")%>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CommandName="Insert"><i class="glyphicon glyphicon-plus-sign"></i> Insert</asp:LinkButton>
                        <asp:LinkButton ID="CancelButton" CssClass="btn btn-danger" runat="server" CommandName="Cancel" ><i class="glyphicon glyphicon-remove-sign"></i> Clear</asp:LinkButton>
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;text-align:center;font-weight:bold">
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
   
                    <td>
                        <asp:Label ID="purchaseLabel" runat="server" Text='<%# Eval("purchase_no")%>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name")%>' />
                    </td>
                     <td>
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-primary" runat="server" CommandName="Edit"><i class="glyphicon glyphicon-pencil"></i> Edit</asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CommandName="Delete" ><i class="glyphicon glyphicon-trash"></i> Delete</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="table table-responsive table-hover">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" class="table table-responsive" style="width:80%;margin:10px auto">
                                <tr runat="server" class="bg-primary">
                                    <th style="text-align:center" runat="server">Id</th>
                                    <th style="text-align:center" runat="server">Purchar No</th>
                                    <th style="text-align:center" runat="server">Customer Name</th>
                                    <th runat="server"></th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [purchase_item] WHERE [purchase_id] = @id  DELETE FROM [purchase] WHERE [id] = @id" InsertCommand="INSERT INTO [purchase] ([purchase_no], [customer_id]) VALUES (@purchase_no, @customer_id)" SelectCommand="SELECT p.[id], [purchase_no], [customer_id], [name] FROM [purchase] as p INNER JOIN [customer] as c ON p.customer_id = c.id" UpdateCommand="UPDATE [purchase] SET [purchase_no] = @purchase_no, [customer_id] = @customer_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="customer_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="customer_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name] FROM [customer]"></asp:SqlDataSource>

        </div>
</asp:Content>
