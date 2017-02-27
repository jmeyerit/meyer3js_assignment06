/***********************************************************************************************************
* Assignment 06                                                                meyer3js_Assignment06.aspx.cs
* Justin Meyer and Jake Reilman
* IT3047C-001 Spring Semester
* meyer3js@mail.uc.edu | reilmajb@mail.uc.edu
* This assignment demonstrates our ability to use Github and collaborate on the same project. It also tests 
* us on our ability to connect to the database and add information to it based on data entry from a user.
* This code behind file contains the logic for the buttons and drop down lists.
* Due Date: Wednesday, February 22nd, 2017 by 6:00pm
* Citations: 
* 
* 
* REFERENCES:
* 
* C# Final Project Fall 2016 - How to add parameters to a DataTable
* http://stackoverflow.com/questions/5721904/make-body-fill-entire-screen - How to make body fill entire screen.
* http://www.buildcomputers.net/computer-case-sizes.html - Computer case sizes reference for DB creation
* 
* ALWAYS think of the cat
* **********************************************************************************************************/

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

    protected void BtnSubmit_Click(object sender, EventArgs e) {
        SqlDataSource.Select(DataSourceSelectArguments.Empty);
    }
}