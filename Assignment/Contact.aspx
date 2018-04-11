<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Assignment.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="contact">
        <div class="container">
            <h3 style="text-align:center;color:#0026ff;font-weight:bold;">Contact</h3>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <h4 class="text-primary">Họ và Tên</h4>
                        <br>
                        <input type="text" name="txt" class="form-control" value="" required="required" pattern="" title=""><br>
                        <h4 class="text-primary">Email</h4>
                        <input type="text" name="txt" class="form-control" value="" required="required" pattern="" title=""><br>
                        <h4 class="text-primary">Tin nhắn</h4>
                        <textarea class="txtarena" rows="10" cols="75"></textarea>

                        <button type="submit" class="btn btn-primary">Gửi</button>

                    </form>
                </div>
                <div class="col-md-6">
                    <div class="map">
                        <h3>Bản đồ</h3>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3723.9861118892654!2d105.76378231482776!3d21.033241693001422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zTeG7uSDEkMOsbmggU3R1ZGVudCBEb3JtaXRvcnk!5e0!3m2!1sen!2s!4v1523280013417" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
                        <p>Địa Chỉ : Kí túc xá Mỹ Đình ,Hàm Nghi,Nam Từ Liêm , Hà Nội</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
