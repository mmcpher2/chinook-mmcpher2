
SELECT Name as "Track Name", max("Total Sales") as "Number of Sales"
FROM(
SELECT Track.Name, sum(InvoiceLine.TrackId) as "Total Sales"
FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Invoice.InvoiceDate between date("2013-01-01") and date("2013-12-31")
GROUP BY Name);