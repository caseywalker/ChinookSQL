SELECT BillingCountry, count(*) as [Invoices]
FROM Invoice
GROUP BY BillingCountry
Order By [Invoices] DESC
