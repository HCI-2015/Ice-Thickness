package ice.thickness


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserprofileController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def measurements = Measurement.list()
        [profiles: measurements]
    }
    def form()
    {

    }
    def save() {
        def profiles = new Userprofile(params)
        profiles.save()
        redirect(action: 'index')
    }
    def delete(Long id)
    {
        def profiles = Userprofile.get(id)
        profiles.delete(flush: true)
        redirect(action: 'index')
    }
}
