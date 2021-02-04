using System;
using DevExpress.DashboardCommon;
using DevExpress.DashboardWeb;

namespace DashboardLocalizationManualWeb {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            ASPxDashboard1.SetDataSourceStorage(CreateDataSourceStorage());
        }

        public DataSourceInMemoryStorage CreateDataSourceStorage() {
            DataSourceInMemoryStorage dataSourceStorage = new DataSourceInMemoryStorage();
            DashboardObjectDataSource objDataSource = new DashboardObjectDataSource("Object Data Source", typeof(ProductSales));

            objDataSource.DataMember = "GetSalesData";
            dataSourceStorage.RegisterDataSource("objectDataSource", objDataSource.SaveToXml());

            return dataSourceStorage;
        }
    }
}