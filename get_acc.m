function [min_brake, max_accln, max_brake] = get_acc(vehicle_tracks, id1, id2)
    
    vehicle_data1 = get_data_from_track_id(vehicle_tracks, id1);
    vehicle_data2 = get_data_from_track_id(vehicle_tracks, id2);
    

    a1 = vehicle_data1.acc_long;
    a2 = vehicle_data2.acc_long;
    
    %acceleration range
    a1 = a1(min(vehicle_tracks.acc_long) < a1 < max(vehicle_tracks.acc_long));
    a2 = a2(min(vehicle_tracks.acc_long) < a2 < max(vehicle_tracks.acc_long));
    
    
    a3 = a1(a1<0);
    a4 = a1(a1>0);
    a5 = a2(a2<0);
    
    min_brake = mean(a3);
    max_accln = max(a4);
    max_brake = min(a5);
    
end
