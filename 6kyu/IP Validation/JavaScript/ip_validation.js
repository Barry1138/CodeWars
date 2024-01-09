function isValidIP(str) {
return /^\d+.\d+.\d+.\d+$/.test(str) &&
str.split('.').every(v => !(v[0] === '0' && v.length > 1) && +v < 256 ) &&
str.split('.').length === 4;
}
