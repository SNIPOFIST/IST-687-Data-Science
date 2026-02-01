# IST-687 Data Science

This repository contains coursework and projects for IST-687 Data Science course as part of my Master's degree program.

## 📋 Course Overview

**Course:** IST-687 Data Science  
**Institution:** Syracuse University  
**Semester:** [Add semester/year]  
**Instructor:** [Add instructor name]  

## 🎯 Course Objectives

This course covers fundamental concepts and practical applications of data science, including:
- Data collection, cleaning, and preprocessing
- Exploratory data analysis and visualization
- Statistical modeling and machine learning
- Data-driven decision making
- R programming and Shiny applications

## 📁 Repository Structure

```
IST-687-Data-Science/
├── README.md                           # This file
├── Project-Description.pdf             # Course project description
├── Project-Overview.pdf                # Project overview document
├── IDS_Project.Rmd                     # Main project R Markdown file
├── Submission Code ff.Rmd              # Final submission code
├── Test_data.Rmd                       # Test data analysis
├── Project_Observations                # Project observations and notes
│
├── Data Files/
│   ├── DATA.parquet                    # Main dataset
│   ├── filtered_july_data.parquet      # Filtered July data
│   ├── Combined_energy_data_set_*.parquet  # Combined energy datasets (1-10)
│   ├── final_combined_energy_data*.parquet # Final combined datasets
│   └── Cleaned_Dataset/                # Cleaned and processed datasets
│       ├── Combined_energy_data_set_*.parquet
│       ├── July cleaned data/          # July-specific cleaned data
│       ├── May June and July/          # Multi-month analysis
│       └── May_June_July_day_aggregated_data.parquet
│
├── Applications/
│   ├── IDS_Project/                    # Main IDS project Shiny app
│   │   ├── app.R                       # Shiny application
│   │   └── Cooling_Energy_Consumption_vs_Temp.png
│   ├── Air_quality_Index_Visualizations/  # Air quality visualization app
│   │   └── app.R
│   ├── Project_file/                   # Additional project files
│   │   └── app.R
│   └── Syracuse_Crime/                 # Syracuse crime analysis app
│       ├── app.R
│       └── rsconnect/                  # Deployment configuration
│
└── Energy_Dataset_Backup/              # Backup of energy datasets
    └── Combined_energy_data_set_*.parquet
```

## 🚀 Main Projects

### 1. Electricity Consumption Prediction
**Description:** A comprehensive analysis and prediction model for electricity consumption patterns.

**Key Features:**
- Data preprocessing and cleaning of energy consumption datasets
- Time series analysis for consumption patterns
- Interactive Shiny dashboard for data visualization
- Predictive modeling for electricity demand forecasting

**Files:**
- `IDS_Project.Rmd` - Main analysis notebook
- `IDS_Project/app.R` - Interactive Shiny application
- Various parquet files containing energy consumption data

### 2. Air Quality Index Visualizations
**Description:** Interactive visualizations for air quality data analysis.

**Files:**
- `Air_quality_Index_Visualizations/app.R` - Shiny app for AQI visualization

### 3. Syracuse Crime Analysis
**Description:** Analysis and visualization of crime data in Syracuse.

**Files:**
- `Syracuse_Crime/app.R` - Crime data visualization app
- Deployed on shinyapps.io

## 🛠️ Technologies Used

- **R** - Primary programming language
- **Shiny** - Interactive web applications
- **R Markdown** - Reproducible research and reporting
- **ggplot2** - Data visualization
- **dplyr** - Data manipulation
- **parquet** - Efficient data storage format

## 📊 Datasets

⚠️ **Note:** Large data files (*.parquet) are excluded from this repository due to GitHub's 100MB file size limit.

The project works with several energy consumption datasets (available locally):
- **Main Dataset:** `DATA.parquet` (65MB) - Primary energy consumption data
- **Filtered Data:** `filtered_july_data.parquet` (30MB) - July-specific filtered data
- **Combined Datasets:** Multiple combined energy datasets covering different house ID ranges (69MB each)
- **Large Datasets:** Some files exceed 400MB (e.g., July_Month_Electricity_Consumption_data.parquet)
- **Cleaned Datasets:** Preprocessed and cleaned versions in the `Cleaned_Dataset/` folder

**Data Access:** 
- Contact the repository owner for access to the full datasets
- Sample data and analysis code are available in the R Markdown files
- All analysis can be reproduced with the original datasets

## 🔧 Setup and Installation

1. **Clone the repository:**
   ```bash
   git clone [repository-url]
   cd IST-687-Data-Science
   ```

2. **Install required R packages:**
   ```r
   install.packages(c("shiny", "ggplot2", "dplyr", "arrow", "plotly", "DT"))
   ```

3. **Run Shiny applications:**
   ```r
   # For the main IDS project
   shiny::runApp("IDS_Project/")
   
   # For air quality visualizations
   shiny::runApp("Air_quality_Index_Visualizations/")
   
   # For Syracuse crime analysis
   shiny::runApp("Syracuse_Crime/")
   ```

## 📈 Key Findings and Results

[Add your key findings, insights, and results from the analysis]

## 🤝 Contributing

This is a coursework repository. For academic integrity, please do not copy or submit this work as your own.

## 📄 License

This project is for educational purposes only.

## 📞 Contact

**Student:** [Your Name]  
**Email:** [Your Email]  
**Program:** Master's in Data Science  
**Institution:** Syracuse University

---

*Last Updated: February 2026*