with (objResize) {
    new_width = max(1, window_get_width());
    new_height = max(1, window_get_height());

        
    if (new_width >= new_height)
    {
        scaleFactor = (new_width / 1024) * 2;
    }
    else
    {
        scaleFactor = (new_height / 768) * 2;
    }
    
    /*scaleFactor = 2;
    if (new_width >= 1400 || new_height >= 900) scaleFactor = 3; 
    */


    if (string_pos("menu", string_lower(room_get_name(room))) != 0)
    {
        room_width = new_width;
        room_height = new_height;
        //view_wview[0] = window_get_width();
        //view_hview[0] = window_get_height();
    }
    else
    {
        view_wview[0] = round(new_width / scaleFactor);
        view_hview[0] = round(new_height / scaleFactor);    
        view_wport[0] = new_width;
        view_hport[0] = new_height;
    }
    
    surface_resize(application_surface, new_width, new_height);
    
    window_width = window_get_width();
    window_height = window_get_height();
}
