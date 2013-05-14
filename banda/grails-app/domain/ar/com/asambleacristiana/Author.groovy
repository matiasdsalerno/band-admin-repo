package ar.com.asambleacristiana

class Author {
	
	String name
	
    static constraints = {
		name: unique:true
    }
	
	@Override
	public String toString() {
		return name;
	}
}
