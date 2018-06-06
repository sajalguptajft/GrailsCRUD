package grailscrud

class Contact {

    String name
    int phoneNumber

    static constraints = {
        name nullable: false
        phoneNumber nullable: false
    }

}
