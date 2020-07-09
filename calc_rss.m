function rss = calc_rss(vehicle_tracks, id1, id2, time)
    %extracting all data for a track id 
    data1 = get_data_from_track_id(vehicle_tracks, id1);
    data2 = get_data_from_track_id(vehicle_tracks, id2);
    
    %extracting particular data string for a timestamp
    time1 = get_data_from_timestamp(data1, time);
    time2 = get_data_from_timestamp(data2, time);
    
    %calculations for the accelerations
    [minb, maxa, maxb] = get_acc(vehicle_tracks, id1, id2);
    
    %response time
    r = 1.0;
    
    %rss equation
    rss = (time1.vx*r + (1/2)*maxa*r^2 + (time1.vx + r*maxa)^2/(2*abs(minb)) - (time2.vx)^2/(2*abs(maxb)));
end
    
    
    