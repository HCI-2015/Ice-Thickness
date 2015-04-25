package ice.thickness

import grails.converters.JSON

class MapController {

    def index() {
        def measurement = Measurement.list()
        def list = []
        for (int i=0;i<measurement.size();i++){
            def location = [:]
            location.put("latitude",measurement[i].locationA)
            location.put("longtitude",measurement[i].locationL)

            def thick = [:]
            thick.put("thick",measurement[i].measurementData)
            thick.put("location",location)


            list << thick

        }
        def listJ = list as JSON
        [measurement :list]

    }
}
