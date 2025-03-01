**vanilla-steel-project**

** Project Overview**

This project involves cleaning and processing supplier data to ensure data consistency, accuracy, and completeness. The pipeline reads raw supplier data, applies data cleaning steps, handles missing values, standardizes formats, and exports a cleaned dataset for further analysis to google_big_query.

Tools and Technologies Used

Python (Programming Language)

Pandas (Data Manipulation)

NumPy (Numerical Computing)

Jupyter Notebook (Interactive Code Development)

Git & GitHub (Version Control)

📂 Repository Structure

📂 vanilla-steel-project/
│── 📂 task_1/                # (Optional) Python scripts for data cleaning, processing
│── 📂 task_2/             # dbt models 
│── 📂 task_3/           # Jupyter Notebook (if any)
│── README.md               # Setup and execution instructions

** **Data Processing Pipeline****

Data Loading

Reads supplier_data_1.csv and supplier_data_2.csv.

Uses pandas.read_csv() to load datasets into DataFrames.

**Initial Exploration**

Displays data structure using df.info() and df.describe().

Identifies missing values using df.isnull().sum().

**Data Cleaning**

Handles missing values

Categorical columns: Filled with mode or appropriate placeholder.

Corrects data types (e.g., converting date columns to datetime).

Standardizes column names and text values.

Handles duplicate rows using df.drop_duplicates().

Exporting Cleaned Data

Saves the final cleaned dataset using df.to_csv('cleaned_supplier_data.csv', index=False).

**Setup Instructions**

1️⃣ Install Dependencies

Ensure you have Python installed. Then, install the required libraries:

2️⃣ Run the Task_1 Script

Biq_query details 
	destination_table="inventory_df.supplier_data",
	project_id="vanilla-1998

Run the Task_3 Script

	destination_table="buyer_preference.recommendations",
	project_id="vanilla-1998"

3️⃣ View the Cleaned Dataset

After execution, the cleaned dataset will be available biq_query database
https://console.cloud.google.com/bigquery?inv=1&invt=Abq1GA&project=vanilla-1998&ws=!1m0






