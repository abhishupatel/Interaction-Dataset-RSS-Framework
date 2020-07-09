vehicle_tracks = readtable('vehicle_tracks_000.csv');
d = spacing(vehicle_tracks, 9, 12, 12800);
rss = calc_rss(vehicle_tracks,9, 12, 12800);

