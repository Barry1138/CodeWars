function playPass(s, n) {
   let res = s.split``.map((a, i) => {
     if (/\d/.test(a)) {
       return 9 - a;
     } else if (/\w/.test(a)) {
       let res = a.charCodeAt(0) + n;
       if (res > 90) {
         res -= 26;
       }
       res = String.fromCharCode(res);
       if (i % 2) {
         return res.toLowerCase();
       } else {
         return res;
       }
     } else {
       return a;
     }
   });
  return res.reverse().join``;
}
