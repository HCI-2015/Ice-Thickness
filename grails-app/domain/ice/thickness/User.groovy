package ice.thickness

class User {
    String username
    String password
    String profilePicture
    String recentActivities

  //  static hasMany = [measurement: Measurement]

    String toString(){
        "${username}"
    }
    static constraints = {
        username(unique: true)
        password(nullable: false)
        recentActivities(nullable: false)
        profilePicture(nullable: false, url: true)
    }

}
