/*
argument0 - string to send
*/
var http_out = "?&iid=" + string(global.playerID) + "&" + argument0;
show_debug_message("HTTPout: " + http_out);
http_post_string(global.serverAddress, http_out);
