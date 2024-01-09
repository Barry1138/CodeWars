function toTable(data, headers=false, index=false) {
  const h = !headers ? "" : "<thead>" + data.slice(0,1).map(e=>`<tr>${!index?"":"<th></th>"}${e.map(s=>"<th>"+s+"</th>").join("")}</tr>`).join("") + "</thead>"
  const r = "<tbody>" + data.slice(headers).map((e,i)=>`<tr>${!index?"":"<td>" + (i+1) + "</td>"}${e.map(s=>"<td>"+(s==null?"":s)+"</td>").join("")}</tr>`).join("") + "</tbody>"
  return `<table>${h}${r}</table>`
}
