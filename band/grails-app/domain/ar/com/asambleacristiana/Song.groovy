package ar.com.asambleacristiana

class Song {

	String name
	Album album
	String lyrics
	String youtubeCode
	
    static constraints = {
		youtubeCode(nullable:true)
		lyrics(nullable:true, widget:'textarea', size: 1..1500)
    }
	
	@Override
	public String toString() {
		return name;
	}
	
	public String getYoutubeLink() {
		"http://www.youtube.com/watch?v=${youtubeCode}"
	}
}
