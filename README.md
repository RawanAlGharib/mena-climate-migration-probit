# Is Climate Change a Key Factor Affecting Migration? Evidence from the MENA Region

## 📌 Project Overview
This empirical study investigates the complex drivers of human migration within the Middle East and North Africa (MENA) region. Utilizing survey data from the Arab Barometer, the analysis evaluates the relative impact of environmental shocks (climate change, water scarcity) versus socio-demographic realities (income, place of residence) on the propensity to migrate.

## 🎯 Objectives
* Quantify the impact of perceived climate change and environmental degradation on migration likelihood.
* Compare the magnitude of environmental push factors against traditional socio-demographic drivers.
* Conduct demographic sub-sample analyses to isolate the effects of gender and urban versus rural residency on migration patterns.

## 🛠️ Data & Methodology
* **Software:** Stata 
* **Data Source:** Arab Barometer (Cross-sectional survey data for the MENA region).
* **Econometric Model:** Probit regression model (binary dependent variable for migration).
* **Analytical Approach:** Core regressions followed by sub-sample splitting (urban/rural) and demographic controls (gender) to test the robustness of environmental correlations.

## 📂 Repository Structure
* `data/`: Contains the regional survey dataset sourced from the Arab Barometer.
* `scripts/`: Stata `.do` files containing data cleaning, variable recoding, and Probit model estimations.
* `presentation/`: Slide deck summarizing the econometric findings and regional demographic insights.
* `docs/`: The full research paper (December 2022) detailing the literature review, methodology, and conclusions.

## 📊 Key Findings
1. **The Climate Constraint:** Counter-intuitively, the model indicates that as climate change worsens, migration decreases, highlighting the complex relationship between environmental shocks and mobility capabilities.
2. **Socio-Demographic Dominance:** Economic and demographic factors, specifically income and residence, exert a significantly greater impact on migration decisions than environmental stressors like water pollution or resource scarcity.
3. **Demographic Nuances:** Sub-sample analysis reveals that factoring in place of residence (urban vs. rural) neutralizes the statistical significance of climate change on migration. Additionally, across all geographic divides, males demonstrate a higher likelihood of engaging in migration than females.
