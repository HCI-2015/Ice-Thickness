/**
 * Created by Mitch on 4/15/2015.
 */
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