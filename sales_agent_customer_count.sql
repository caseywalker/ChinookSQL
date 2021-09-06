SELECT
Employee.FirstName + ' ' + Employee.LastName as [Sales Rep],
Count(*) as [Total Customers]
FROM Customer
JOIN Employee
	ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY SupportRepId, Employee.FirstName, Employee.LastName
