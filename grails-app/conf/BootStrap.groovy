import cs4760progassign.Author
import cs4760progassign.Book
import cs4760progassign.UserRole
import cs4760progassign.Role
import cs4760progassign.UserOld

class BootStrap {

    def init = { servletContext ->
        new Author(name:"Stephen King")
                .addToBooks(new Book(title:"The Stand", publishYear:1978))
                .addToBooks(new Book(title:"The Shining", publishYear:1977))
                .save()

        new Author(name:"Mark Twain")
                .addToBooks(new Book(title:"Tom Sawyer", publishYear:1876))
                .addToBooks(new Book(title:"Huckelberry Finn", publishYear:1884))
                .save()

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testAdmin = new UserOld(username: 'admin', password: 'password')
        testAdmin.save(flush: true)

        def testUser = new UserOld(username: 'user', password: 'password')
        testUser.save(flush: true)

        UserRole.create testAdmin, adminRole, true
        UserRole.create testUser, userRole, true

    }
    def destroy = {
    }
}
