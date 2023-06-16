import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Amila",
    id: "Amila-0e3833fe-35bf-496b-8efc-e64b54504069"
}
service / on new http:Listener(9090) {

    @display {
        label: "Joseph",
        id: "Joseph-a1a266bd-2620-410d-9576-6388072907b5"
    }
    http:Client josephClient;

    function init() returns error? {
        self.josephClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
