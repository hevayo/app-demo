import ballerina/http;

# A service representing a network-accessible API
# 
# 
# bound to port `9090`.
@display {
    label: "Shipping",
    id: "Shipping-fddd3996-a456-4c54-969c-999393078d6f"
}
service / on new http:Listener(9090) {

    @display {
        label: "Tracking",
        id: "Tracking-51b3094b-2800-4c2e-b4a5-58dd0c7a6ba1"
    }
    http:Client trackingClient;

    function init() returns error? {
        self.trackingClient = check new ("");
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
