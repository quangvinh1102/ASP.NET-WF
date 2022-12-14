<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form2.aspx.cs" Inherits="WedFormFPTS.Form2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-input" style="display:flex;justify-content:center;align-items:center;" >
            <table border="1">
                <tr>
                    <th>Tài sản cơ sở</th>
                    <th>Mã Hợp đồng</th>
                    <th>Ngày niêm yết</th>
                    <th>Số nhân HĐ</th>
                    <th>Đơn vị yết giá</th>
                    <th>Đơn vị giao dịch</th>
                    <th>IM rate (FPTS)</th>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TSCoSo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="MaHD" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="DateNiemYet" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="SoNhanHD" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="DVYetGia" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="DVGiaoDich" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="IMRateFS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tên tài sản cơ sở</th>
                    <th>Tên Mã HĐ</th>
                    <th>Ngày GD cuối cùng</th>
                    <th>Phương thức TT</th>
                    <th>KL GD tối thiểu</th>
                    <th>Giới hạn lệnh</th>
                    <th>IM rate (VSD)</th>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="NameTSCoSo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="NameMaHD" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="DateGDCuoi" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="ThanhToan" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="1. Chuyển giao vật chất" Value="Chuyển giao vật chất" Selected="True" />
                            <asp:ListItem Text="2. Thanh toán bằng tiền" Value="Thanh toán bằng tiền" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="KLGDToiThieu" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="GioiHanLenh" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="IMRateVS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Tìm Kiếm" />
                    </td>
                    <td>
                        <asp:Button ID="btnRefesh" runat="server" Text="Làm Mới" OnClick="btnRefesh_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Ghi/Update" OnClick="btnUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn" runat="server" Text="Excel" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="form-output" style="display:flex;justify-content:center;align-items:center; margin-top:120px; flex-direction:column;">
            <table border="1">
                <tr>
                    <th>Mã HĐ</th>
                    <th>Tên mã HĐ</th>
                    <th>Tài sản cơ sở</th>
                    <th>Ngày niêm yết</th>
                    <th>Ngày GD cuối cùng</th>
                    <th>Số nhân HĐ</th>
                    <th>Phương thức TT</th>
                </tr>
                <br />
                <tr>
                    <td>
                        <asp:Label ID="lblMaHD" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LblTenMaHD" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTSCoSo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNgayNiemYet" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDateGDCuoi" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSoNhanHD" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPTTT" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <br />
                <tr>
                    <th>Đơn vị yết giá</th>
                    <th>KL GD tối thiểu</th>
                    <th>Đơn vị giao dịch</th>
                    <th>Giới hạn lệnh</th>
                    <th>IM rate (FPTS)</th>
                    <th>IM rate (VSD)</th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDVYetGia" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblKLGDToiThieu" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDVGD" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGioHanLenh" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblIMRateFS" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblIMRateVS" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <a href="Form1.aspx" style="text-decoration:none">Form1.aspx</a>
        </div>
    </form>
</body>
</html>
