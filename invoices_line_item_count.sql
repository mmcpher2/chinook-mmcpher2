SELECT Invoice.InvoiceId, count(InvoiceLine.InvoiceId)
FROM Invoice
JOIN InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY  Invoice.InvoiceId;