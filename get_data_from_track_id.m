function data =  get_data_from_track_id(vehicle_tracks, id)
    data = vehicle_tracks.track_id == id;
    data = vehicle_tracks(data,:);
end