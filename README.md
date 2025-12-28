# Cross-Country Analysis of COVID-19 Mortality and Case Fatality (2020–2023)

## 📌 Overview
This project presents a descriptive epidemiological analysis of COVID-19 mortality and case fatality across five regions—**India, United States, Italy, Brazil, and Africa (aggregated)**—using publicly available secondary data. The analysis examines how population-adjusted mortality and case fatality ratios (CFR) evolved over time during the COVID-19 pandemic.

The study focuses on the period from **1 March 2020 to 1 March 2023**, capturing the initial pandemic shock, major waves, and the subsequent stabilisation phase.

---

## 🎯 Objectives
- Compare **COVID-19 mortality per million population** across countries over time  
- Analyse **Case Fatality Ratio (CFR)** trends and their evolution during the pandemic  
- Distinguish **early-pandemic severity** from **long-term disease severity** using peak and average CFR  
- Generate reproducible, publication-quality visualisations using R  

---

## 📊 Key Findings
- Cumulative COVID-19 mortality per million was highest in the **United States and Brazil**, while **India and Africa** exhibited substantially lower mortality levels.
- CFR showed extreme volatility during the early pandemic phase, with peak values reaching up to **~19%**, particularly in Italy and the African aggregate.
- CFR declined sharply across all regions and **stabilised at low levels by 2022–2023**.
- Average CFR during 2020–2023 ranged from **~1.5% (India)** to **~4.3% (Italy)**, indicating persistent cross-country differences in sustained fatality risk.

---

## 🛠 Tools & Methods
- **R**
- **ggplot2** – data visualisation  
- **dplyr** – data manipulation  
- **tidyverse**

---

## 📁 Data Source
The COVID-19 case and mortality data used in this project are obtained from **Our World in Data (OWID)**.

The dataset can be downloaded from the official OWID COVID-19 data repository:  
https://docs.owid.io/projects/etl/api/covid/#download-data

This project uses publicly available secondary data and focuses on population-adjusted mortality and case fatality indicators.

---

## ⚠️ Notes and Limitations
- The analysis is **descriptive** and does not attempt causal inference.
- Observed patterns may reflect differences in testing coverage, reporting practices, and population age structure.
- “Africa” represents an aggregated regional estimate and not a single country.

---

## 📌 Reproducibility
All data processing, analysis, and visualisation steps are documented in R scripts, enabling full reproducibility of results.

