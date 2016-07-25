/// Set the resolution wanted for display, or get value from device
var displayWidth = global.displayWidth; ///display_get_width();
var displayHeight = global.displayHeight; ///display_get_height();

/// Set the size of GUI
display_set_gui_size(displayWidth, displayHeight);

/// Set the size of the game window
window_set_size(displayWidth, displayHeight);

/// Set the resolution the game is programmed for
var baseWidth = 1280;
var baseHeight = 720;

/// Determine aspect ratio
var aspect = baseWidth/baseHeight;

/// Work out the adjusted height and width
if (displayWidth >= displayHeight)
{
    var height = min(baseHeight, displayHeight);
    var width = height * aspect;
}

/// Resize the application surface to adjusted values
surface_resize(application_surface, width, height);
