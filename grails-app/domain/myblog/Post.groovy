package myblog

class Post {
	String title
	String author
	String content
	Date createdDate
	
	static hasMany = [comment:Comment]
	
    static constraints = {
		title(nullable:true)
		author(nullable:false)
		content(nullable:false, maxSize:1000)
    }
}
