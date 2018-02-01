

SELECT Invoice.BillingCountry, sum(Invoice.Total) as "Total Sales"
FROM Invoice
GROUP BY Invoice.BillingCountry;