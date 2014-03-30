package flash.utils;


interface IDataInput {
	
	
	public var bytesAvailable (get, null):Int;
	public var endian (get, set):String;
	
	public function readBoolean ():Bool;
	public function readByte ():Int;
	public function readBytes (data:ByteArray, offset:Int = 0, length:Int = 0):Void;
	#if (haxe_ver <= 3.101)
	public function readDouble ():Float;
	public function readFloat ():Float;
	#else
	public function readDouble (pos:Int):Float;
	public function readFloat (pos:Int):Float;
	#end
	public function readInt ():Int;
	public function readShort ():Int;
	public function readUnsignedByte ():Int;
	public function readUnsignedInt ():Int;
	public function readUnsignedShort ():Int;
	public function readUTF ():String;
	public function readUTFBytes (length:Int):String;
	
	
}
