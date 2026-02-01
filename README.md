# IST-687 Data Science Portfolio

## Project Showcase: Electricity Consumption Prediction System

This repository showcases a comprehensive data science project that demonstrates advanced analytics, machine learning, and interactive application development. The main project involves building an electricity consumption prediction system using 2.2GB of real-world energy data.

## Key Achievements

- **Large-Scale Data Processing**: Successfully handled 2.2GB of electricity consumption data from 4000+ households
- **Advanced Analytics**: Developed predictive models with high accuracy for energy consumption forecasting  
- **Interactive Applications**: Built multiple Shiny web applications for data exploration and visualization
- **Business Impact**: Created actionable insights for energy management and sustainability
- **Technical Excellence**: Implemented scalable, reproducible data science workflows

## Course Overview

**Course:** IST-687 Data Science  
**Institution:** Syracuse University  
**Semester:** Fall 2024  
**Project Completed:** November 2024  

## Course Objectives

This course covers fundamental concepts and practical applications of data science, including:
- Data collection, cleaning, and preprocessing
- Exploratory data analysis and visualization
- Statistical modeling and machine learning
- Data-driven decision making
- R programming and Shiny applications

## Repository Structure

```
IST-687-Data-Science/
├── README.md                           # Main repository overview
├── DATA_INFO.md                        # Information about excluded datasets
├── Project_Observations                # Key project insights and findings
│
├── 01-Project-Showcase/                # ⭐ MAIN PROJECT DELIVERABLES
│   ├── README.md                       # Comprehensive project documentation
│   ├── IDS_Project.Rmd                 # Main analysis and methodology
│   ├── Submission Code ff.Rmd          # Final implementation
│   ├── IDS_Project/                    # Electricity prediction app
│   │   ├── app.R                       # Interactive Shiny dashboard
│   │   └── Cooling_Energy_Consumption_vs_Temp.png
│   ├── Air_quality_Index_Visualizations/ # Air quality analysis
│   └── Project_file/                   # Additional components
│
├── 02-Lecture-Materials/               # Course learning activities
│   ├── README.md                       # Learning materials overview
│   └── Test_data.Rmd                   # Practice exercises
│
└── 03-Course-Resources/                # Official course documentation
    ├── README.md                       # Resources overview
    ├── Project-Description.pdf         # Official project requirements
    └── Project-Overview.pdf            # Course project guidelines
```

## Quick Start - View the Project

### 🎯 **Main Project**: [01-Project-Showcase/](./01-Project-Showcase/)
**The comprehensive electricity consumption prediction system with detailed documentation, methodology, and results.**

### Key Project Highlights:
- **Scale**: 2.2GB of real-world energy data from 4000+ households
- **Technology**: Advanced R analytics with interactive Shiny dashboards  
- **Impact**: Actionable insights for energy management and sustainability
- **Deployment**: Live web applications with professional visualizations

### Additional Projects:
- **Air Quality Analysis**: Interactive environmental data visualization and correlation analysis

### 📚 **Course Materials**: [02-Lecture-Materials/](./02-Lecture-Materials/)
Learning exercises and practice activities from the course.

### 📋 **Course Resources**: [03-Course-Resources/](./03-Course-Resources/)
Official project documentation and course guidelines.

## Technologies Used

- **R** - Primary programming language
- **Shiny** - Interactive web applications
- **R Markdown** - Reproducible research and reporting
- **ggplot2** - Data visualization
- **dplyr** - Data manipulation
- **parquet** - Efficient data storage format

## Datasets

**Note:** Large data files (*.parquet) are excluded from this repository due to GitHub's 100MB file size limit.

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

## Setup and Installation

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
   # For the main electricity prediction system
   shiny::runApp("01-Project-Showcase/IDS_Project/")
   
   # For air quality visualizations
   shiny::runApp("01-Project-Showcase/Air_quality_Index_Visualizations/")
   ```

## Key Findings and Results

[Add your key findings, insights, and results from the analysis]

## Contributing

This is a coursework repository. For academic integrity, please do not copy or submit this work as your own.

## License

This project is for educational purposes only.

## Contact

**Student:** [Your Name]  
**Email:** [Your Email]  
**Program:** Master's in Data Science  
**Institution:** Syracuse University

---

*Project Completed: November 2024*  
*Repository Updated: February 2026*