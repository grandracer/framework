package org.flexlite.domUI.core
{
    public interface IScrollable
    {
        function get horizontalScrollPosition():Number;
        function get verticalScrollPosition():Number;
        function set horizontalScrollPosition(value:Number):void;
        function set verticalScrollPosition(value:Number):void;
    }
}
