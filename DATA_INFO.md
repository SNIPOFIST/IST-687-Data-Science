# Dataset Information

## 🚨 Large Files Excluded from Repository

Due to GitHub's 100MB file size limit, the following large data files are **not included** in this repository:

### Main Data Files (Root Directory)
- ` DATA.parquet` (65MB) - Primary energy consumption dataset
- ` filtered_july_data.parquet` (30MB) - July-specific filtered data
- `Combined_energy_data_set_1_and_2.parquet` (69MB)
- `Combined_energy_data_set_3_and_4.parquet` (69MB)
- `Combined_energy_data_set_5_and_6.parquet` (68MB)
- `Combined_energy_data_set_7_and_8.parquet` (69MB)
- `Combined_energy_data_set_9_and_10.parquet` (69MB)
- `final_combined_energy_data.parquet` (69MB)
- `final_combined_energy_data_1000_2000.parquet` (69MB)
- `final_combined_energy_data_2000_3000.parquet` (68MB)
- `final_combined_energy_data_3000_4000.parquet` (69MB)

### Cleaned Dataset Directory
- `Cleaned_Dataset/Combined_energy_data_set_*.parquet` (69MB each)
- `Cleaned_Dataset/May_June_July_day_aggregated_data.parquet` (83KB) - Small file
- `Cleaned_Dataset/July cleaned data/5000_House_ID_July_Data.parquet` (343MB) - **VERY LARGE**
- `Cleaned_Dataset/July cleaned data/DATA.parquet` (67MB)
- `Cleaned_Dataset/July cleaned data/July_Month_Electricity_Consumption_data.parquet` (425MB) - **VERY LARGE**
- `Cleaned_Dataset/July cleaned data/May_June_July_Electricity_dataset.parquet` (8MB)

### Energy Dataset Backup
- `Energy_Dataset_Backup/Combined_energy_data_set_*.parquet` (69MB each)

## 📊 Dataset Descriptions

### Energy Consumption Data
- **Time Period:** May, June, July
- **Scope:** Multiple house IDs (1000-4000+ houses)
- **Variables:** Energy consumption, temperature, time series data
- **Format:** Parquet files for efficient storage and processing

### Data Processing Pipeline
1. **Raw Data Collection** → Combined datasets (1-10)
2. **Data Cleaning** → Cleaned_Dataset folder
3. **Filtering** → July-specific and aggregated data
4. **Final Processing** → Analysis-ready datasets

## 🔄 Reproducing the Analysis

To reproduce the analysis with full datasets:

1. **Obtain the data files** (contact repository owner)
2. **Place files in correct directories** as shown in the structure above
3. **Run the R Markdown files:**
   - `IDS_Project.Rmd` - Main analysis
   - `Submission Code ff.Rmd` - Final submission
   - `Test_data.Rmd` - Data testing

## 📁 Alternative Data Storage Solutions

For large datasets, consider:
- **Git LFS (Large File Storage)** - For files up to 2GB
- **Cloud Storage** - Google Drive, Dropbox, AWS S3
- **Data Repositories** - Zenodo, Figshare, Dryad
- **University Storage** - Institutional data repositories

## 📧 Data Access

For access to the complete datasets, please contact:
- **Repository Owner:** [Your Name]
- **Email:** [Your Email]
- **Institution:** Syracuse University

---

*Total excluded data size: ~2.2GB*  
*Repository size without data: ~1.2GB*