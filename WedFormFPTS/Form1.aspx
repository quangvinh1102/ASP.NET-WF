<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="WedFormFPTS.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-input" style="display: flex; justify-content:center; align-items: center;">
            <table border="1">
                <tr>
                    <th>Mã gói  tham số</th>
                    <th>Mức cảnh báo 1 (%)</th>
                    <th>Tỷ lệ KQ tại FPTS (%)</th>
                    <th>Cơ sở tính phí</th>
                    <th>Thuế suất (%)</th>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="mThamSo" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="1. CNTN" Value="CNTN" Selected="True" />
                            <asp:ListItem Text="2. CNNN" Value="CNNN" />
                            <asp:ListItem Text="3. TCTN" Value="TCTN" />
                            <asp:ListItem Text="4. TCNN" Value="TCNN" />
                            <asp:ListItem Text="5. TCCNTN" Value="TCCNTN" />
                            <asp:ListItem Text="6. TCCNNN" Value="TCCNNN" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="numMCB1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TLKQ" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="CSTP" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="1. Giá Trị" Value="Giá Trị" Selected="True" />
                            <asp:ListItem Text="2. Khối Lượng" Value="Khối Lượng" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tên gói tham số</th>
                    <th>Mức Cảnh báo 2 (%)</th>
                    <th>GH vị thế HĐTL Chỉ số</th>
                    <th>Tỷ lệ phí: Bình thường</th>
                    <th>Lãi suất thấu chi (%/ngày)</th>
                </tr>
                <tr>
                    
                    <td>
                        <asp:TextBox ID="GTS" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="MCB2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="GHViTheChiSo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TLPhiBT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="LaiSuat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tình trạng</th>
                    <th>Mức Xử lý (%)</th>
                    <th>GH vị thế HĐTL TP</th>
                    <th>Tỷ lệ phí: Đóng cùng phiên</th>
                </tr>
                <tr>
                    
                    <td>
                        <asp:DropDownList ID="TinhTTrang" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="1. Hieu Luc" Value="Hieu Luc" Selected="True" />
                            <asp:ListItem Text="2. Het Hieu Luc" Value="Het Hieu Luc" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="MSL" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="GHViTheHDTL" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TLPhiDong" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Tìm Kiếm" />
                    </td>
                    <td>
                        <asp:Button ID="btnRefresh" runat="server" Text="Làm mới" OnClick="btnRefresh_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Ghi/Update" OnClick="btnUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btEx" runat="server" Text="Excel" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="form-output" style="display:flex;justify-content:center;align-items:center; margin-top:120px; flex-direction:column;">
            <table border="1">
                <tr>
                    <th>STT</th>
                    <th>Mã gói</th>
                    <th>Tên gói</th>
                    <th>Mức cảnh báo 1 (%)</th>
                    <th>Mức CB2 (%)</th>
                </tr>
                <br />
                <tr>
                    <td>
                        <asp:Label ID="lblSTT" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMaGoi" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTenGoi" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMCB1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMCB2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <br />
                <tr>
                    <th>Mức xử lý (%)</th>
                    <th>GH vị thế HĐTL Chỉ số</th>
                    <th>GH vị thế HĐTL TP</th>
                    <th>Cơ sở tính phí</th>
                    <th>Phí Bình thường</th>
                </tr>
                <br />

                <tr>
                    <td>
                        <asp:Label ID="lblMSL" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGHChiSo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGHTP" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblCSTP" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPhiBT" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <br />

                <tr>
                    <th>Phí Đóng cùng phiên</th>
                    <th>Thuế suất (%)</th>
                    <th>Lãi suất thấu chi (%/ngày)</th>
                    <th>Ngày hiệu lực</th>
                    <th>Tình trạng</th>
                </tr>
                <br />

                <tr>
                    <td>
                        <asp:Label ID="lblPhiDong" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblThueSuat" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblLaiSuat" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNgayhieuluc" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTinhtrang" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th>Ngày hết hiệu lực</th>
                    <th>Người tạo</th>
                    <th>Người update</th>
                    <th>Chọn</th>
                </tr>
            </table>
        <a href="Form2.aspx" style="text-decoration:none">Form2.aspx</a>
        </div>
    </form>
</body>
</html>
