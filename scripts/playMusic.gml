if (instance_exists(objMusic))
{
    with (objMusic) instance_destroy();
}

var newSong = instance_create(0, 0, objMusic);
newSong.clip = argument0;
