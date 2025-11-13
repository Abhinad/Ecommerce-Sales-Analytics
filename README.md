# E-Commerce Sales Analytics & Customer Segmentation Platform

![GitHub stars](https://img.shields.io/github/stars/Abhinad/Ecommerce-Sales-Analytics?style=social)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Python](https://img.shields.io/badge/python-3.8%2B-blue.svg)

A comprehensive data analytics project analyzing 1M+ e-commerce transactions using SQL, Python, Power BI, and Tableau. This project demonstrates end-to-end data analytics capabilities including data cleaning, exploratory analysis, customer segmentation, sales forecasting, and interactive dashboard creation.

## 📊 Project Overview

### Business Problem
An online retail business experiencing declining repeat purchase rates and inconsistent revenue patterns needs comprehensive analytics to:
- Identify high-value customer segments for targeted marketing
- Optimize inventory management through sales trend analysis
- Reduce order cancellations and improve fulfillment efficiency
- Forecast revenue and demand for strategic planning

### Problem Statement
*"How can we leverage transactional data to improve customer retention, optimize product portfolio decisions, and increase operational efficiency to drive sustainable revenue growth?"*

## 🎯 Key Features

- **Customer Segmentation**: RFM (Recency, Frequency, Monetary) analysis to identify customer personas
- **Sales Forecasting**: Time-series analysis for revenue prediction
- **Product Analytics**: Top-performing products and market basket analysis
- **Geographic Analysis**: Sales distribution across countries
- **Operational Insights**: Cancellation pattern analysis and fulfillment metrics
- **Interactive Dashboards**: Executive dashboards in Power BI and Tableau

## 🛠️ Technologies Used

- **SQL**: Data extraction, transformation, and complex querying (SQLite)
- **Python**: Data analysis and machine learning
  - pandas, NumPy: Data manipulation
  - scikit-learn: Machine learning models
  - matplotlib, seaborn, plotly: Visualizations
  - statsmodels: Time series analysis
  - mlxtend: Market basket analysis
- **Power BI**: Interactive executive dashboards
- **Tableau**: Advanced visualizations and storytelling
- **Jupyter Notebooks**: Documentation and analysis

## 📁 Project Structure

```
Ecommerce-Sales-Analytics/
│
├── data/
│   ├── raw/                    # Raw data files
│   └── processed/              # Cleaned and transformed data
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_rfm_analysis.ipynb
│   ├── 04_sales_forecasting.ipynb
│   ├── 05_market_basket_analysis.ipynb
│   └── 06_visualization.ipynb
│
├── scripts/
│   ├── data_cleaning.py
│   ├── rfm_segmentation.py
│   ├── forecasting_models.py
│   └── utils.py
│
├── sql/
│   ├── exploratory_queries.sql
│   ├── sales_analysis.sql
│   └── customer_analysis.sql
│
├── reports/
│   ├── figures/                # Generated plots and charts
│   └── business_recommendations.md
│
├── dashboards/
│   ├── executive_dashboard.pbix    # Power BI dashboard
│   └── customer_insights.twbx      # Tableau workbook
│
├── docs/
│   ├── data_dictionary.md
│   ├── methodology.md
│   └── insights_summary.md
│
├── requirements.txt            # Python dependencies
├── .gitignore
├── LICENSE
└── README.md
```

## 📈 Dataset

**Source**: [UCI Machine Learning Repository - Online Retail II Dataset](https://archive.ics.uci.edu/ml/datasets/online+retail+II)

**Characteristics**:
- **Period**: December 2009 - December 2011
- **Records**: 1,067,371 transactions
- **Fields**: Invoice number, Stock code, Description, Quantity, Invoice date, Unit price, Customer ID, Country
- **Domain**: E-commerce, Retail

## 🚀 Getting Started

### Prerequisites

- Python 3.8 or higher
- Jupyter Notebook
- Power BI Desktop (for dashboards)
- Tableau Desktop/Public (for visualizations)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/Abhinad/Ecommerce-Sales-Analytics.git
cd Ecommerce-Sales-Analytics
```

2. **Create virtual environment**
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install dependencies**
```bash
pip install -r requirements.txt
```

4. **Download the dataset**
```python
from ucimlrepo import fetch_ucirepo
online_retail = fetch_ucirepo(id=502)
X = online_retail.data.features
```

### Running the Analysis

1. **Data Exploration**
```bash
jupyter notebook notebooks/01_data_exploration.ipynb
```

2. **Run SQL Analysis**
```bash
sqlite3 retail_analytics.db < sql/exploratory_queries.sql
```

3. **Execute Python Scripts**
```bash
python scripts/data_cleaning.py
python scripts/rfm_segmentation.py
```

## 📊 Key Insights

### Customer Segments Identified
- **Champions**: High-value customers with recent purchases
- **Loyal Customers**: Frequent buyers with consistent spending
- **At Risk**: Previously active customers showing declining engagement
- **Potential Loyalists**: Recent customers with growth potential

### Business Impact
- 15-20% potential increase in customer retention through targeted campaigns
- 10-15% reduction in inventory holding costs via demand forecasting
- Identification of top 20 products generating 60% of revenue
- Geographic expansion opportunities in high-growth markets

## 📸 Dashboards & Visualizations

### Power BI Dashboard
- Executive Summary: KPIs, revenue trends, customer metrics
- Customer Analytics: RFM segmentation, cohort analysis
- Product Performance: Top products, category analysis

### Tableau Storyboard
- Business Health Overview
- Customer Journey Insights
- Growth Opportunities

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Abhinad**
- GitHub: [@Abhinad](https://github.com/Abhinad)
- LinkedIn: [Your LinkedIn Profile](https://linkedin.com/in/yourprofile)

## 🙏 Acknowledgments

- UCI Machine Learning Repository for the dataset
- The data analytics and Python communities for excellent libraries and resources

## 📧 Contact

For questions or feedback, please open an issue or reach out via [GitHub](https://github.com/Abhinad).

---

⭐ If you found this project helpful, please give it a star!
