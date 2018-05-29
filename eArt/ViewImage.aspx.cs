using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eArt
{
    public partial class ViewImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String img = Request.QueryString.Get("img");
            imgToShow.ImageUrl = "img/" + img;
        }
    }
}