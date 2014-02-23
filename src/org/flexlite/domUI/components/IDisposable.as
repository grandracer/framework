package org.flexlite.domUI.components
{
    public interface IDisposable
    {
        /**
         * Generic object destructor, should be called when you are sure, that you will never need the object afterwards
         */
        function dispose():void;
    }
}
