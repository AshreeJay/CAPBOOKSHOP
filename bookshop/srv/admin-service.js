const cds = require('@sap/cds')

class AdminService extends cds.ApplicationService {
    init() {
        console.log('Initializing AdminService')

        this.after('READ', 'Books', results => {
            if (Array.isArray(results)) {
                results.forEach(book => {
                    if (book && book.title) book.title = book.title.toUpperCase()
                })
            } else if (results && results.title) {
                results.title = results.title.toUpperCase()
            }
        })

        return super.init()
    }
}

module.exports = { AdminService }