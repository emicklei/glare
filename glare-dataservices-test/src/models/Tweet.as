package models
{
	[RemoteClass(alias="Glare.Tweet")]
	public class Tweet
	{
		// order of attributes makes no difference
		public var when:Date;
		public var text:String;		
		
		public function Tweet(what:String) {
			this.text = what
			this.when = new Date()
		}
		
	}
}