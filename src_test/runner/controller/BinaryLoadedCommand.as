package runner.controller 
{
	import runner.model.ConsoleModel;

	import org.assetloader.events.BinaryAssetEvent;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Matan Uberstein
	 */
	public class BinaryLoadedCommand extends Command 
	{

		[Inject]
		public var consoleModel : ConsoleModel;

		[Inject]
		public var event : BinaryAssetEvent;

		override public function execute() : void 
		{
			consoleModel.append(event.id + ": LOADED");			consoleModel.append("ByteArray length: " + event.byteArray.length);			consoleModel.append("---------------------------------------------------------------------------------------------------------");		}
	}
}
