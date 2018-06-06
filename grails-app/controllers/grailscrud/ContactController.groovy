package grailscrud

import com.stripe.Stripe
import com.stripe.model.Customer

class ContactController {

    def index() {
        redirect action: "list"
    }

    def create(){ }

    def save() {
        def contact = new Contact(params)
        if(contact.save(flush: true)){
            redirect action: "show", id: contact.id
        }
        else {
            redirect action: "list"
        }
    }

    def edit(){
        def contact = Contact.get(params.id)
        [contact: contact]
    }

    def update(){
        def contact = Contact.get(params.id)
        contact.properties = params
        contact.save flush: true, failOnError: true
        redirect action: "show", id: params.id
    }

    def show(){
        def contact = Contact.get(params.id)
        [contact: contact]
    }

    def list(){
        def contacts = Contact.list()
        [contacts: contacts]
    }

    def delete(){
        def contact = Contact.get(params.id)
        contact.delete flush: true, failOnError: true
        redirect action: "list"
    }

    def stripetest(){

    }

    def charge(){
println(params)
        Stripe.apiKey = "sk_test_aRkw0dSQ3ZAcBRgtoXzaBhXv";
        Map customerparams = new HashMap();
        customerparams.put("description", "Test Customer")
        customerparams.put("source", params.stripeToken)
        Customer customer = Customer.create(customerparams);
println(customer)
    }


}
