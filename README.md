# The 2026 Semiconductor Supply Squeeze: SQL & Power BI

### 💡 The Catalyst
I built this project to cut through the massive investor hype surrounding the "AI Gold Rush" and analyze what it actually means for the global supply chain and everyday consumers. On a personal note, I engineered this entire database using my older sister's borrowed laptop. After seeing what this data reveals about the massive incoming surge in PC hardware prices, I'm praying she doesn't ask for it back anytime soon. 

This end-to-end data pipeline proves a specific macroeconomic thesis: **The AI data center boom is actively monopolizing advanced foundry space, leading to severe supply bottlenecks and skyrocketing prices for consumer PCs.**

---

### 📊 Dashboard Preview
[<img width="1178" height="736" alt="Semiconductor project preview" src="https://github.com/user-attachments/assets/61b78865-bc2f-461b-9dd9-0e4b4954f16b" />
]

*Interactive BI dashboard tracking the financial and physical shift from Consumer PCs to Enterprise AI.*

---

### 🛠️ Tech Stack & Architecture
* **Data Sources:** Google Finance API & Yahoo Finance Historical Data
* **Database Engine:** Microsoft SQL Server (SSMS)
* **ETL Pipeline:** T-SQL (Staging, Transformation, Automation)
* **Business Intelligence:** Power BI (Live DirectQuery/Import)

The relational database (`SemiConductorDB`) consists of 5 interconnected tables linking financial metrics directly to physical hardware capabilities:
1. `Companies` (Core Entity)
2. `Stock_Prices` (5-Year Historical Data)
3. `CPU_Specs` (Transistor Counts, Nodes)
4. `Performance_Benchmarks` (Teraflops, Power Draw)
5. `Market_Sectors` (AI vs. Consumer Use Cases)

**ETL Execution:** Raw financial CSVs were ingested into temporary staging tables, cleaned, and surgically inserted into the master schema via T-SQL to guarantee data integrity.

[<img width="917" height="717" alt="Importing CSV" src="https://github.com/user-attachments/assets/8b84e28e-b764-4d94-8128-d4dad7c71690" />
]

---

### 💻 Core Engineering: The Relational Link
To ensure the data model was structurally sound, I engineered a master 4-table `JOIN` query to aggregate 5 years of stock volume and map it directly to the physical hardware specs of each manufacturer's flagship chip.

[<img width="1902" height="976" alt="THE CROWN JEWEL (HOPEFULLY)" src="https://github.com/user-attachments/assets/af808032-4185-4615-84c4-d6add6fe4e6e" />
]

*The resulting output isolates the exact correlation between engineering complexity (e.g., the 80 Billion Transistors on the H100) and disproportionate market trading volume.*

---

### 📈 Business Intelligence Insights
The Power BI visualization layer exposes the reality of the 2026 hardware market:
* **The Fabrication Squeeze:** A Donut Chart analysis proves the vast majority of capital is aggressively chasing 3nm and 4nm nodes, starving consumer PC components of necessary manufacturing capacity.
* **The Complexity Gap:** A Bubble Chart maps the physical dominance of AI chips over consumer chips, validating why capital has abandoned the PC sector.
* **The Conclusion:** Foundries are prioritizing high-margin AI data center chips over consumer CPUs. PC gamers and builders aren't just paying for silicon; they are paying a "scarcity tax."

[<img width="1902" height="968" alt="Bubble chart" src="https://github.com/user-attachments/assets/36bd20a1-ebcb-4a21-82b9-719bf9cb58d4" />
]

---

### 📂 Repository Assets

* 💾 **Database Blueprint:** [Download the SQL Schema & Data](SemiConductor_Project_Final.sql) 
  *(Full Schema & Data export. Run in SSMS to recreate the environment).*

* 📊 **Live Dashboard:** [Download the Power BI Dashboard](Semiconductor%20Market%20analysis.pbix)
  *(The interactive Power BI file).*
