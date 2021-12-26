// +-------------------------------------------------------------------------+
// | Sections                                                                |
// |                                                                         |
// | Date:    11 mars 2021                                                   |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/5da1df6d8b0f6c0026e6d58d         |
// +-------------------------------------------------------------------------+

function c(k) {
    let n = Math.sqrt(k), results = 1
    if (Math.floor(n) !== n) return 0
    for (let i = 2; i <= n; i++) {
      if (n % i !== 0) continue
      let count = 0
      while(n % i === 0) {
        n /= i
        ++count
      }
      results *= ((count-1)*3)+4
    }
  return results
}
