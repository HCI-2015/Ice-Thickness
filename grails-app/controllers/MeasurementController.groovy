import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MeasurementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Measurement.list(params), model: [measurementInstanceCount: Measurement.count()]
    }

    def show(Measurement measurementInstance) {
        respond measurementInstance
    }

    def create() {
        respond new Measurement(params)
    }

    @Transactional
    def save(Measurement measurementInstance) {
        def today = new Date()
        measurementInstance.setUpdateTime = today
        if (measurementInstance == null) {
            notFound()
            return
        }

        if (measurementInstance.hasErrors()) {
            respond measurementInstance.errors, view: 'create'
            return
        }

        measurementInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'measurement.label', default: 'Measurement'), measurementInstance.id])
                redirect measurementInstance
            }
            '*' { respond measurementInstance, [status: CREATED] }
        }
    }

    def edit(Measurement measurementInstance) {
        respond measurementInstance
    }

    @Transactional
    def update(Measurement measurementInstance) {
        if (measurementInstance == null) {
            notFound()
            return
        }

        if (measurementInstance.hasErrors()) {
            respond measurementInstance.errors, view: 'edit'
            return
        }

        measurementInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Measurement.label', default: 'Measurement'), measurementInstance.id])
                redirect measurementInstance
            }
            '*' { respond measurementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Measurement measurementInstance) {

        if (measurementInstance == null) {
            notFound()
            return
        }

        measurementInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Measurement.label', default: 'Measurement'), measurementInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'measurement.label', default: 'Measurement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
