# 🛍 Customer Shopping Behavior & Revenue Performance Analysis

> *Analysing 3,900 customer transactions to uncover revenue drivers, customer segments, and purchasing patterns — Python · PostgreSQL · Power BI*

<br>

![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=flat&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-336791?style=flat&logo=postgresql&logoColor=white)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=flat&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=flat&logo=pandas&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-10B981?style=flat)

<br>

---

## 📋 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Dataset](#-dataset)
- [Tech Stack](#-tech-stack)
- [Project Workflow](#-project-workflow)
- [Business Questions & SQL Analysis](#-business-questions--sql-analysis)
- [Key Insights](#-key-insights)
- [Dashboard](#-dashboard)
- [Business Recommendations](#-business-recommendations)
- [How to Run](#-how-to-run)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

## 🏪 Project Overview

This project performs a comprehensive analysis of **customer shopping behavior and revenue performance** in a retail environment. Using **3,900 customer purchase records**, the project identifies key factors influencing purchasing patterns, high-value customer segments, and top-performing product categories.

The project delivers:
- Clean, feature-engineered dataset ready for analytical querying
- 9 SQL-driven business question answers with interpretations
- Strategic business decisions backed by data
- Interactive Power BI dashboard with key KPIs and visual insights

---

## ❗ Business Problem

Retail organisations generate large volumes of transactional data through everyday customer purchases, yet many fail to translate this data into actionable insights that support strategic decision-making. Without proper analysis, businesses struggle to:

- Identify which customer segments and product categories drive revenue
- Understand the true impact of discount strategies on spending
- Recognise geographic markets with the highest growth potential
- Detect seasonal trends to optimise inventory and campaigns
- Differentiate between customers who spend more per purchase vs those who buy more frequently

This project bridges that gap by transforming raw transactional data into **clear, evidence-based business intelligence**.

---

## 🎯 Project Objectives

The project is designed to answer the following strategic objectives:

| # | Objective |
|---|-----------|
| 1 | Identify the most valuable **customer segments** contributing to overall revenue |
| 2 | Determine which **product categories and products** generate the highest sales |
| 3 | Evaluate the impact of **discounts** on customer spending behaviour |
| 4 | Analyse which **geographic locations** contribute the most revenue |
| 5 | Understand **purchasing patterns** across different customer age groups |
| 6 | Assess whether **subscription programs** influence customer spending |
| 7 | Identify **seasonal trends** in customer purchasing behaviour |
| 8 | Discover products with the highest **customer satisfaction ratings** |
| 9 | Examine **repeat purchasing behaviour** to identify loyal customers |

---

## 📦 Dataset

| Attribute | Detail |
|-----------|--------|
| **Records** | 3,900 customer purchase transactions |
| **Columns** | 18 features |
| **Granularity** | One row = one customer purchase transaction |
| **Total Revenue** | $233,081 |
| **Avg Customer Spend** | $59.76 |
| **Avg Review Rating** | 3.75 / 5.0 |

### Features by Category

| Category | Fields |
|----------|--------|
| 👤 **Customer Demographics** | Age, Gender, Location |
| 🛍 **Product Details** | Category, Item Purchased |
| 💰 **Transaction Data** | Purchase Amount (USD) |
| ⭐ **Customer Feedback** | Review Rating |
| 🔁 **Engagement** | Previous Purchases, Subscription Status |
| 📦 **Behaviour** | Purchase Frequency, Seasonal Trends, Discount Used |

---

## 🛠 Tech Stack

| Layer | Tool | Purpose |
|-------|------|---------|
| **Data Analysis** | Python, Pandas, NumPy | Data loading, cleaning, feature engineering |
| **Visualisation** | Matplotlib, Seaborn | Exploratory charts |
| **Database** | PostgreSQL | Data storage and SQL business analysis |
| **Business Intelligence** | Power BI | Interactive dashboard |
| **Workflow** | Jupyter Notebook | End-to-end analysis environment |

### Pipeline

```
Raw Dataset
    ↓
Python (Pandas) — Exploration · Cleaning · Feature Engineering
    ↓
PostgreSQL — Data Storage · SQL Business Analysis
    ↓
Power BI — Interactive Dashboard · KPI Reporting
```

---

## ⚙ Project Workflow

### Step 1. Data Loading & Exploration

The dataset was imported into Python using Pandas. Functions `head()`, `info()`, and `describe()` were used to review structure, confirm 3,900 records and 18 variables, and verify data types for key numerical fields (`purchase_amount_usd`, `age`, `previous_purchases`).

### Step 2. Data Cleaning

| Issue | Resolution |
|-------|-----------|
| Inconsistent column names | Standardised to `snake_case` for SQL compatibility |
| Incorrect data types | Numerical fields cast to correct types for aggregation |
| Missing values | Reviewed and handled appropriately |
| Unnecessary columns | Removed to reduce noise |

### Step 3. Feature Engineering

Two new features were created to enable richer segmentation analysis:

**Age Groups** — derived from the `age` column:

| Group | Age Range |
|-------|-----------|
| Youngster | 18–25 |
| Adult | 26–35 |
| Middle-aged | 36–55 |
| Senior | 56+ |

**Customer Segments** — derived from purchase history:

| Segment | Description |
|---------|-------------|
| New | Low purchase count |
| Growing | Increasing engagement |
| Established | Regular purchasers |
| Loyal | Highest purchase frequency |

### Step 4. Data Loading to PostgreSQL

The cleaned dataset was exported from Python and loaded into a **local PostgreSQL database server** for structured SQL analysis.

### Step 5. SQL Business Analysis

9 business questions were answered using SQL queries. See full analysis in the section below.

---

## 🔍 Business Questions & SQL Analysis

### Q1. Who are the most valuable customer segments?

**Finding:** Customers in the **56+ age group** generate the highest total revenue at **$65,256**, followed by 46–55 ($45,619) and 26–35 ($44,342).

**Business Decision:**
- Older customers contribute disproportionately due to more frequent purchases
- Marketing investment should be maintained strongly for the 56+ segment
- Younger segments (18–25) spend more per transaction — target with premium products

---

### Q2. Which product categories generate the most revenue?

**Finding:** **Clothing** is the highest revenue-generating category, followed by Accessories and Footwear. Outerwear contributes the lowest revenue share.

**Business Decision:**
- Expand Clothing inventory and introduce new collections
- Focus marketing campaigns around Clothing and Accessories
- Review Outerwear pricing and promotion strategy

---

### Q3. Which individual products generate the highest revenue?

**Finding:** Top 5 revenue-generating products:

| Rank | Product | Revenue |
|------|---------|---------|
| 1 | Blouse | $10,410 |
| 2 | Shirt | $10,332 |
| 3 | Dress | $10,320 |
| 4 | Pants | $10,090 |
| 5 | Jewelry | $10,010 |

**Business Decision:**
- Promote these products prominently in campaigns
- Ensure consistent inventory availability at all times
- Bundle top-performing items with complementary products

---

### Q4. Do customers who receive discounts spend more?

**Finding:** Customers who receive discounts spend **slightly less per order** than customers without discounts.

**Business Decision:**
- Discounts may increase order volume but do not increase average spend per transaction
- Shift from blanket discounts to **targeted, behaviour-based promotions**
- Focus discount strategy on acquiring new customers rather than rewarding existing high spenders

---

### Q5. Which locations generate the highest revenue?

**Finding:** Top 5 revenue-generating states:

| Rank | Location | Revenue |
|------|----------|---------|
| 1 | Montana | $5,784 |
| 2 | Illinois | $5,617 |
| 3 | California | $5,605 |
| 4 | Idaho | $5,587 |
| 5 | Nevada | $5,514 |

**Business Decision:**
- Increase targeted marketing campaigns in top-performing states
- Analyse demographics of high-revenue regions and replicate strategies in similar markets

---

### Q6. Which age groups spend the most?

**Finding:** The **18–25 age group** spends the **most per transaction**, while the **56+ group** generates the most revenue overall due to purchase frequency.

**Business Decision:**
- Two distinct strategies are required:
  - **Young customers (18–25):** Target with premium, high-value products
  - **Senior customers (56+):** Reward loyalty and frequency with retention programmes

---

### Q7. Do subscribed customers spend more?

**Finding:** **Non-subscribed customers (92.7%)** currently generate significantly more total revenue than subscribed customers (7.3%).

**Business Decision:**
- Evaluate whether the subscription programme provides sufficient value
- Redesign subscription incentives to increase adoption rate
- Consider exclusive subscriber benefits to shift high-value customers to subscription model

---

### Q8. What seasonal trends exist in purchasing behaviour?

**Finding:** Sales remain relatively stable across seasons, but **Fall performs slightly better** than other seasons.

**Business Decision:**
- Increase marketing spend and campaigns during Fall
- Prepare inventory for seasonal demand spikes
- Test seasonal promotions in Spring and Summer to reduce revenue flatness

---

### Q9. Which products have the highest customer satisfaction?

**Finding:** A specific group of products consistently achieves the highest customer review ratings (≥ 4.0), indicating strong product acceptance and market fit.

**Business Decision:**
- Prominently feature high-rated products in marketing and recommendation engines
- Use them as anchor products for cross-selling and bundling
- Analyse what drives satisfaction in these products and apply learnings to lower-rated items

---

## 💡 Key Insights

### 1. Customer Base & Revenue Performance
The dataset of ~3,900 customers generates **$233,081 in total revenue** with an average spend of **$59.76 per customer**. The average review rating of **3.75/5.0** indicates moderate-to-good product satisfaction with room for improvement.

### 2. Gender-Based Revenue Distribution
**Male customers dominate** — accounting for approximately **67.7%** of total sales vs 32.3% for female customers. Marketing strategies should reflect this skew while exploring opportunities to grow the female customer base.

### 3. Customer Age Segmentation
Younger and middle-aged segments drive significant purchase activity. However, the **56+ segment generates the most revenue** due to higher purchase frequency, making it the most strategically important cohort for retention.

### 4. Product Category Performance
**Clothing is the clear revenue leader**, followed by Accessories and Footwear. Outerwear significantly underperforms. Product strategy should heavily favour Clothing expansion.

### 5. Subscription Programme Impact
Only **7.3% of customers are subscribed**, yet the programme shows potential. The current non-subscriber dominance suggests the subscription model needs stronger incentivisation to drive adoption.

### 6. Customer Loyalty & Segmentation
**Loyal customers are the largest segment at 1,549 customers** and contribute the greatest revenue share. Retaining this group is the single highest-ROI action the business can take.

### 7. Discount Strategy Effectiveness
Discounts do **not increase average transaction value** — they may attract volume but reduce per-order revenue. Blanket discount strategies should be replaced with precision-targeted promotions.

### 8. Seasonal Stability with Fall Peak
Revenue is seasonally stable, with a modest Fall uplift. The business is not heavily dependent on any single season, but Fall campaigns represent the best return on marketing investment.

---

## 📊 Dashboard

An interactive **Power BI dashboard** was created to visualise all key findings.

### Dashboard KPIs

| Metric | Value |
|--------|-------|
| 💰 Total Revenue | $233,081 |
| 👤 Total Customers | 3,900 |
| 📈 Avg Customer Spend | $59.76 |
| ⭐ Avg Review Rating | 3.75 |

### Dashboard Visuals

- 🛍 Revenue by Product Category
- 👥 Revenue by Customer Segment (Loyal / Established / Growing / New)
- 👨‍👩‍👧 Revenue by Gender
- 📍 Revenue by Location (State)
- 📅 Seasonal Revenue Trends
- 🔔 Subscriber vs Non-Subscriber Spend

![Dashboard Preview](https://github.com/user-attachments/assets/35052fb6-1869-438b-8e49-3b01b8a2fdcf)

---

## 💼 Business Recommendations

| Priority | Recommendation | Evidence |
|----------|---------------|----------|
| 🔴 **HIGH** | **Prioritise Clothing category** — expand inventory, launch new collections, focus campaigns | Highest revenue category |
| 🔴 **HIGH** | **Strengthen loyalty programmes** — exclusive discounts and personalised offers for Loyal segment | 1,549 loyal customers drive largest revenue share |
| 🟠 **MEDIUM** | **Target 18–25 and 56+ with dual strategies** — premium products for young, frequency rewards for seniors | Age group spending analysis |
| 🟠 **MEDIUM** | **Optimise discount strategy** — replace blanket discounts with behaviour-based targeted promotions | Discounts reduce avg spend per order |
| 🟡 **MEDIUM** | **Improve subscription programme** — redesign incentives, increase adoption from 7.3% | Non-subscribers dominate revenue |
| 🟢 **LOW** | **Replicate top-region strategy** — apply Montana/Illinois/California playbook to lower-performing states | Geographic revenue concentration |

---

## 🚀 How to Run

### Prerequisites

```bash
pip install pandas numpy matplotlib seaborn psycopg2 jupyter
```

### 1. Clone the Repository

```bash
git clone https://github.com/nallabothulapavankumar/customer-shopping-analysis.git
cd customer-shopping-analysis
```

### 2. Run the Jupyter Notebook

```bash
jupyter notebook Data_Analysis.ipynb
```

This will:
- Load and clean the dataset
- Perform feature engineering (age groups, customer segments)
- Export the cleaned dataset for PostgreSQL loading

### 3. Load Data into PostgreSQL

```bash
# Connect to your PostgreSQL instance and run
psql -U your_user -d your_db -f sql/load_data.sql
psql -U your_user -d your_db -f sql/business_analysis.sql
```

### 4. Open the Power BI Dashboard

Open `dashboard/Customer_Shopping_Analysis.pbix` in **Power BI Desktop** to explore all interactive visualisations.

---

## 🔮 Future Improvements

| Improvement | Description |
|-------------|-------------|
| 🤖 **Predictive Modelling** | Build Customer Lifetime Value (CLV) prediction model |
| 🔄 **Automated ETL Pipeline** | Schedule data refresh using Apache Airflow or dbt |
| ☁ **Cloud Deployment** | Deploy dashboard on Power BI Service for real-time access |
| 🧪 **A/B Testing Framework** | Test discount strategies and measure revenue impact |
| 🗺 **Geospatial Analysis** | Map revenue by state using geographic visualisations |

---

## 👨‍💻 Author

**Nallabothula Pavan Kumar (NPK05)**
Data Analyst

[![Email](https://img.shields.io/badge/Email-npavankumarus72%40gmail.com-EA4335?style=flat&logo=gmail&logoColor=white)](mailto:npavankumarus72@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-nallabothulapavankumar-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/nallabothulapavankumar/)

---

## 📄 License

The dataset is used for educational and portfolio purposes only.

---

> *"Without data you're just another person with an opinion. With data, you become the person who drives the decision."*
