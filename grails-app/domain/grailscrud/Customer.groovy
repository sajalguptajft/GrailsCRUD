package grailscrud

class Customer {

    String name
    String email
    String tokenid

    static constraints = {
        name nullable: false
        email nullable: false
        tokenid nullable: false
    }
}
