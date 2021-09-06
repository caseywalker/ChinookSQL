SELECT TOP 1
	BillingCountry as [Country],
	SUM(Total) as [Total Sales]
FROM Invoice
GROUP BY BillingCountry
ORDER BY [Total Sales] DESC