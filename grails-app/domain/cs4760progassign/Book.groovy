package cs4760progassign

class Book {

    String title
    static belongsTo = [author:Author]

    byte[] cover

    static constraints = {
        title()
        cover(nullable: true, maxSize: 1024*1024*2 )
    }
    String toString(){
        "${title}"
    }
}
