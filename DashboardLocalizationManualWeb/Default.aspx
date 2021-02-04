<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DashboardLocalizationManualWeb._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Test</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://knockoutjs.com/downloads/knockout-3.5.0.js"></script>
    <script src="Scripts/Ace/ace.js"></script>
    <script src="Scripts/Ace/ext-language_tools.js"></script>
    <script src="Scripts/Ace/theme-dreamweaver.js"></script>
    <script src="Scripts/Ace/theme-ambiance.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/cldrjs/0.5.0/cldr.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/cldrjs/0.5.0/cldr/event.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/cldrjs/0.5.0/cldr/supplemental.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/globalize/1.4.2/globalize.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/globalize/1.4.2/globalize/message.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/globalize/1.4.2/globalize/number.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/globalize/1.4.2/globalize/date.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/globalize/1.4.2/globalize/currency.js"></script>
    <link href="CSS/DevExtreme/dx.common.css" rel="stylesheet" />
    <link href="CSS/DevExtreme/dx.light.css" rel="stylesheet" />
    <script src="Scripts/DevExtreme/dx.all.js"></script>

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