using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WedFormFPTS
{
    public partial class Form2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblTSCoSo.Text = TSCoSo.Text;
            lblMaHD.Text = MaHD.Text;
            lblNgayNiemYet.Text = DateNiemYet.Text;
            lblDateGDCuoi.Text = DateGDCuoi.Text;
            lblSoNhanHD.Text = SoNhanHD.Text;
            lblPTTT.Text = ThanhToan.SelectedValue;
            lblDVYetGia.Text = DVYetGia.Text;
            lblKLGDToiThieu.Text = KLGDToiThieu.Text;
            lblDVGD.Text = DVGiaoDich.Text;
            lblGioHanLenh.Text = GioiHanLenh.Text;
            lblIMRateFS.Text = IMRateFS.Text;
            lblIMRateVS.Text = IMRateVS.Text;
        }

        protected void btnRefesh_Click(object sender, EventArgs e)
        {
            lblTSCoSo.Text = TSCoSo.Text = "";
            lblMaHD.Text = MaHD.Text = "";
            lblNgayNiemYet.Text = DateNiemYet.Text = "";
            lblDateGDCuoi.Text = DateGDCuoi.Text = "";
            lblSoNhanHD.Text = SoNhanHD.Text = "";
            lblPTTT.Text = ThanhToan.SelectedValue = "";
            lblDVYetGia.Text = DVYetGia.Text = "";
            lblKLGDToiThieu.Text = KLGDToiThieu.Text = "";
            lblDVGD.Text = DVGiaoDich.Text = "";
            lblGioHanLenh.Text = GioiHanLenh.Text = "";
            lblIMRateFS.Text = IMRateFS.Text = "";
            lblIMRateVS.Text = IMRateVS.Text = "";
        }
    }
}