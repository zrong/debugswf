package
{
	import flash.display.Sprite;
	import mx.utils.ObjectUtil;
	import net.zengrong.debug.Logger;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	[SWF(width="300", height="300", backgroundColor="#ffffff", frameRate="30")]
	public class Main extends Sprite
	{
		private var sendBtn:Sprite;
		private var obj:Array = ['a:3333', 'b:22222', 'c:55553'];
		public function Main()
		{
			const hPadding:uint = 5;
			sendBtn = new Sprite();
            sendBtn.x = 10;
            sendBtn.y = 10;
            var sendLbl:TextField = new TextField();
            sendLbl.x = 1 + hPadding;
            sendLbl.y = 1;
            sendLbl.selectable = false;
            sendLbl.autoSize = TextFieldAutoSize.LEFT;
            sendLbl.text = "Send";
            sendBtn.addChild(sendLbl);
            sendBtn.graphics.lineStyle(1);
            sendBtn.graphics.beginFill(0xcccccc);
            sendBtn.graphics.drawRoundRect(0, 0, (sendLbl.width + 2 + hPadding + hPadding), (sendLbl.height + 2), 5, 5);
            sendBtn.graphics.endFill();
            addChild(sendBtn);
            sendBtn.addEventListener(MouseEvent.CLICK, sendMessage);
			
		}
		
		private function sendMessage(event:MouseEvent):void {
            Logger.debug(3);
        }				
	}
}