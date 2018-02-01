SELECT Invoice.Total, Customer.FirstName || " " || Customer.LastName as "Customer Name", Customer.Country, Employee.FirstName || " " || Employee.LastName as "Employee Name"
FROM Employee
inner JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
inner JOIN Invoice on Customer.SupportRepId = Invoice.CustomerId;