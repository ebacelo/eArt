using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eArt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String imgURL = ((ImageButton)sender).ImageUrl;
            String imgName = imgURL.Substring(imgURL.LastIndexOf("/") + 1);

            if (imgName != "transparent-square.png")
            {
                Response.Redirect("ViewImage.aspx?img=" + imgName);
            }
        }
    }
}