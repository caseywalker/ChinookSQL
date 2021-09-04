SELECT 
	SUM(
		CASE WHEN YEAR(InvoiceDate) = '2009' THEN Invoice.Total
		ELSE 0
		END) AS TotalSales2009,
			SUM(
		CASE WHEN YEAR(InvoiceDate) = '2011' THEN Invoice.Total
		ELSE 0
		END) AS TotalSales2011
FROM Invoice