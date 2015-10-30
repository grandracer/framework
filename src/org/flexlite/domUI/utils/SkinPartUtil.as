package org.flexlite.domUI.utils
{
    import corelib.utils.ObjectUtils;

    import flash.utils.Dictionary;

    import org.flexlite.domUI.components.SkinnableComponent;

    [ExcludeClass]
    public class SkinPartUtil
    {
        private static var skinPartCache:Dictionary = new Dictionary();
        private static var basicTypesMap:Object = ObjectUtils.makeSingleValuedMapping(new <String>['int', 'uint', 'Number', 'String', 'Boolean', 'Object'], true);

        public static function getSkinParts(object:SkinnableComponent):Vector.<String>
        {
            var key:Class = ObjectUtils.getObjectClass(object);
            if (skinPartCache[key] == null) skinPartCache[key] = ObjectUtils.getNonDynamicPublicVariablesNames(object, basicTypesMap);
            return skinPartCache[key];
        }
    }
}
