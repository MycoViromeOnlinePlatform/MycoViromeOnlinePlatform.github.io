# 🧫 Mycovirome Platform

## 🌐 Overview

The **Mycovirome Platform** is an interactive, web-based resource designed to explore the diversity, evolution, and biology of **mycoviruses** — viruses that infect fungi.  
This project focuses on *Botrytis cinerea* as a model organism, integrating global data on mycovirus sequences, genome organization, and host interactions.  

The platform combines interactive data visualizations, searchable tables, and curated biological information to support research in **virology, mycology, and plant pathology**.

---
## 🌐 Website

[Visit the website](https://mycoviromeonlineplatform.github.io/)


## 🧩 Features

- 🌍 **Global Distribution Map** of *Botrytis cinerea* mycoviruses  
- 🧬 **Genome Composition Visualizations** (stacked bars, circular plots)  
- 📊 **Interactive Dataset Table** (search, filter, export options)  
- 👩‍🔬 **Curation Team and Related Resources** section  
- 🧠 **Educational Overview** of fungal-virus interactions and diversity  

---

## 📂 Repository Structure

```
MycoviromePlatform/
├── index.html                        # Main website file
├── style.css                         # CSS styles for the webpage
├── Mycovirome_plots.html             # Genome composition visualizations
├── virus_family_circular_plot.html   # Circular genome configuration plot
├── mycovirome_map.html               # Geographic distribution map
├── Botrytis_Mycovirus_Dataset.html   # Interactive dataset table
├── make_interactive_table.R          # R script to create new interactive tables
├── fig/                              # Folder with figures and profile images
└── README.md                         # This file
```

---

## ⚙️ Requirements

Before running the R script, make sure you have **R (≥ 4.0)** installed.  
Then, install the required R packages:

```r
install.packages(c("DT", "htmlwidgets"))
```

---

## 🚀 Generate a New Interactive Dataset

The script **`make_interactive_table.R`** creates a fully interactive HTML table from your CSV dataset.  
You can run it directly from the command line.

### **Usage**

```bash
Rscript make_interactive_table.R input_dataset.csv output_table.html
```

### **Example**

```bash
Rscript make_interactive_table.R Botrytis_Mycoviruses_Databases_updated2509225.csv Mycovirome_interactive_dataset.html
```

✅ This will:
1. Read your CSV file  
2. Clean text encoding (UTF-8)  
3. Export an HTML table with:
   - Search filters  
   - Sorting  
   - Scrollbars  
   - Export buttons (CSV, Excel, PDF)

---

## 🌍 View the Platform Locally

You can open the main site locally by double-clicking `index.html`, or run a local web server:

```bash
python3 -m http.server 8080
```

Then open your browser at:  
👉 [http://localhost:8080](http://localhost:8080)

---

## 🧬 Curation Team

| Name | Role | Affiliation |
|------|------|--------------|
| **Cinthy Jimenez** | Administrator | University of Auckland, New Zealand |
| **Robin MacDiarmid** | Curator | NZ Institute for Bioeconomy Science Ltd. |
| **Karmun Chooi** | Curator | Bioinformatics Researcher |

---

## 🧠 How It Works

The platform integrates multiple HTML visualizations using `<iframe>`s embedded in `index.html`:

- `mycovirome_map.html` → Global mycovirus distribution  
- `Mycovirome_plots.html` → Genome composition and prevalence  
- `virus_family_circular_plot.html` → Circular diversity plots  
- `Botrytis_Mycovirus_Dataset.html` → Searchable and filterable dataset  

These components are generated via R scripts and data visualizations.

---

## 📚 Citation

If you use the Mycovirome Platform in your research, please cite:

> Jimenez et al. (2025) *The Botrytis cinerea Mycovirome Platform:  
> A Global Resource for Fungal Virus Discovery and Analysis.*  
> *Viruses* 16(9):1483.

---

## 🔗 Related Databases

- [tRNAviz](http://trna.ucsc.edu/tRNAviz//summary/) — explore and visualize tRNA features  
- [Prokaryotic AARS Database](http://bioinf.bio.uth.gr/aars/#/) — aminoacyl-tRNA synthetase motifs  
- [MiSynPat](http://misynpat.org/) — mitochondrial aminoacyl-tRNA synthetase and pathologies  

---

## 🐛 Issues & Contributions

If you find a bug, have a suggestion, or want to contribute:
- Open an **Issue** or **Pull Request** at:  
  👉 [https://github.com/MycoViromeOnlinePlatform
MycoViromeOnlinePlatform.github.io.](https://github.com/MycoViromeOnlinePlatform
MycoViromeOnlinePlatform.github.io.)

---

## 👩‍💻 Author

**Cinthy Jimenez**  
University of Auckland, New Zealand  
*Project Lead — Mycovirome Online*  

📅 *Last updated: Nov 2025*
