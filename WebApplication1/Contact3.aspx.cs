using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            DropDownList tootaja = null;
            DropDownList amet = null;

            foreach (DetailsViewRow row in DetailsView1.Rows)
            {
                if (tootaja == null)
                    tootaja = row.FindControl("DropDownList1") as DropDownList;

                if (amet == null)
                    amet = row.FindControl("DropDownList2") as DropDownList;
            }

            if (tootaja == null || amet == null ||
                tootaja.SelectedValue == "" || amet.SelectedValue == "")
            {
                e.Cancel = true;
                return;
            }

            e.Values["tootaja_tootajaID"] = Convert.ToInt32(tootaja.SelectedValue);
            e.Values["Amet_ametID"] = Convert.ToInt32(amet.SelectedValue);
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}