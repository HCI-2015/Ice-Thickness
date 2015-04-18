package cs4760progassign



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class AuthorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    static final boolean debugIndex = true
    def index(){

        // Book.list() gets all Book instances from the database and puts them in a list.
        def bks = Author.listOrderByName()

        // println outputs to console

        // Make a list of all books title and authors
        def bkList = []
        for(int i=0; i<bks.size; i++){
            def bkAuthor = [:]
            bkAuthor.put('name', bks[i].name)
           // bkAuthor.put('books', Book.get(bks[i].title).name)
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
    @Secured(['ROLE_ADMIN'])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Author.list(params), model:[authorInstanceCount: Author.count()]
    }
    @Secured(['ROLE_ADMIN'])
    def show(Author authorInstance) {
        respond authorInstance
    }
    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Author(params)
    }
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Author authorInstance) {
        if (authorInstance == null) {
            notFound()
            return
        }

        if (authorInstance.hasErrors()) {
            respond authorInstance.errors, view:'create'
            return
        }

        authorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'author.label', default: 'Author'), authorInstance.id])
                redirect authorInstance
            }
            '*' { respond authorInstance, [status: CREATED] }
        }
    }
    @Secured(['ROLE_ADMIN'])
    def edit(Author authorInstance) {
        respond authorInstance
    }

    @Transactional
    @Secured(['ROLE_ADMIN'])
    def update(Author authorInstance) {
        if (authorInstance == null) {
            notFound()
            return
        }

        if (authorInstance.hasErrors()) {
            respond authorInstance.errors, view:'edit'
            return
        }

        authorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Author.label', default: 'Author'), authorInstance.id])
                redirect authorInstance
            }
            '*'{ respond authorInstance, [status: OK] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN'])
    def delete(Author authorInstance) {

        if (authorInstance == null) {
            notFound()
            return
        }

        authorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Author.label', default: 'Author'), authorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
    @Secured(['ROLE_ADMIN'])
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'author.label', default: 'Author'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
