package myblog

class Comment {
	String author
	String content
	Date dateCreated
	
	static belongsTo = [post:Post]
	
    static constraints = {
		author(nullable:false)
		content(nullable:false)
    }
}
