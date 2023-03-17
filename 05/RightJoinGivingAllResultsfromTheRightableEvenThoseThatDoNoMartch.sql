use Chinook;
select Name, Title
from Artist right join Album
on Album.ArtistId= Artist.ArtistId