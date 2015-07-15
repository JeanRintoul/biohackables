package org.biohackables

class Article {
	
	static hasMany = [tags: Tag, videos: Video]
	
	String title
	String body

    static constraints = {
    }
	
	static mapping = {
		body type: "text"
	}
}
