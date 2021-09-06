SELECT
	BillingCountry as [Country],
	SUM(Total) as [Total Sales]
FROM Invoice
GROUP BY BillingCountry
