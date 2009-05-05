package services
{
	import models.Tweet;
	
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	public class BenchService
	{
		public function newRemoteObject(destination:String):RemoteObject {
			var ro:RemoteObject = new RemoteObject(destination);
			ro.addEventListener(FaultEvent.FAULT, onFault);
			return ro;
		}
		public function onFault(event:FaultEvent):void {
			Alert.show(event.toString())
		}
		public function logTweet(tweet:Tweet,resultHandler:Function):void {
			var ro:RemoteObject = this.newRemoteObject("Glare.BenchService")
			ro.logTweet.addEventListener(ResultEvent.RESULT, resultHandler)
			ro.logTweet(tweet)			
		}
		public function throwException(resultHandler:Function):void {
			var ro:RemoteObject = this.newRemoteObject("Glare.BenchService")
			ro.throwException.addEventListener(ResultEvent.RESULT, resultHandler)
			ro.throwException()		
		}	
	}
}