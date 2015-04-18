package cs4760progassign

class HomeController {

    def index() {}

    def showTime() {
        render "The time is ${new Date()}"
    }

    def recentBook () {
        def recent = Book.last();
        render "Most Recent Book is $recent"
    }
}
