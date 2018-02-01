SELECT Invoice.BillingCountry, COUNT(Invoice.InvoiceId) as "Total Invoices"
FROM Invoice
GROUP BY Invoice.BillingCountry;