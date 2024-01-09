function race(v1, v2, g) {
  if (v1 >= v2) return null;
    let arr = [];
    let totalSec = Math.trunc( ( g / (v2 - v1)) * 3600); //12109
    let hour = Math.trunc( totalSec / 3600 );   //3
    let min = Math.trunc((totalSec - hour * 3600) / 60);  //21
    let sec = (totalSec - hour * 3600) - (min * 60);
      arr.push(hour, min, sec);
      return arr;
}
