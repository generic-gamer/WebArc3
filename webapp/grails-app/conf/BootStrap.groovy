import org.webapp.*

class BootStrap {

    def init = { servletContext ->
 if (!Status.count()) {
new Status(code: "applied", description: "Candidate applied for placement").save(failOnError: true)
new Status(code: "not invited for interview", description: "candidate not invited for interview").save(failOnError: true)
new Status(code: "invited for interview", description: "candidate invited for interview").save(failOnError: true)
new Status(code: "not offered", description: "Candidate not offered placement").save(failOnError: true)
new Status(code: "offered", description: "Offer made").save(failOnError: true)
new Status(code: "not accepted", description: "Offer declined").save(failOnError: true)
new Status(code: "accepted", description: "Offer accepted").save(failOnError: true)          
        }
    }
    def destroy = {
    }
}
