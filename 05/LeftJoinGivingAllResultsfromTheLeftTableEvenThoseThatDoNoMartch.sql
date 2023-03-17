use Chinook;
select Name, Title
from Artist left join Album
on Album.ArtistId= Artist.ArtistId