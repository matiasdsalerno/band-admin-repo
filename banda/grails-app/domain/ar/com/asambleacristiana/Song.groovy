package ar.com.asambleacristiana

class Song {

	String name
	Album album
	String lyrics
	String youtubeLink
	
    static constraints = {
		youtubeLink(url:true, nullable:true)
		lyrics(nullable:true)
    }
	
	@Override
	public String toString() {
		return name;
	}
}
