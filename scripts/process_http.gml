///Process entered data
var http_resp, splitedString;

http_resp = ds_map_find_value(async_load, "result");
if(is_undefined(http_resp))
    return false;

var http_resp, iid;
http_resp = string_delete(http_resp, string_length(http_resp) - 1, 2);

if(http_resp == " ")
    return false;

show_debug_message("SHTTP: '" + http_resp+"'")

if(string_startsWith(http_resp, "yourInstanceID")){
 iid = string_split(http_resp, "=");
 global.instanceID = iid[1];
 show_debug_message("Got new instance id: " + string(global.instanceID))
} else if (http_resp == "quit"){
    show_message("Server is shutting down");
}

