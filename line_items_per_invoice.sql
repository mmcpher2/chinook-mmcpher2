SELECT InvoiceId, count(InvoiceLineID) as "Total lines per invoice"
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId
GROUP BY InvoiceId;