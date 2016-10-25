package org.eclipse.paho.android.sample.activity;

/**
 * Created by VSKYLINE on 7/22/2016.
 */
public class onChange {
    boolean boo = false;

    public onChange(boolean b){
        boo = b;
    }

    private listener l = null;

    public interface listener{
        public void onChange(boolean b);
    }

    public void setChangeListener(listener mListener){
        l = mListener;
    }

    public void somethingChanged(){
        if(l != null){
            l.onChange(boo);
        }
    }


}