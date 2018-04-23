using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    public string GetClientInstanceName(int index) {
        return "pc" + index.ToString();
    }
    public string GetClickHandler(int index) {
        return "function(s, e){ pc" + index.ToString() + ".ShowAtPos(e.htmlEvent.x, e.htmlEvent.y); }";
    }
}
