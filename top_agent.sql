SELECT name as "Top Salesperson EVER!", max("Total Sales") as "Total sales"
FROM (
SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total Sales"
FROM Employee
 JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
 JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
Group by Name);