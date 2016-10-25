/*
Splits string by prefix, optionally with maximum entries
argument0 - string to split
argument1 - split character
(argument2) - optional, maximum split number
*/
var tmp_str_buffer, returnArray, arrayIndex, i;
tmp_str_buffer="";
returnArray[0] = "";
arrayIndex = 0;
for(i = 1; i <= string_length(argument0); i++){
    if(string_char_at(argument0, i) == argument1){
        returnArray[arrayIndex] = tmp_str_buffer;
        tmp_str_buffer = "";
        arrayIndex++;
        if(argument_count > 2){
            if(arrayIndex >= argument[2])
                arrayIndex--;
                returnArray[arrayIndex] += argument1;
        }
    } else tmp_str_buffer += string_char_at(argument0, i);
}
returnArray[arrayIndex] = tmp_str_buffer;

return returnArray;
