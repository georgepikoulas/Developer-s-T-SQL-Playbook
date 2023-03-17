--Inner Join that can be matched in both sides of the equality
SELECT Invoice.InvoiceId, InvoiceDate, UnitPrice,Quantity FROM dbo.Invoice
INNER JOIN dbo.InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId 

--Getting data  with subequeries
SELECT * ,
(SELECT COUNT(1) FROM dbo.Album WHERE ArtistId = Artist.ArtistId) AS AlbumCount
FROM dbo.Artist
ORDER BY AlbumCount
 
 --Left Join where the equality favors the left side and gets NULL for the oned on right sidde with no data
 SELECT * FROM dbo.Artist 
 LEFT JOIN dbo.Album ON Album.ArtistId = Artist.ArtistId

  --Right Join where the equality favors the right side and gets NULL for the oned on right sidde with no data
 SELECT * FROM dbo.Artist 
 RIGHT JOIN dbo.Album ON Album.ArtistId = Artist.ArtistId

 --The Ful Join gets all data from both tables and NULL where no data exists
  SELECT * FROM dbo.Artist 
 FULL JOIN dbo.Album ON Album.ArtistId = Artist.ArtistId