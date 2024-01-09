function humanReadable(seconds) {
  if ( seconds < 0 || seconds > 360000 ) {
    return null;
  }

  var hours = Math.floor( seconds / 3600 );
  seconds -= hours * 3600;
  if ( hours < 10 ) {
    hours = '0' + hours;
  }

  var minutes = Math.floor( seconds / 60 );
  seconds -= minutes * 60;
  if ( minutes < 10 ) {
    minutes = '0' + minutes;
  }

  if ( seconds < 10 ) {
    seconds = '0' + seconds;
  }

  return hours + ':' + minutes + ':' + seconds;
}

console.log( humanReadable( 60 ) ); // 00:01:00
console.log( humanReadable( 45296 ) ); // 12:34:56
console.log( humanReadable( 359999 ) ); // 99:59:59
