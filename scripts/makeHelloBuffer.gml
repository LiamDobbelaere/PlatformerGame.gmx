var tmp_buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(tmp_buffer, buffer_seek_start, 0);
buffer_write(tmp_buffer , buffer_string, "hello");
return tmp_buffer;
