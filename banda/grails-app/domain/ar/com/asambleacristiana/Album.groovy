package ar.com.asambleacristiana

class Album {

	String name
	Author author
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		return name;
	}
}
