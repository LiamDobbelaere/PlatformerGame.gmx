var tmp_buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(tmp_buffer, buffer_seek_start, 0);
buffer_write(tmp_buffer , buffer_string, "key");
buffer_write(tmp_buffer , buffer_u8, argument0);
buffer_write(tmp_buffer , buffer_bool, argument1);
return tmp_buffer;
