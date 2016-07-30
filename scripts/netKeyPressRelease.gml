if (keyboard_check_pressed(argument0))
{
    var t_buffer = makeKeyBuffer(argument0, true);
    network_send_udp(client_udp, remote_ip, server_port, t_buffer, buffer_tell(t_buffer));
    buffer_delete(t_buffer);
}

if (keyboard_check_released(argument0))
{
    var t_buffer = makeKeyBuffer(argument0, false);
    network_send_udp(client_udp, remote_ip, server_port, t_buffer, buffer_tell(t_buffer));
    buffer_delete(t_buffer);
}
