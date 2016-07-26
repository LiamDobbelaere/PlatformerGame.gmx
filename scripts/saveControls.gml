if !instance_exists(objKeyController)
{
    ini_open("settings.ini");
    
    ini_write_real("controls", "up", global.key_up);
    ini_write_real("controls", "left", global.key_left);
    ini_write_real("controls", "right", global.key_right);
    ini_write_real("controls", "down", global.key_down);
    ini_write_real("controls", "kick", global.key_kick);
    ini_write_real("controls", "switch", global.key_switch);
    ini_close();
}
