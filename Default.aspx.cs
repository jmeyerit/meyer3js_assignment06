/***********************************************************************************************************
* Assignment 06                                                                meyer3js_Assignment06.aspx.cs
* Justin Meyer and Jake Reilman
* IT3047C-001 Spring Semester
* meyer3js@mail.uc.edu | reilmajb@mail.uc.edu
* This assignment demonstrates our ability to use Github and collaborate on the same project. It also tests 
* us on our ability to connect to the database and add information to it based on data entry from a user.
* This code behind file contains the logic for the buttons and drop down lists.
* Due Date: Wednesday, March 1st, 2017 by 6:00pm
* Citations: 
* 
* 
* REFERENCES:
* 
* https://www.youtube.com/watch?v=xUU9MdnohrI - Helpful for calling a Stored procedure
* http://stackoverflow.com/questions/8318236/regex-pattern-for-hhmmss-time-string - Helped with Regex string
* validation for the time.
* 
* ALWAYS think of the cat
* **********************************************************************************************************/

using dsEmployeeTableAdapters;
using dsLoyaltyTableAdapters;
using dsProductTableAdapters;
using dsStoreTableAdapters;
using dsTransactionTypeTableAdapters;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Only populate the drop down lists on initial Page Load.
        if (!IsPostBack) {
            PopulateDropDownLists();
        }
    }

    /// <summary>
    /// This method populates the relevant drop down lists with their relevant data
    /// </summary>
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

    /// <summary>
    /// This event fires the stored procedure if all validation controls check through
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void BtnSubmit_Click(object sender, EventArgs e) {

       try {
            SqlDataSource.Select(DataSourceSelectArguments.Empty);
            lblSuccess.Text = "Record submitted successfully!";
            ResetFields();
        }
        catch (Exception ex) {
            lblSuccess.Text = ex.Message;
        }  
    }

    /// <summary>
    /// Resets all fields upon successful record insertion
    /// </summary>
    private void ResetFields() {

        tbDateOfTransaction.Text = string.Empty;
        tbPricePerSellableUnitAsMarked.Text = string.Empty;
        tbPricePerSellableUnitToTheCustomer.Text = string.Empty;
        tbQty.Text = string.Empty;
        tbTimeOfTransaction.Text = string.Empty;
        tbTransactionComment.Text = string.Empty;
        tbTransactionDetailComment.Text = string.Empty;
        ddlEmployee.SelectedIndex = 0;
        ddlLoyalty.SelectedIndex = 0;
        ddlProduct.SelectedIndex = 0;
        ddlStore.SelectedIndex = 0;
        ddlTransactionType.SelectedIndex = 0;
    }


}