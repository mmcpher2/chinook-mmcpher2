SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total Sales"
FROM Employee
 JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
 JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
GROUP BY Name;