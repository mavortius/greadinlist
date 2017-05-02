package br.com.mavortius

import grails.transaction.Transactional

class ReadingListController {

    def index() {
        respond Book.list(params), model: [book: new Book()]
    }

    @Transactional
    save(Book book) {
        book.reader = 'Marcelo'
        book.save flush: true
        redirect(action: 'index')
    }
}
