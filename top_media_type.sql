
SELECT M.Name MediaName, count(IL.Quantity) TotalSales
FROM Invoice I, InvoiceLine IL, Track T, MediaType M
WHERE I.InvoiceId = IL.InvoiceId
AND IL.TrackId = T.TrackId
AND T.MediaTypeId = M.MediaTypeId
GROUP BY MediaName
ORDER BY TotalSales desc
LIMIT 1;