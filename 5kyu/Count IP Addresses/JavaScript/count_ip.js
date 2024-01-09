const ipsBetween = (ip1, ip2) => {
  let diff = 0;
  const aIp1 = ip1.split(".");
  const aIp2 = ip2.split(".");

  // check that the IPs are well formed
  if (aIp1.length !== 4 || aIp2.length !== 4) {
    return "Invalid IPs: incorrect format";
  }

  for (x = 0; x < 4; x++) {
    // check that all the parts are valid (numeric and 0-255)
    if (
      isNaN(aIp1[x]) || isNaN(aIp2[x]) 
      || aIp1[x] < 0 || aIp1[x] > 255
      || aIp2[x] < 0 || aIp2[x] > 255
    ) {
      return "Invalid IPs: incorrect values"
    }
    diff += (aIp1[x] - aIp2[x]) * (256 ** (3-x));
  }
  return Math.abs(diff);
}
