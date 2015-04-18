package cs4760progassign


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['permitAll'])
class BookController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    static final boolean debugIndex = true
    @Secured(['permitAll'])
    def index(){

        // Book.list() gets all Book instances from the database and puts them in a list.
        def bks = Book.listOrderByTitle()

        // println outputs to console
        if(debugIndex){
            println ""
            bks.each{ println it.title+" by "+Author.get(it.authorId).name}
        }

        // Make a list of all books title and authors
        def bkList = []
        for(int i=0; i<bks.size; i++){
            def bkAuthor = [:]
            bkAuthor.put('title', bks[i].title)
            bkAuthor.put('author', Author.get(bks[i].authorId).name)
            bkAuthor.put('cover', bks[i].cover)
            bkList << bkAuthor
        }
        if(debugIndex){
            println " "
            println bkList
        }

        // View expects a Map
        // This a Map to the list of title-author maps
        [bkList: bkList]
    }

    @Secured(['permitAll'])
    def showCover(){
        if(debugCover){
            println " "
            println "In showCover"
            println "params.id: "+params.id
        }
        def coverInstance = Book.get(params.id)
        response.outputStream << coverInstance.cover
        response.outputStream.flush()
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Book.list(params), model: [bookInstanceCount: Book.count()]
    }

    def show(Book bookInstance) {
        respond bookInstance
    }

    def create() {
        respond new Book(params)
    }

    @Transactional
    def save(Book bookInstance) {
        if (bookInstance == null) {
            notFound()
            return
        }

        if (bookInstance.hasErrors()) {
            respond bookInstance.errors, view: 'create'
            return
        }

        bookInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'book.label', default: 'Book'), bookInstance.id])
                redirect bookInstance
            }
            '*' { respond bookInstance, [status: CREATED] }
        }
    }

    def edit(Book bookInstance) {
        respond bookInstance
    }

    @Transactional
    def update(Book bookInstance) {
        if (bookInstance == null) {
            notFound()
            return
        }

        if (bookInstance.hasErrors()) {
            respond bookInstance.errors, view: 'edit'
            return
        }

        bookInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Book.label', default: 'Book'), bookInstance.id])
                redirect bookInstance
            }
            '*' { respond bookInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Book bookInstance) {

        if (bookInstance == null) {
            notFound()
            return
        }

        bookInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Book.label', default: 'Book'), bookInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
