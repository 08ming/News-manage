using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UserControl_head : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.dateLabel.Text = "Time: " + System.DateTime.Now.ToString("yyyy/MM/dd");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["type"] = this.ddlCategories.SelectedValue.Trim() ;
        string sqlstring = "select * from tb_News where Categories='" + this.ddlCategories.SelectedValue.ToString() + "'";
        sqlstring += "and ((content like '%" + this.txtKey.Text + "%') or (Title like '%" + this.txtKey.Text + "%'))";
        Session["select"] = sqlstring;
        Response.Redirect("SearchNews.aspx");
    }
}
