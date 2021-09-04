SELECT
	Total,
	Customer.FirstName + ' ' + Customer.LastName as CustomerName,
	Customer.Country,
	Employee.FirstName + ' ' + Employee.LastName as SalesRep
FROM Customer
JOIN Employee ON
	Employee.EmployeeId = Customer.CustomerID 
JOIN Invoice ON
	Invoice.CustomerId = Customer.CustomerId