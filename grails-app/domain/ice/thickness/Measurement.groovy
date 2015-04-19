package ice.thickness

class Measurement {
    String measuringDevice
    String measurementData
    String accuracy
    String estimatedCovered
    String texture
    String additionInfor
    double locationA
    double locationL
    String updateTime
    //String color

    static belongsTo = User
    User username

    static constraints = {
        measuringDevice(nullable: false )
        measurementData(nullable: false)
        estimatedCovered(nullable: false)
        texture(nullable: false)
        accuracy(nullable: false)
        additionInfor(nullable: true)
        locationA(nullable: false)
        locationL(nullable: false)
        updateTime(nullable: true)
        username(nullable: true)
//need to add constrain value of color
    }
    String toString(){}
}

