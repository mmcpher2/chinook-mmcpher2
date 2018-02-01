-- Which countrys customers spent the most money?

SELECT BillingCountry, max("Total Sales") as "Total Customer Sales"
FROM(
SELECT Invoice.BillingCountry, sum(Invoice.Total) as "Total Sales"
FROM Invoice
GROUP BY Invoice.BillingCountry);