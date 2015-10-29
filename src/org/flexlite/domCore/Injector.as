package org.flexlite.domCore
{
    import corelib.utils.ObjectUtils;
    import corelib.utils.StringUtils;

    import flash.utils.Dictionary;
    import flash.utils.getQualifiedClassName;

    public class Injector
    {
        private static var mapClassDic:Dictionary = new Dictionary();
        private static var mapValueDic:Dictionary = new Dictionary();

        private static var __getKey$classNames:Dictionary = new Dictionary();
        private static function getKey(object:Object, suffix:String):String
        {
            var key:String = null;
            if (object is String) key = object as String;
            if (key == null)
            {
                var cls:Class = null;
                if (object is Class) cls = Class(object);
                if (cls == null) cls = ObjectUtils.getObjectClass(object);
                if (__getKey$classNames[cls] == null) __getKey$classNames[cls] = getQualifiedClassName(object);
                key = __getKey$classNames[cls];
            }
            if (suffix != null) key += '#' + suffix;
            return key;
        }

        public static function mapClass(whenAskedFor:Object, instantiateClass:Class, suffix:String = null):void
        {
            mapClassDic[getKey(whenAskedFor, suffix)] = instantiateClass;
        }

        public static function mapValue(whenAskedFor:Object, useValue:Object, suffix:String = null):void
        {
            mapValueDic[getKey(whenAskedFor, suffix)] = useValue;
        }

        public static function hasMapRule(whenAskedFor:Object, suffix:String = null):Boolean
        {
            var key:String = getKey(whenAskedFor, suffix);
            return mapValueDic[key] || mapClassDic[key];
        }

        public static function getInstance(object:Object, suffix:String = null):*
        {
            var key:String = getKey(object, suffix);
            if (mapValueDic[key] == null)
            {
                var cls:Class = mapClassDic[key] as Class;
                if (cls != null)
                {
                    mapValueDic[key] = new cls();
                    delete mapClassDic[key];
                }
            }
            var result:Object = mapValueDic[key];
            if (result == null) throw new Error(StringUtils.substitute('Unable to get instance of "{0}"', object));
            return result;
        }
    }
}
