INSERT INTO DEPARTMENTS (Departmentname, DepartmentDescription) 
   VALUES ('Outdoor', 'Get Dad out of the house') 
INSERT INTO DEPARTMENTS (Departmentname, DepartmentDescription) 
   VALUES ('Indoor', 'Keep Dad in the house') 
SELECT * FROM DEPARTMENTS




INSERT INTO CATEGORIES (CategoryName, CategoryDescription, DepartmentID)
   VALUES ('Lawn', 'Keep Dad ocupied in the yard', CAST((SELECT DepartmentID 
                                                        FROM DEPARTMENTS 
                                                        WHERE Departmentname = 'Outdoor') AS uniqueidentifier))
INSERT INTO CATEGORIES (CategoryName, CategoryDescription, DepartmentID)
   VALUES ('Equipment', 'Tools that Dad thinks are dangerous', CAST((SELECT DepartmentID 
                                                        FROM DEPARTMENTS 
                                                        WHERE Departmentname = 'Outdoor') AS uniqueidentifier))
INSERT INTO CATEGORIES (CategoryName, CategoryDescription, DepartmentID)
   VALUES ('Clothing', 'keep Dad looking good with the threads', CAST((SELECT DepartmentID 
                                                        FROM DEPARTMENTS 
                                                        WHERE Departmentname = 'Indoor') AS uniqueidentifier))
INSERT INTO CATEGORIES (CategoryName, CategoryDescription, DepartmentID)
   VALUES ('Gadgets', 'Keep Dad thinking he is cool', CAST((SELECT DepartmentID 
                                                        FROM DEPARTMENTS 
                                                        WHERE Departmentname = 'Indoor') AS uniqueidentifier))
SELECT * FROM CATEGORIES


INSERT INTO PAYMENTTYPES (PaymentType) Values ('Visa')
INSERT INTO PAYMENTTYPES (PaymentType) Values ('Mastercard')
INSERT INTO PAYMENTTYPES (PaymentType) Values ('American Express')
INSERT INTO PAYMENTTYPES (PaymentType) Values ('Discover networks')
SELECT * FROM PAYMENTTYPES


INSERT INTO USERS (UserFirst, UserLAST, UserAddress1, UserAddress2, UserCity, UserZip, UserState, PaymentID, UserUID)
      Values( 'Bob', 'Belcher', '1001 bourger street Seymours Bay'
             ,'', 'San Francisco', 90210, 'California'
             ,CAST((SELECT PaymentID 
                    FROM PAYMENTTYPES 
                    WHERE PaymentType = 'Visa') AS uniqueidentifier), 'wC4H5aEkpQM6NMYw4ygJNa45UJo1')

INSERT INTO USERS (UserFirst, UserLAST, UserAddress1, UserAddress2, UserCity, UserZip, UserState, PaymentID, UserUID)
      Values( 'Hank', 'Hill', '1002 The Hank Hill Homestead'
             ,'', 'Arlen', 75216, 'Texas'
             ,CAST((SELECT PaymentID 
                    FROM PAYMENTTYPES 
                    WHERE PaymentType = 'Mastercard') AS uniqueidentifier), 'qCbslP4fmcSqLEN3rASXK0OkcoM2')
INSERT INTO USERS (UserFirst, UserLAST, UserAddress1, UserAddress2, UserCity, UserZip, UserState, PaymentID, UserUID)
      Values( 'Bob', 'Parr', '440 Somewhere'
             ,'', 'Metroville', 70000, 'Texas'
             ,CAST((SELECT PaymentID 
                    FROM PAYMENTTYPES 
                    WHERE PaymentType = 'American Express') AS uniqueidentifier), 'KJeZh0Bov3NNCwHc88jCxcFcf3J3')
INSERT INTO USERS (UserFirst, UserLAST, UserAddress1, UserAddress2, UserCity, UserZip, UserState, PaymentID, UserUID)
      Values( 'Phil', 'Dunphy', '10336 Dunleer Dr'
             ,'', 'Los Angeles', 90210, 'California'
             ,CAST((SELECT PaymentID 
                    FROM PAYMENTTYPES 
                    WHERE PaymentType = 'Discover networks') AS uniqueidentifier), 'kvT8Nt1Q7oZ9Vo9jy9tcEqSJauy2')
SELECT * FROM USERS


INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Mower', 'Grass Height Setting Equipment', 1500
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Lawn') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Clippers', 'Bushes growth regulator', 50
           ,CAST((SELECT CategoryID FROM CATEGORIES  WHERE CategoryName = 'Lawn') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Grill', 'Caveman tool for cooking', 900
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Equipment') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Thermometer', 'Outside temerature telling device', 25
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Equipment') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Short-shorts', 'Plese No Dad :(', 15
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Clothing') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Calf-high-Socks', 'Protecting the legs', 10
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Clothing') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Letherman', 'Hip Pocket Accessory', 25
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Gadgets') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy') AS uniqueidentifier))
INSERT INTO ITEMS (ItemName, ItemDescription, ItemPrice, CategoryID, SellerID)
   VALUES ( 'Glass protector', 'Glasses live extension device', 30
           ,CAST((SELECT CategoryID FROM CATEGORIES WHERE CategoryName = 'Gadgets') AS uniqueidentifier)
           ,CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy') AS uniqueidentifier))
SELECT * FROM ITEMS


INSERT INTO ORDERS (UserID ,PaymentID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') AS uniqueidentifier)
           ,CAST((SELECT PaymentID FROM PAYMENTTYPES WHERE PaymentType = 'Visa') AS uniqueidentifier))
INSERT INTO ORDERS (UserID ,PaymentID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill') AS uniqueidentifier)
           ,CAST((SELECT PaymentID FROM PAYMENTTYPES WHERE PaymentType = 'Mastercard') AS uniqueidentifier))
INSERT INTO ORDERS (UserID ,PaymentID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr') AS uniqueidentifier)
           ,CAST((SELECT PaymentID FROM PAYMENTTYPES WHERE PaymentType = 'American Express') AS uniqueidentifier))
INSERT INTO ORDERS (UserID ,PaymentID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy') AS uniqueidentifier)
           ,CAST((SELECT PaymentID FROM PAYMENTTYPES WHERE PaymentType = 'Discover networks') AS uniqueidentifier))
SELECT * FROM ORDERS


INSERT INTO CARTS (UserID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') AS uniqueidentifier))
INSERT INTO CARTS (UserID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill') AS uniqueidentifier))
INSERT INTO CARTS (UserID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr') AS uniqueidentifier))
INSERT INTO CARTS (UserID)
   values ( CAST((SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy') AS uniqueidentifier))
SELECT * FROM CARTS



INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) 
            ,2 
            ,2 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') )
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Calf-high-Socks' ) 
            ,13 
            ,13 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Calf-high-Socks' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Letherman' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Letherman' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Glass protector' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Glass protector' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher') )
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Thermometer' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Thermometer' )  )



INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Calf-high-Socks' ) 
            ,3 
            ,3 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Calf-high-Socks' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Letherman' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Letherman' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Glass protector' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Glass protector' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Thermometer' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Thermometer' )  )



INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Calf-high-Socks' ) 
            ,3 
            ,3 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Calf-high-Socks' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Letherman' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Letherman' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Glass protector' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Glass protector' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Thermometer' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Thermometer' )  )



INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Calf-high-Socks' ) 
            ,3 
            ,3 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Calf-high-Socks' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Letherman' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Letherman' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Glass protector' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Glass protector' )  )
INSERT INTO ORDERDETAILS (OrderID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT OrderID FROM ORDERS 
                   WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Thermometer' ) 
            ,1 
            ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Thermometer' )  )
   SELECT * FROM ORDERDETAILS
   SELECT * FROM ITEMS



UPDATE ORDERS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM ORDERDETAILS
                   WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher')))
WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
  UPDATE ORDERS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM ORDERDETAILS
                   WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr')))
WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))

UPDATE ORDERS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM ORDERDETAILS
                   WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill')))
WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))

UPDATE ORDERS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM ORDERDETAILS
                   WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy')))
WHERE OrderID = (SELECT OrderID FROM ORDERS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))


  INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) ,2 ,2 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ),1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Grill' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Grill' )  )
INSERT INTO CARTDETAILS (CartID, ItemID, ItemQuantity, ItemPrice) 
    VALUES ( ( SELECT CartID FROM CARTS WHERE  UserID = (SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))
            ,( SELECT ItemID FROM ITEMS WHERE ItemName = 'Clippers' ) ,1 ,1 * ( SELECT ItemPrice FROM ITEMS WHERE ItemName = 'Clippers' )  )
SELECT * FROM CARTDETAILS



UPDATE CARTS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM CARTDETAILS
                   WHERE CartID = (SELECT CartID FROM CARTS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher')))
WHERE CartID = (SELECT CartID FROM CARTS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Belcher'))
  UPDATE CARTS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM CARTDETAILS
                   WHERE CartID = (SELECT CartID FROM CARTS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr')))
WHERE CartID = (SELECT CartID FROM CARTS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Bob' AND UserLast = 'Parr'))

UPDATE CARTS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM CARTDETAILS
                   WHERE CartID = (SELECT CartID FROM CARTS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill')))
WHERE CartID = (SELECT CartID FROM CARTS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Hank' AND UserLast = 'Hill'))

UPDATE CARTS
SET OrderAmount = (SELECT SUM(ItemPrice) FROM CARTDETAILS
                   WHERE CartID = (SELECT CartID FROM CARTS 
                                    WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy')))
WHERE CartID = (SELECT CartID FROM CARTS 
                                WHERE  UserID = ( SELECT UserID FROM USERS WHERE UserFirst = 'Phil' AND UserLast = 'Dunphy'))

SELECT * FROM CARTS





    SELECT * FROM DEPARTMENTS
    SELECT * FROM CATEGORIES
    SELECT * FROM PAYMENTTYPES
    SELECT * FROM USERS
    SELECT * FROM ITEMS
    SELECT * FROM ORDERS
    SELECT * FROM CARTS
    SELECT * FROM ORDERDETAILS
    SELECT * FROM CARTDETAILS


    SELECT * FROM DEPARTMENTS
    SELECT * FROM CATEGORIES
    SELECT * FROM PAYMENTTYPES
    SELECT * FROM USERS
    SELECT * FROM ITEMS
    SELECT * FROM ORDERS
    SELECT * FROM CARTS
    SELECT * FROM ORDERDETAILS
    SELECT * FROM CARTDETAILS