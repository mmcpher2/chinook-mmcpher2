SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, Invoice.InvoiceId
FROM Employee
inner JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
inner JOIN Invoice on Customer.SupportRepId = Invoice.CustomerId;