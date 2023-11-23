using System;

namespace DashboardLocalizationWeb {
    public class Global : System.Web.HttpApplication {

        protected void Application_Start(object sender, EventArgs e) {
            DevExpress.Utils.DeserializationSettings.RegisterTrustedClass(typeof(ProductSales));
        }
    }
}