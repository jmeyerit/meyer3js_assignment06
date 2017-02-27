using dsEmployeeTableAdapters;
using dsLoyaltyTableAdapters;
using dsProductTableAdapters;
using dsStoreTableAdapters;
using dsTransactionTypeTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            PopulateDropDownLists();
        }
    }

    private void PopulateDropDownLists() {

        // Populates Employee DropDownList
        tEmplTableAdapter employeeTableAdapter = new tEmplTableAdapter();
        dsEmployee.tEmplDataTable employeeDataTable = employeeTableAdapter.GetData();
        ddlEmployee.DataTextField = "EmplName";
        ddlEmployee.DataValueField = "EmplID";
        ddlEmployee.DataSource = employeeDataTable;
        ddlEmployee.DataBind();
        ddlEmployee.SelectedIndex = 0;

        // Populates Loyalty DropDownList
        tLoyaltyTableAdapter loyaltyTableAdapter = new tLoyaltyTableAdapter();
        dsLoyalty.tLoyaltyDataTable loyaltyDataTable = loyaltyTableAdapter.GetData();
        ddlLoyalty.DataTextField = "LoyaltyNumber";
        ddlLoyalty.DataValueField = "LoyaltyID";
        ddlLoyalty.DataSource = loyaltyDataTable;
        ddlLoyalty.DataBind();
        ddlLoyalty.SelectedIndex = 0;

        // Populates Product DropDownList
        tProductTableAdapter productTableAdapter = new tProductTableAdapter();
        dsProduct.tProductDataTable productDataTable = productTableAdapter.GetData();
        ddlProduct.DataTextField = "Name";
        ddlProduct.DataValueField = "ProductID";
        ddlProduct.DataSource = productDataTable;
        ddlProduct.DataBind();
        ddlProduct.SelectedIndex = 0;

        // Populates Store DropDownList
        tStoreTableAdapter storeTableAdapter = new tStoreTableAdapter();
        dsStore.tStoreDataTable storeDataTable = storeTableAdapter.GetData();
        ddlStore.DataTextField = "Store";
        ddlStore.DataValueField = "StoreID";
        ddlStore.DataSource = storeDataTable;
        ddlStore.DataBind();
        ddlStore.SelectedIndex = 0;

        // Populates TransactionType DropDownList
        tTransactionTypeTableAdapter transactionTypeTableAdapter = new tTransactionTypeTableAdapter();
        dsTransactionType.tTransactionTypeDataTable transactionTypeDataTable = transactionTypeTableAdapter.GetData();
        ddlTransactionType.DataTextField = "TransactionType";
        ddlTransactionType.DataValueField = "TransactionTypeID";
        ddlTransactionType.DataSource = transactionTypeDataTable;
        ddlTransactionType.DataBind();
        ddlTransactionType.SelectedIndex = 0;
    }
}