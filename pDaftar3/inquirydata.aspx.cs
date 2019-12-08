using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pDaftar3
{
    public partial class inquirydata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }
        }

        void getData()
        {
            dcReg db = new dcReg();
            var q = from t in db.vw_regs
                    orderby t.no_daftar descending
                    select t;
            GridView2.DataSource = q;
            GridView2.DataBind();
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[7].VerticalAlign = VerticalAlign.Middle;
                switch (DataBinder.Eval(e.Row.DataItem, "status_reg").ToString())
                {
                    case "SD.10":
                        e.Row.Cells[7].Style.Add("color","blue");
                        break;
                    case "SD.20":
                        e.Row.Cells[7].Style.Add("color", "green");
                        break;
                    case "SD.30":
                        e.Row.Cells[7].Style.Add("color", "yellow");
                        break;
                    default:
                        e.Row.Cells[7].Style.Add("color", "red");
                        break;
                }
            }
        }
    }
}