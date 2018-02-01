SELECT InvoiceId, count(InvoiceLineID) as "Total lines per invoice", Track.Name, Track.Composer
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceLine.InvoiceId;