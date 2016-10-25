package org.eclipse.paho.android.sample.components;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.model.wifiInforMessage;

import java.util.ArrayList;

/**
 * Created by VSKYLINE on 8/31/2016.
 */
public class wifiListAdapter extends ArrayAdapter<wifiInforMessage> {
    private final Context context;
    private final ArrayList<wifiInforMessage> object;


    public wifiListAdapter(Context context, ArrayList<wifiInforMessage> object){
        super(context,0,object );
        this.context = context;
        // this.msg = ;
        this.object = object;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent){
        if(convertView == null){
            LayoutInflater inflater =   LayoutInflater.from(getContext());
            convertView = inflater.inflate(R.layout.ctrl_list_item, parent, false) ;
        }
        // LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        //View rowView = inflater.inflate(R.layout.ctrl_list_item, parent, false);
        TextView SSIDView = (TextView) convertView.findViewById(R.id.ssidView);
        TextView RSSIView = (TextView) convertView.findViewById(R.id.rssiView);
        TextView numbericView = (TextView) convertView.findViewById(R.id.numView);

        wifiInforMessage msg = getItem(position);
        if(msg!=null){
            // messageTextView.setText(msg.getJsonSend().toString());
            SSIDView.setText(msg.getSSID()+"");
            RSSIView.setText(msg.getRSSI()+"");
            numbericView.setText(msg.getNumberic());

        }
        // timeOnTextView.setText(PublishFragment.time1Offh);

        return convertView;
    }

}
