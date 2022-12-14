using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WedFormFPTS
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblMCB1.Text = numMCB1.Text;
            lblMCB2.Text = MCB2.Text;
            lblMSL.Text = MSL.Text;
            lblGHChiSo.Text = GHViTheChiSo.Text;
            lblGHTP.Text = GHViTheHDTL.Text;
            lblCSTP.Text = CSTP.SelectedValue;
            lblPhiBT.Text = TLPhiBT.Text;
            lblPhiDong.Text = TLPhiDong.Text;
            lblThueSuat.Text = TS.Text;
            lblLaiSuat.Text = LaiSuat.Text;
            lblTinhtrang.Text = TinhTTrang.SelectedValue;
            lblMaGoi.Text = mThamSo.SelectedValue;
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            lblMCB1.Text = numMCB1.Text = "";
            lblMCB2.Text = MCB2.Text = "";
            lblMSL.Text = MSL.Text = "";
            lblGHChiSo.Text = GHViTheChiSo.Text = "";
            lblGHTP.Text = GHViTheHDTL.Text = "";
            lblCSTP.Text = CSTP.SelectedValue = "";
            lblPhiBT.Text = TLPhiBT.Text = "";
            lblPhiDong.Text = TLPhiDong.Text = "";
            lblThueSuat.Text = TS.Text = "";
            lblLaiSuat.Text = LaiSuat.Text = "";
            lblTinhtrang.Text = TinhTTrang.SelectedValue = "";
            lblMaGoi.Text = mThamSo.SelectedValue = "";
        }
    }
}