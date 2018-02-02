

SELECT A.Name ArtistName, count(IL.Quantity) TotalSales
FROM Invoice I, InvoiceLine IL, Track T, Album AL, Artist A
WHERE I.InvoiceId = IL.InvoiceId
AND IL.TrackId = T.TrackId
AND T.AlbumId = AL.AlbumId
AND A.ArtistId = AL.ArtistId
GROUP BY ArtistName
ORDER BY TotalSales desc
LIMIT 3;