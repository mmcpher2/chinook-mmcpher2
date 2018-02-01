SELECT strftime("%Y", InvoiceDate) as Year, SUM(Invoice.Total) as "Total Sales"
FROM Invoice
WHERE InvoiceDate between "2009-01-01" and "2009-12-31"
or InvoiceDate between "2011-01-01" and "2011-12-31"
GROUP BY Year;