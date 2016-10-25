package org.eclipse.paho.android.sample.components;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.model.LogCtrlMessage;

import java.util.ArrayList;

/**
 * Created by VSKYLINE on 8/31/2016.
 */
public class LogCtrlMessageAdapter extends ArrayAdapter<LogCtrlMessage> {
    private final Context context;
    private final ArrayList<LogCtrlMessage> object;


    public LogCtrlMessageAdapter(Context context, ArrayList<LogCtrlMessage> object){
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
        TextView chanelTextView = (TextView) convertView.findViewById(R.id.logCtrlChanName);
        TextView timeOn1TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOn1);
        TextView timeOff1TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOff1);
        TextView timeOn2TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOn2);
        TextView timeOff2TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOff2);
        TextView timeOn3TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOn3);
        TextView timeOff3TextView = (TextView) convertView.findViewById(R.id.logCtrlTimeOff3);
        TextView messageTextView = (TextView) convertView.findViewById(R.id.logMessageSend);
        TextView timeNowTextView = (TextView) convertView.findViewById(R.id.logCtrlTim);
        LogCtrlMessage msg = getItem(position);
        if(msg!=null){
               // messageTextView.setText(msg.getJsonSend().toString());
            timeOn1TextView.setText(msg.getOnTime1()+"");
            timeOff1TextView.setText(msg.getOffTime1()+"");
            //          TIME1
            timeOn2TextView.setText(msg.getOnTime2()+"");
            timeOff2TextView.setText(msg.getOffTime2()+"");
            // Time2
            timeOn3TextView.setText(msg.getOnTime3()+"");
            timeOff3TextView.setText(msg.getOffTime3()+"");
            // Time3
            chanelTextView.setText(msg.getBotName().toString());
            timeNowTextView.setText(msg.getTimestamp().toString());
        }
      // timeOnTextView.setText(PublishFragment.time1Offh);

        return convertView;
    }

}
