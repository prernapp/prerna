var expect    = require("chai").expect;
var request = require("request");

//first login success

describe("logIn verification ", function() {
    var url = "http://localhost:3005/loginVerify?userId=mukesh123&password=mukesh123&tableName=registration";
    it("it checks the aunthentication", function(done) {
        request(url, function(error, response, body) {
            expect(body).to.equal("success");
            done();
        });
    });
});

//failer case of rajesh
describe("logIn verification ", function() {
    var url = "http://localhost:3005/loginVerify?userId=mukes3&password=mukesh12&tableName=registration";
    it("it checks the aunthentication", function(done) {
        request(url, function(error, response, body) {
            expect(body).to.equal("success");
            done();
        });
    });
});




