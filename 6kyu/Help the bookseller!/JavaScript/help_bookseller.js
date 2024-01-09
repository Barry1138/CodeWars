function stockList(listOfArt, listOfCat){
  let totalAmountOfBooks = 0
  const cats = listOfCat.map(c => {
    const stockListWithCat = listOfArt.filter(sl => sl.indexOf(c) === 0)
    const booksInStockList = stockListWithCat.map(sl => parseInt(sl.split(' ')[1]))
    const amountOfBooks = booksInStockList.reduce((acc, curr) => {
      return acc + curr
    }, 0)
    totalAmountOfBooks += amountOfBooks
    return `(${c} : ${amountOfBooks})`
  })
  if (totalAmountOfBooks === 0) return ''
  return cats.join(' - ')
}
