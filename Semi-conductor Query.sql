SELECT 
    ms.Primary_Use_Case,
    COUNT(cs.ChipID) AS Chips_in_Sector,
    AVG(ms.Sector_Growth_Rate_Percent) AS Avg_Growth_2026,
    SUM(sp.TradingVolume) / 1000000 AS Relative_Market_Heat_Millions
FROM Market_Sectors ms
JOIN CPU_Specs cs ON ms.ChipID = cs.ChipID
JOIN Stock_Prices sp ON cs.Ticker = sp.Ticker
GROUP BY ms.Primary_Use_Case
ORDER BY Avg_Growth_2026 DESC;