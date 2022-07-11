 select BOM.Part_Number,BOM.Part_Discription,BOM.Category,BOM.C240,BOM.Optimus,BOM.H1,BOM.H6,BOM.indexscanner,BOM.Brain,StockAvailability.[Qty Available], (C240+Optimus) as Total from BOM 
             inner join
             StockAvailability
             on
             BOM.Part_Number = StockAvailability.Part_Number
             