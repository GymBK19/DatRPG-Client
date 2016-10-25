/*
argument0 - string to send
*/
http_post_string(global.serverAddress,"?instanceID=" + string(global.instanceID) + "&" + argument0);
