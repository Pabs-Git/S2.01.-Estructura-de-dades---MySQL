SELECT DISTINCT supplier.name, supplier.reg_date, supplier.phone_number, sales.sale_date
FROM Sales 
JOIN Glasses ON sales.id_glasses = glasses.idGlasses
JOIN Supplier ON glasses.id_glasses_supplier = supplier.idSupplier
WHERE sales.sale_date IS NOT NULL; 
