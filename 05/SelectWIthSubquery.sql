use Chinook;
select * ,
(select count(1) from 
Album where Album.ArtistId = Artist.ArtistId) as AlbumCount
from Artist
order by AlbumCount