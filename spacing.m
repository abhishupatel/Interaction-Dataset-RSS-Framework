function d = spacing(vehicle_tracks, id1, id2, time)
    %extracting all data for a track id 
    data1 = get_data_from_track_id(vehicle_tracks, id1);
    data2 = get_data_from_track_id(vehicle_tracks, id2);

    %extracting particular data string for a timestamp
    time1 = get_data_from_timestamp(data1, time);
    time2 = get_data_from_timestamp(data2, time);
    
    %assuming that the x position and y position is from the center of the
    %agent
    d = sqrt((time1.x-time2.x)^2 + (time1.y-time2.y)^2)- (1/2)*(time1.length +time2.length);
end
    
    
    