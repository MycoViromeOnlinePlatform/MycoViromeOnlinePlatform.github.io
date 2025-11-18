# 🧫 Mycovirome Online Platform

## Overview

The **Mycovirome Online Platform** is an interactive, web-based resource designed to explore the diversity, evolution, and biology of mycoviruses, viruses that infect fungi.  
This project focuses on *Botrytis cinerea* as a model organism, integrating global data on mycovirus sequences, genome organization, and host interactions.  

The platform combines interactive data visualizations, searchable tables, and curated biological information to support research in virology, mycology, and plant pathology.

---
## Website

[Visit the website](https://mycoviromeonlineplatform.github.io/)

---
##  Under Construction

This is an early, pre-release version of the MycoVirome Online Platform website.
The repository and site are actively being developed and may change frequently.
A formal release will be announced soon.

---
## Features

- 🌍 **Global Distribution Map** of *Botrytis cinerea* mycoviruses  
- 🧬 **Genome Composition Visualizations** (stacked bars, circular plots)  
- 📊 **Interactive Dataset Table** (search, filter, export options)  
- 👩‍🔬 **Curation Team and Related Resources** section  
- 🧠 **Educational Overview** of fungal-virus interactions and diversity  

---

## Curation Team

| Name | Role | Affiliation |
|------|------|--------------|
| **Cinthy Jimenez** | Administrator | University of Auckland, New Zealand |
| **Robin MacDiarmid** | Curator | NZ Institute for Bioeconomy Science Ltd. |
| **Karmun Chooi** | Curator | Bioinformatics Researcher |

---

## How It Works

The platform integrates multiple HTML visualizations using `<iframe>`s embedded in `index.html`:

- `mycovirome_map.html` → Global mycovirus distribution  
- `Mycovirome_plots.html` → Genome composition and prevalence  
- `virus_family_circular_plot.html` → Circular diversity plots  
- `Botrytis_Mycovirus_Dataset.html` → Searchable and filterable dataset  

These components are generated via R scripts and data visualizations.

---

## Citation

If you use the Mycovirome Online Platform in your research, please cite:

> Jimenez et al. (2025) *The Botrytis cinerea Mycovirome Platform:  
> A Global Resource for Fungal Virus Discovery and Analysis.*  
> *Viruses* 16(9):1483.

---

## Related Databases

- [ICMP](https://www.landcareresearch.co.nz/tools-and-resources/collections/icmp-culture-collection) — The ICMP web dataset contains the information on all culteres in the ICMP. The collection culture (ICMP) is a major international collection of living microorganism cultures.
- [ICTV](https://ictv.global/) — Virus taxonomy: the database of the International Committee on Taxonomy of Viruses (ICTV).
- [NCBI virus](https://www.ncbi.nlm.nih.gov/labs/virus/vssi/#/find-data/virus) — Community portal for viral sequence data from RefSeq, GenBank and other NCBI repositories. 

---

## Issues & Contributions

If you find a bug, have a suggestion, or want to contribute:
- Open an **Issue** or **Pull Request** at:  
  👉 [https://github.com/MycoViromeOnlinePlatform/MycoViromeOnlinePlatform.github.io](https://mycoviromeonlineplatform.github.io)

---

## Author

**Cinthy Jimenez-Silva**  
University of Auckland, New Zealand  
*Project Lead — Mycovirome Online*  

*Last updated: Nov 2025*
