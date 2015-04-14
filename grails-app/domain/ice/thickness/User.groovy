package ice.thickness

class User {
    String username
    String password
    static hasMany = [measurement: Measurement]

    String toString(){
        "${username}"
    }
    static constraints = {
        username(unique: true)
        password(nullable: false)
    }

}
