package org.flexlite.domUI.components
{
    public interface IDisposable
    {
        /**
         * Generic object destructor, should be called when you are sure, that you will never need the object afterwards
         * For making process of big trees disposal less error-prone, this method should be re-enterable (i.e
         * it is safe to call this method several times)
         */
        function dispose():void;
    }
}
