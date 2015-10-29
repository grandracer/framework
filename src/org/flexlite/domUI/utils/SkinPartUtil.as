package org.flexlite.domUI.utils
{
    import avmplus.DescribeTypeJSON;

    import corelib.utils.ObjectUtils;

    import flash.utils.Dictionary;
    import flash.utils.describeType;

    import org.flexlite.domUI.components.SkinnableComponent;

    [ExcludeClass]
    public class SkinPartUtil
    {
        private static var skinPartCache:Dictionary = new Dictionary();
        private static var basicTypesMap:Object = ObjectUtils.makeSingleValuedMapping(new <String>['int', 'uint', 'Number', 'String', 'Boolean', 'Object'], true);

        public static function getSkinParts(object:SkinnableComponent):Vector.<String>
        {
            var key:Class = ObjectUtils.getObjectClass(object);
            if (skinPartCache[key] == null)
            {
                var skinParts:Vector.<String> = new Vector.<String>();
                if (DescribeTypeJSON.available)
                {
                    var tdJSON:Object = DescribeTypeJSON.describeType(object, DescribeTypeJSON.INCLUDE_TRAITS | DescribeTypeJSON.INCLUDE_VARIABLES);
                    for each (var variable:Object in tdJSON.traits.variables)
                        if (basicTypesMap[variable.type] == null)
                            skinParts.push(variable.name);
                }
                else
                {
                    var tdXML:XML = describeType(object);
                    for each (var node:XML in tdXML.variable)
                        if (basicTypesMap[node.@type] == null)
                            skinParts.push(node.@name.toString());
                }
                skinPartCache[key] = skinParts;
            }
            return skinPartCache[key];
        }
    }
}
