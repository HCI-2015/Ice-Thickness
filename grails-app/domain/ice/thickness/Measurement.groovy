package ice.thickness

class Measurement {
    String measurementID
    String measuringDevice
    String photo
    String measurementData
    String accuracy
    String estimatedCovered
    String texture
    String additionInfor
    String location
    String updateTime
    String color

    static belongsTo = User
    User username

    static constraints = {
        measuringDevice(nullable: false )
        photo(nullable: false, url: true)
        measurementData(nullable: false)
        estimatedCovered(nullable: false)
        texture(nullable: false)
        accuracy(nullable: false)
        additionInfor(nullable: false)
        location(nullable: false)
        updateTime(nullable: false)
//need to add constrain value of color
    }
    String toString(){
        "${measurementID}"
    }
}

