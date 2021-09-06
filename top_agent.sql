SELECT TOP 1
	Employee.FirstName + ' ' + Employee.LastName as [Sales Rep],
	SUM(Invoice.Total) as [Total Sales]
FROM Invoice
JOIN Customer
	ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee 
	ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY SupportRepId, Employee.LastName, Employee.FirstName
ORDER BY [Total Sales] Desc
