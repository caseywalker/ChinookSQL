SELECT InvoiceId, Count(*) as [Invoice Line Items]
FROM InvoiceLine
Group By InvoiceId