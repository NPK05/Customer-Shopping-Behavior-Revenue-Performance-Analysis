# Customer-Shopping-Behavior-Revenue-Performance-Analysis
## 📌 Overview
This project analyzes customer shopping behavior and revenue performance to uncover key factors influencing purchasing patterns. The project combines Python for data preparation, PostgreSQL for SQL analysis, and Power BI for interactive dashboards.

The goal is to transform raw transactional data into actionable business insights that help organizations understand customers, optimize product strategies, and improve revenue performance.

## 📂 Dataset
The dataset contains 3,900 customer purchase records with 18 columns, including:

👤 Customer demographics (Age, Gender, Location)

🛍 Product details (Category, Item Purchased)

💰 Transaction data (Purchase Amount)

⭐ Customer feedback (Review Rating)

🔁 Customer engagement (Previous Purchases)

📦 Purchase frequency and seasonal behavior

Each row represents one customer purchase transaction.

## 🛠 Tools & Technologies
| Tool | Purpose |
|-----|-----|
| Python | Data cleaning & exploratory analysis |
| Pandas / NumPy | Data manipulation |
| Matplotlib / Seaborn | Data visualization |
| PostgreSQL | Database storage |
| SQL | Business analysis |
| Power BI | Interactive dashboards |
| Jupyter Notebook | Analysis workflow |


## ⚙ Project Workflow

### 1️⃣ Data Loading
The dataset was imported into **Python using Pandas** for exploration and preprocessing.

### 2️⃣ Data Cleaning
Key cleaning steps included:

- ✔ Handling missing values  
- ✔ Standardizing column names  
- ✔ Removing unnecessary columns  
- ✔ Ensuring correct data types  


### 3️⃣ Feature Engineering
New analytical features were created:

**👥 Age Groups**

- Youngster  
- Adult  
- Middle-aged  
- Senior  

**🔄 Customer Segments**
- New  
- Growing  
- Established  
- Loyal  

These features help analyze **customer lifecycle behavior**.

### 4️⃣ Data Loading to Database
The cleaned dataset was exported from Python and loaded into a **PostgreSQL local database server** for SQL analysis.

### 5️⃣ SQL Business Analysis
SQL queries were written to answer key business questions:

- 📊 Which product categories generate the most revenue?  
- 👥 Which customer segments contribute the most sales?  
- 📍 Which locations produce the highest revenue?  
- 🔔 Do subscription customers spend more?  
- 📅 Are there seasonal trends in purchases?

## 📊 Dashboard

An interactive **Power BI dashboard** was created to visualize key business insights.

---

### Key Dashboard Metrics

- 💰 **Total Revenue**
- 👤 **Total Customers**
- 📈 **Average Customer Spend**
- ⭐ **Average Review Rating**
- 🛍 **Revenue by Product Category**
- 👥 **Revenue by Customer Segment**
- 👨‍👩‍👧 **Revenue by Gender**

---

## 🔍 Key Insights

- 🛍 **Clothing** is the highest revenue-generating category
- 🔁 **Loyal customers** generate the largest share of revenue
- 👨 **Male customers** account for a larger portion of purchases
- 👥 **Young and middle-aged customers** drive significant revenue
- 📍 Certain locations contribute higher sales than others

---
## 🚀 How to Run the Project
- 1️⃣ Clone the repository
git clone https://github.com/yourusername/customer-shopping-analysis.git
- 2️⃣ Install required libraries
pip install pandas numpy matplotlib seaborn psycopg2
- 3️⃣ Run Jupyter Notebook
jupyter notebook Data_Analysis.ipynb
- 4️⃣ Load data into PostgreSQL
Run the SQL scripts to perform business analysis.
- 5️⃣ Open Power BI Dashboard
Open the .pbix file to explore interactive visualizations.

---
## 💼 Business Value
This project demonstrates how data analytics can help organizations:

- ✔ Understand customer purchasing behavior
- ✔ Identify high-performing product categories
- ✔ Improve customer retention strategies
- ✔ Optimize marketing campaigns
- ✔ Enable data-driven business decisions
---
## 📌 Future Improvements
- Add predictive models for customer lifetime value
- Build automated ETL pipelines
- Deploy dashboard using Power BI Service
---
✅ Author: Pavan Kumar
📊 Role: Data Analyst

--- 
<img width="975" height="545" alt="image" src="https://github.com/user-attachments/assets/b3505943-1dd4-4f28-9f2a-3371bd875c4f" />


