# custom functions

formatDate = (date) -> date.toISOString().slice(0, 10)

module.exports = 
  formatDate: formatDate