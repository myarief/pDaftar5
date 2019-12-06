using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pDaftar3
{
    public partial class reglist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnAdd.Attributes.Add("onclick", "javascript:return confirm('Apakah akan membuat baru?')");
            if (!IsPostBack)
            {
                getData();
            }
        }

        void getData()
        {
            dcReg db = new dcReg();
            var q = from t in db.vw_regs
                    where t.status_reg=="ST.0"
                    orderby t.no_daftar descending
                    select t;
            GridView2.DataSource = q;
            GridView2.DataBind();
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("regnew");
        }
    }
}