SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
JOIN Customer on Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry = 'Brazil'