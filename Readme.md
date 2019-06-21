<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [JScript.js](./CS/WebSite/JScript.js) (VB: [JScript.js](./VB/WebSite/JScript.js))
<!-- default file list end -->
# Using keyboard for ASPxDataView pages navigation
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2237/)**
<!-- run online end -->


<p>This example demonstrates how to process a document keydown event and how to activate some ASPxDataView page according to the key that has been pressed.</p><p>The following keys are processed in this example:<br />
 <br />
 * Left Arrow (activates a previous page)<br />
 * Right Arrow (activates the next page)</p><p>The AttachEventToElement method of the ASPxClientUtils class is used to subscribe to a document keydown event. The PerformCallback method call of the ASPxClientDataView class is used to raise the ASPxDataView’s Callback event to change the active page of ASPxDataView on the server side.</p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E2003">E2003: Using keyboard for ASPxGridView pages navigation</a></p>

<br/>


