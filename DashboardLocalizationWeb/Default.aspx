<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DashboardLocalizationWeb._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Test</title>

    <style type="text/css">
        html, body, form {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
    </style>
    <script type="text/javascript">
        //<![CDATA[
        function onInit(s, e) {
            // Localize the specified string at runtime (the "Export To" button's caption in the dashboard title):
            DevExpress.Dashboard.ResourceManager.setLocalizationMessages({ "DashboardStringId.ActionExportTo": "Custom Text for Export Button" });

            // Apply custom formatting for numbers and dates:
            var json = { main: {} };

            json["main"]["de"] = {
                numbers: { "currencyFormats-numberSystem-latn": { standard: "C #,##0.00 ¤" } },
                dates: { calendars: { gregorian: { dateTimeFormats: { availableFormats: { yMd: "dd MMM y" } } } } }
            };
            Globalize.load(json);
        }
        //]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" DashboardStorageFolder="~/App_Data/Dashboards" Height="100%">
            <ClientSideEvents Init="onInit" /> 
        </dx:ASPxDashboard>
    </form>
</body>
</html>