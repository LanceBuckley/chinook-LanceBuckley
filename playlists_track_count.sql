SELECT COUNT(TrackId) AS Tracks, p.name AS PlaylistName
    FROM PlaylistTrack AS pt
    JOIN Playlist AS p
        ON pt.PlaylistId = p.PlaylistId
    GROUP BY pt.PlaylistId;