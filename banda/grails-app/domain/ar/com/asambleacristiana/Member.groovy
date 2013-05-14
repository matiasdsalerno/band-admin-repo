package ar.com.asambleacristiana

class Member {

	String lastName
	String name
	String emailAddress
	Instrument instrument
	
    static constraints = {
		emailAddress(email:true, nullable:true, blank:true)
		lastName(blank:false, nullable:false)
		name(blank:false, nullable:false)
    }
	
	@Override
	public String toString() {
		return name + ' ' + lastName
	}
}
