SELECT name as "Top Salesperson of 2009!", max("Total Sales") as "Total sales of 2009"
FROM (
SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total Sales"
FROM Employee
 JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
 JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
 WHERE Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31")
Group by Name);