SELECT 
	SUM(
		CASE WHEN YEAR(InvoiceDate) = '2009' THEN 1
		ELSE 0
		END) AS Invoices2009,
			SUM(
		CASE WHEN YEAR(InvoiceDate) = '2011' THEN 1
		ELSE 0
		END) AS Invoices2011
FROM Invoice
--WHERE YEAR(InvoiceDate) = '2009' OR YEAR(InvoiceDate) = '2011'