/**
 * Created with IntelliJ IDEA.
 * User: Roman Kharitonov
 * Date: 27.07.2015
 * Time: 15:47
 */
package org.flexlite.domUI.managers
{
    import flash.events.IEventDispatcher;

    public interface ILayoutManager extends IEventDispatcher
    {
        function invalidateProperties(client:ILayoutManagerClient):void
        function invalidateSize(client:ILayoutManagerClient):void
        function invalidateDisplayList(client:ILayoutManagerClient):void
        function validateClient(client:ILayoutManagerClient, skipDisplayList:Boolean):void
    }
}
