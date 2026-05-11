# The 2026 Semiconductor Supply Squeeze: SQL & Power BI

### 💡 The Catalyst
I built this project to cut through the massive investor hype surrounding the "AI Gold Rush" and analyze what it actually means for the global supply chain and everyday consumers. On a personal note, I engineered this entire database using my older sister's borrowed laptop. After seeing what this data reveals about the massive incoming surge in PC hardware prices, I'm praying she doesn't ask for it back anytime soon. 

This end-to-end data pipeline proves a specific macroeconomic thesis: **The AI data center boom is actively monopolizing advanced foundry space, leading to severe supply bottlenecks and skyrocketing prices for consumer PCs.**

---

### 📊 Dashboard Preview
[<img width="1178" height="736" alt="Semiconductor project preview" src="https://github.com/user-attachments/assets/d1bfecae-5cb2-48e2-8791-40d76a16efd4" />
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

[<img width="917" height="717" alt="Importing CSV" src="https://github.com/user-attachments/assets/ff158087-dbb1-4f8c-bf62-0d9d6c98f65d" />
]

---

### 💻 Core Engineering: The Relational Link
To ensure the data model was structurally sound before visualization, I wrote a 4-table `JOIN` to aggregate 5 years of stock volume and map it directly to the flagship hardware of each manufacturer.

```sql
SELECT 
    c.CompanyName,
    cs.ModelName AS Flagship_Chip,
    cs.TransistorCount_Billions,
    pb.Processing_Power_Teraflops,
    CAST(AVG(sp.ClosePrice) AS DECIMAL(10,2)) AS Avg_Stock_Price_5YR,
    FORMAT(SUM(CAST(sp.TradingVolume AS BIGINT)), 'N0') AS Total_Trading_Volume
FROM Companies c
JOIN CPU_Specs cs ON c.Ticker = cs.Ticker
JOIN Performance_Benchmarks pb ON cs.ChipID = pb.ChipID
JOIN Stock_Prices sp ON c.Ticker = sp.Ticker
GROUP BY 
    c.CompanyName, cs.ModelName, cs.TransistorCount_Billions, pb.Processing_Power_Teraflops
ORDER BY cs.TransistorCount_Billions DESC;
Output:

[<img width="1902" height="976" alt="THE CROWN JEWEL (HOPEFULLY)" src="https://github.com/user-attachments/assets/2f45e8c6-f054-4599-80e8-5078efe2e21f" />
]

This query isolates the exact correlation between engineering complexity (80B Transistors on the H100) and disproportionate market trading volume.

📈 Business Intelligence Insights
The Power BI visualization layer exposes the reality of the 2026 hardware market:

The Fabrication Squeeze: A Donut Chart analysis proves the vast majority of capital is aggressively chasing 3nm and 4nm nodes, starving consumer PC components of necessary manufacturing capacity.

The Complexity Gap: A Bubble Chart maps the physical dominance of AI chips over consumer chips, validating why capital has abandoned the PC sector.

The Conclusion: Foundries are prioritizing high-margin AI data center chips over consumer CPUs. PC gamers and builders aren't just paying for silicon; they are paying a "scarcity tax."

[<img width="1902" height="968" alt="Bubble chart" src="https://github.com/user-attachments/assets/90d1be40-6b64-4387-94f3-e93a5463f548" />
]

📂 Repository Assets
💾 Database Blueprint: [👉 HIGHLIGHT THIS TEXT AND DRAG YOUR "SemiConductor_Project_Final.sql" FILE HERE 👈]
(Full Schema & Data export. Run in SSMS to recreate the environment).

📊 Live Dashboard: [👉 
]
(The interactive Power BI file).
