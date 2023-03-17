use Chinook;
select Name, Title
from Artist full join Album
on Album.ArtistId= Artist.ArtistId