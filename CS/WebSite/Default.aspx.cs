using System;
using DevExpress.Web.ASPxDataView;
using DevExpress.Web.ASPxClasses;

public partial class _Default : System.Web.UI.Page {
    protected void dataView_DataBound(object sender, EventArgs e) {
        ASPxDataView dv = (ASPxDataView)sender;
        SaveJsProperties(dv);
    }
    protected void dataView_CustomCallback(object sender, CallbackEventArgsBase e) {
        ASPxDataView dv = (ASPxDataView)sender;
        switch (e.Parameter) {
            case "Next":
                dv.PageIndex += 1;
                break;
            case "Prev":
                dv.PageIndex -= 1;
                break;
        }
        SaveJsProperties(dv);
    }
    private void SaveJsProperties(ASPxDataView dv) {
        dv.JSProperties["cpPageCount"] = dv.PageCount;
        dv.JSProperties["cpPageIndex"] = dv.PageIndex;
    }
}