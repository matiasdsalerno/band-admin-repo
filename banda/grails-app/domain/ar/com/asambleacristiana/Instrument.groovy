package ar.com.asambleacristiana

class Instrument {

	String name
	
    static constraints = {
    	name(blank:false, nullable:false)
	}
	
	@Override
	public String toString() {
		return name;
	}
}
