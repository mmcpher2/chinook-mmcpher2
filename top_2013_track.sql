
SELECT Track.Name, count(Track.Name) TotalSales
FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Name
ORDER BY TotalSales desc
limit 5;