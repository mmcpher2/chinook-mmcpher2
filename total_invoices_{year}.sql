SELECT count(*) as "Total invoices in 2009 and 2011"
FROM Invoice
WHERE Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31") 
or Invoice.InvoiceDate between date("2011-01-01") and date("2011-12-31");

/*
SELECT strftime("%Y", InvoiceDate) as Year, count(Invoice.InvoiceId) as "Total invoices"
FROM Invoice
WHERE Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31") 
or Invoice.InvoiceDate between date("2011-01-01") and date("2011-12-31")
GROUP BY Year; */