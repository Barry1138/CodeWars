function toCamelCase($str){
    return preg_replace_callback('/(\-|\_)([a-z])/i', function ($match) {
        return strtoupper($match[2]);
    }, $str);
}
