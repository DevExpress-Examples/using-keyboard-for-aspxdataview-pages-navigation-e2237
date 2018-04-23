function OnInit(s, e) {
    AddKeyboardNavigationTo(s);
}
function AddKeyboardNavigationTo(dataViewInstance) {
    ASPxClientUtils.AttachEventToElement(document, "keydown",
            function(evt) {
                return OnDataViewKeyDown(evt, dataViewInstance);
            });
}
function OnDataViewKeyDown(evt, dataViewInstance) {
    if (typeof (event) != "undefined" && event != null)
        evt = event;
    if (NeedProcessDataViewKeyDown(evt) && !dataViewInstance.InCallback()) {
        if (evt.keyCode == ASPxKey.Left /*37-Left Arrow*/) {
            if (dataViewInstance.cpPageIndex > 0)
                dataViewInstance.PerformCallback('Prev');
            return ASPxClientUtils.PreventEvent(evt);
        } else if (evt.keyCode == ASPxKey.Right /*39-Right Arrow*/ && dataViewInstance.cpPageIndex < dataViewInstance.cpPageCount - 1) {
            dataViewInstance.PerformCallback('Next');
            return ASPxClientUtils.PreventEvent(evt);
        }
    }
}
function NeedProcessDataViewKeyDown(evt) {
    var evtSrc = ASPxClientUtils.GetEventSource(evt);
    if (evtSrc.tagName == "INPUT")
        return evtSrc.type != "text" && evtSrc.type != "password";
    else
        return evtSrc.tagName != "TEXTAREA";
}