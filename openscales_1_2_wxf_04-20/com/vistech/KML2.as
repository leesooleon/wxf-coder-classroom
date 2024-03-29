package com.vistech
{
	import flash.events.Event;
	import flash.net.URLLoader;
	
	import mx.controls.Alert;
	
	import org.openscales.core.Trace;
	import org.openscales.core.basetypes.Bounds;
	import org.openscales.core.feature.Feature;
	import org.openscales.core.format.KMLFormat;
	import org.openscales.core.layer.FeatureLayer;
	import org.openscales.core.request.XMLRequest;

	public class KML2 extends FeatureLayer
	{
		private var _url:String="";
		private var _request:XMLRequest=null;
		private var _kmlFormat:KMLFormat=null;
		public var _xml:XML=null;

		public function KML2(name:String, url:String, bounds:Bounds)
		{
			this._url=url;
			this.maxExtent=bounds;

			super(name);
			this._kmlFormat=new KMLFormat();
		}

		override public function destroy(setNewBaseLayer:Boolean=true):void
		{
			if (this._request)
			{
				this._request.destroy();
				this._request=null;
			}
			this.loading=false;
			super.destroy(setNewBaseLayer);
		}

		override public function redraw(fullRedraw:Boolean=true):void
		{
			if (!displayed)
			{
				this.clear();
				return;
			}

			if (!this._request)
			{
				this.loading=true;
				this._request=new XMLRequest(url, onSuccess, onFailure);
				this._request.proxy=this.proxy;
				this._request.security=this.security;
				this._request.send();
			}
			else
			{
				this.clear();
				this.draw();
			}
		}

		public function onSuccess(event:Event):void
		{
			this.loading=false;
			var loader:URLLoader=event.target as URLLoader;

			// To avoid errors if the server is dead
			try
			{
				this._xml=new XML(loader.data);
				if (this.map.baseLayer.projection != null && this.projection != null && this.projection.srsCode != this.map.baseLayer.projection.srsCode)
				{
					this._kmlFormat.externalProj=this.projection;
					this._kmlFormat.internalProj=this.map.baseLayer.projection;
				}
				this._kmlFormat.proxy=this.proxy;
				

				this.drawKML(this._xml);
				this.dispatchEvent(new Event("kmlloaded"));
			}
			catch (error:Error)
			{
				Trace.error(error.message);
			}
		}

		public function drawKML(xml:XML):void
		{
			var features:Array=this._kmlFormat.read(xml) as Array;
			for (var i:int=0; i < features.length; i++)
			{
				var obj:Object=new Object();
				obj.id=xml.Document.Placemark[i].data.gid;
				obj.type=xml.Document.Placemark[i].data.type;
				(features[i] as Feature).attributes=obj;
				this.addFeature(features[i]);
			}
			this.clear();
			this.draw();
		}

		protected function onFailure(event:Event):void
		{
			this.loading=false;
			Trace.error("Error when loading kml " + this._url);
		}

		public function get url():String
		{
			return this._url;
		}

		public function set url(value:String):void
		{
			this._url=value;
		}

		override public function getURL(bounds:Bounds):String
		{
			return this._url;
		}

	}
}