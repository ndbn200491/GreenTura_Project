package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.components.LogCtrlMessageAdapter;
import org.eclipse.paho.android.sample.internal.Connections;
import org.eclipse.paho.android.sample.model.LogCtrlMessage;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map;


public class PublishFragment extends Fragment {

    Connection connection;
    public static JSONObject jsonObject;
    int selectedQos = 0;
    boolean retainValue = false;
    String topic = "ndbn200491_pub";
    String message = "Hello world";
    public static int time1Onh=0,time2Onh=0, time3Onh=0, time1Onm= 0, time2Onm =0 , time3Onm = 0;
    public static int time1Offh, time1Offm, time2Offh, time2Offm, time3Offh, time3Offm;
    public int ctrlBot1, ctrlBot2, ctrlBot3, manualCtrlEn;
    public int autoCtrlSw, manCtrlSw, ctrlMode;
    public int checkTime1 = 0, checkTime2 = 0, checkTim3 = 0;
    public static int selectBot1, selectBot2, selectBot3;
    public String espServer = "http://192.168.4.1";
    public int time1On, time2On,time3On, time1Off, time2Off, time3Off;
    // public ArrayList<LogCtrlMessageAdapter> msgSend ;
     public LogCtrlMessageAdapter logCtrlMessageAdapter;
    public static ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();
    //public ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();






    public PublishFragment() {
        // Required empty public constructor
    }
    @Override
    public void onCreate(Bundle savedInstanceState) {



        super.onCreate(savedInstanceState);
        Map<String, Connection> connections = Connections.getInstance(this.getActivity())
                .getConnections();
        connection = connections.get(this.getArguments().getString(ActivityConstants.CONNECTION_KEY));

        System.out.println("FRAGMENT CONNECTION: " + this.getArguments().getString(ActivityConstants.CONNECTION_KEY));
        System.out.println("NAME:" + connection.getId());


    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        final View rootView = inflater.inflate(R.layout.fragment_publish, container, false);
        EditText time1On_h = (EditText)rootView.findViewById(R.id.time1On_h) ;
        EditText time1On_m =(EditText) rootView.findViewById(R.id.time1On_m);
        EditText time1Off_h = (EditText)rootView.findViewById(R.id.time1Off_h) ;
        EditText time1Off_m =(EditText) rootView.findViewById(R.id.time1Off_m);

        EditText time2On_h = (EditText) rootView.findViewById(R.id.time2On_h);
        EditText time2On_m = (EditText) rootView.findViewById(R.id.time2On_m);
        EditText time2Off_h = (EditText) rootView.findViewById(R.id.time2Off_h);
        EditText time2Off_m = (EditText) rootView.findViewById(R.id.time2Off_m);

        EditText time3On_h = (EditText) rootView.findViewById(R.id.time3On_h);
        EditText time3On_m = (EditText) rootView.findViewById(R.id.time3On_m);
        EditText time3Off_h = (EditText) rootView.findViewById(R.id.time3Off_h);
        EditText time3Off_m = (EditText) rootView.findViewById(R.id.time3Off_m);
        Switch CtrlBot1 = (Switch) rootView.findViewById(R.id.ctrlBot1);
        Switch CtrlBot2 = (Switch) rootView.findViewById(R.id.ctrlBot2);
        Switch CtrlBot3 = (Switch) rootView.findViewById(R.id.ctrlBot3);
       // Switch ManualCtrlEn = (Switch) rootView.findViewById(R.id.switch_manual_control);
        Switch autoCtrl = (Switch) rootView.findViewById(R.id.switch_auto_control);
        Switch manCtrl  = (Switch) rootView.findViewById(R.id.switch_manual_control);
        final CheckBox checkBoxTime1 = (CheckBox) rootView.findViewById(R.id.checkBoxTime1);
        final CheckBox checkBoxTime2 = (CheckBox) rootView.findViewById(R.id.checkBoxTime2);
        final CheckBox checkBoxTime3 = (CheckBox) rootView.findViewById(R.id.checkBoxTime3);
        // Select the Timer for set time

        final CheckBox checkBoxSelectBot1 = ( CheckBox) rootView.findViewById(R.id.selectBot1);
        final CheckBox checkBoxSelectBot2 = (CheckBox) rootView.findViewById(R.id.selectBot2);
        final CheckBox checkBoxSelectBot3 = (CheckBox) rootView.findViewById(R.id.selectBot3);

        // bot status
        final TextView bot1SttView = (TextView) rootView.findViewById(R.id.bot1Stt);
        final TextView bot2SttView = (TextView) rootView.findViewById(R.id.bot2Stt);
        final TextView bot3SttView = (TextView) rootView.findViewById(R.id.bot3Stt);
        Button saveBtn = (Button) rootView.findViewById(R.id.publish_button);
        Button logViewBtn = (Button) rootView.findViewById(R.id.logCtrlViewBtn);
        if(SubscriptionFragment.bot1Stt == 1 ){
            bot1SttView.setText("On");
            bot1SttView.setTextColor(Color.parseColor("#006633"));
            //bot1SttView.setBackgroundColor();
        }else{
            bot1SttView.setText("Off");
            bot1SttView.setTextColor(Color.parseColor("#cc0000"));
        }

        if(SubscriptionFragment.bot2Stt == 1 ){
            bot2SttView.setText("On");
            bot2SttView.setTextColor(Color.parseColor("#006633"));
        }else{
            bot2SttView.setText("Off");
            bot2SttView.setTextColor(Color.parseColor("#cc0000"));
        }

        if(SubscriptionFragment.bot3Stt == 1 ){
            bot3SttView.setText("On");
            bot3SttView.setTextColor(Color.parseColor("#006633"));
        }else{
            bot3SttView.setText("Off");
            bot3SttView.setTextColor(Color.parseColor("#cc0000"));
        }


        jsonObject = new JSONObject();
        time1On_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable){
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time1Onh = 60*dbl;
                        checkBoxTime1.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime1.setChecked(false);
                    }
                }else{
                    time1Onh =0;
                }

            }
        });
        time1On_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;

                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time1Onm = dbl;
                        checkBoxTime1.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime1.setChecked(false);
                    }
                }else{
                    time1Onm =0;
                }
            }
        });

        time2On_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;


                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time2Onh = 60*dbl;
                        checkBoxTime2.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime2.setChecked(false);
                    }
                }else{
                    time2Onh = 0;
                }
            }
        });
        time2On_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;



                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time2Onm = dbl;
                        checkBoxTime2.setChecked(true);

                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime2.setChecked(false);
                    }
                }else{
                    time2Onm =0;
                }
            }
        });
        time3On_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {


            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {

                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=23 && dbl >=0) {
                        time3Onh = 60*dbl;
                        checkBoxTime3.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime3.setChecked(false);
                    }
                }else{
                    time3Onh =0;
                }

            }
        });
        time3On_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {

                /*if (myString != null && !myString.equals("")) {
                    myDouble = Double.valueOf(myString);
                } else {
                    myDouble = 0;
                }*/

                String strEdit =editable.toString();
                 int dbl ;


                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time3Onm = dbl;
                        checkBoxTime3.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime3.setChecked(false);
                    }
                }else{
                    time3Onm +=0;
                }


            }
        });



        // controller off


        // Timer 1*******************************************************
        time1Off_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time1Offh = 60*dbl;
                        checkBoxTime1.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime1.setChecked(false);
                    }
                }else{
                    time1Offh =0;
                }

            }
        });
        time1Off_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time1Offm = dbl;
                        checkBoxTime1.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime1.setChecked(false);
                    }
                }else{
                    time1Offm =0;
                }
            }
        });
        // Time1_h end


        time2Off_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time2Offh = 60*dbl;
                        checkBoxTime2.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime2.setChecked(false);
                    }
                }else{
                    time2Offh =0;
                }


            }
        });


        time2Off_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time2Offm = dbl;
                        checkBoxTime2.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime2.setChecked(false);
                    }
                }else{
                    time2Offm =0;
                }

            }
        });


        time3Off_h.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time3Offh = 60*dbl;
                        checkBoxTime3.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime3.setChecked(false);
                    }
                }else{
                    time3Offh =0;
                }
            }
        });

        time3Off_m.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                String strEdit =editable.toString();
                int dbl ;
                if(strEdit != null && !strEdit.equals("")) {
                    dbl = Integer.parseInt(strEdit);
                    if(dbl<=59 && dbl >=0) {
                        time3Offm = dbl;
                        checkBoxTime3.setChecked(true);
                    }else {
                        Toast.makeText(getActivity(), "Input imcometable!", Toast.LENGTH_SHORT).show();
                        checkBoxTime3.setChecked(false);
                    }
                }else{
                    time3Offm =0;
                }
            }
        });

        autoCtrl.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                   autoCtrlSw = 1;

                }else{
                    autoCtrlSw =0 ;
                }
            }
        });
        manCtrl.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    manCtrlSw = 1;

                }else{
                    manCtrlSw = 0;

                }
            }
        });
        CtrlBot1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    ctrlBot1 = 1;;
                }
                else{
                    ctrlBot1 = 0;
                }

            }
        });

        CtrlBot2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    ctrlBot2 =  1;
                }else{
                    ctrlBot2 = 0;
                }
            }
        });

        CtrlBot3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    ctrlBot3 = 1;
                }else{
                    ctrlBot3 =0;
                }

            }
        });

        /*checkBoxTime1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b&&(autoCtrlSw==1)){

                    try {
                        jsonObject.put("time1", time1);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                }

            }
        });*/


       /* checkBoxTime2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b&&(autoCtrlSw == 1)){
                    try {
                        jsonObject.put("time2" , time2);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }


                }

            }
        });*/


       /* checkBoxTime3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b&&(autoCtrlSw==1)){

                    try {
                        jsonObject.put("time3" , time3);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                }

            }
        });*/

         checkBoxSelectBot1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
             @Override
             public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                 if(b){
                     selectBot1 = 1;

                 }
                 else{
                     selectBot1 = 0;
                 }


             }
         });
        checkBoxSelectBot2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    selectBot2 = 1;

                }else{
                    selectBot2 = 0;
                }

            }
        });

        checkBoxSelectBot3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    selectBot3 = 1;
                }else{
                    selectBot3 = 0 ;
                }
            }
        });

        /*EditText topicText = (EditText) rootView.findViewById(R.id.topic);
        EditText messageText = (EditText) rootView.findViewById(R.id.message);
        Spinner qos = (Spinner) rootView.findViewById(R.id.qos_spinner);
        final Switch retain = (Switch) rootView.findViewById(R.id.retain_switch);
        topicText.setText(topic);
*/

        /*topicText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                topic = s.toString();
            }
        });

        messageText.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                message = s.toString();
            }
        });

        qos.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                selectedQos = Integer.parseInt(getResources().getStringArray(R.array.qos_options)[position]);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        retain.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                retainValue = isChecked;
            }
        });

        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(getActivity(), R.array.qos_options, android.R.layout.simple_spinner_item);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        qos.setAdapter(adapter);
*/


        saveBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                 time1On = time1Onh +time1Onm ;
                 time2On = time2Onh +time2Onm;
                 time3On = time3Onh +time3Onm;

                 time1Off = time1Offh + time1Offm;
                 time2Off = time2Offh + time2Offm;
                 time3Off = time3Offh + time3Offm;
                if(autoCtrlSw == 1) {
                    if (checkBoxSelectBot1.isChecked()) {
                        if (checkBoxTime1.isChecked()) {

                            try {
                                jsonObject.put("time1Bot1On", time1On);
                                jsonObject.put("time1Bot1Off", time1Off);


                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime2.isChecked()) {


                            try {

                                jsonObject.put("time2Bot1On", time2On);
                                jsonObject.put("time2Bot1Off", time2Off);


                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime3.isChecked()) {

                            try {

                                jsonObject.put("time3Bot1On", time3On);
                                jsonObject.put("time3Bot1Off", time3Off);

                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (checkBoxSelectBot2.isChecked()) {
                        if (checkBoxTime1.isChecked()) {

                            try {
                                jsonObject.put("time1Bot2On", time1On);
                                jsonObject.put("time1Bot2Off", time1Off);
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime2.isChecked()) {
                            try {

                                jsonObject.put("time2Bot2On", time2On);
                                jsonObject.put("time2Bot2Off", time2Off);
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime3.isChecked()) {
                            try {

                                jsonObject.put("time3Bot2On", time3On);
                                jsonObject.put("time3Bot2Off", time3Off);

                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }

                    if (checkBoxSelectBot3.isChecked()) {
                        if (checkBoxTime1.isChecked()) {
                            try {
                                jsonObject.put("time1Bot3On", time1On);

                                jsonObject.put("time1Bot3Off", time1Off);

                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime2.isChecked()) {
                            try {

                                jsonObject.put("time2Bot3On", time2On);
                                jsonObject.put("time2Bot3Off", time2Off);


                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        if (checkBoxTime3.isChecked()) {
                            try {

                                jsonObject.put("time3Bot3On", time3On);
                                jsonObject.put("time3Bot3Off", time3Off);


                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }

               /* if(checkBoxSelectBot2.isChecked()&&checkBoxTime2.isChecked()){
                    try {
                        jsonObject.put("time2", time2);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                if(checkBoxSelectBot3.isChecked()&&checkBoxTime3.isChecked()){
                    try {
                        jsonObject.put("time3", time3);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }*/
                if(manCtrlSw ==1){
                    try {
                        jsonObject.put("ctrlBot1", ctrlBot1);
                        jsonObject.put("ctrlBot2", ctrlBot2);
                        jsonObject.put("ctrlBot3", ctrlBot3);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                ctrlMode = autoCtrlSw*2 + manCtrlSw ;
                // put the the control mode to json object
                try {
                    jsonObject.put("ctrlMode", ctrlMode);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                /*System.out.println("Publising: [topic: " + topic + ", message: " + message + ", QoS: " + selectedQos + ", Retain: " + retainValue + "]");
                ((MainActivity) getActivity()).publish(connection, topic, message, selectedQos, retainValue); */
                Log.d( "The publish message", jsonObject.toString());
                //Toast.makeText(getActivity(), jsonObject.toString(), Toast.LENGTH_SHORT).show();
               // Toast.makeText(getActivity(), "Bang Nguyen", Toast.LENGTH_SHORT).show();
                ((MainActivity) getActivity()).publish(connection, topic, jsonObject.toString(), selectedQos, retainValue);
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        new sendData().execute(espServer,jsonObject.toString());
                    }
                });
                // update the bot status
                FragmentManager  fm = getFragmentManager();
                //SubscriptionFragment SubFmBot1Stt = (SubscriptionFragment) fm.findFragmentById(R.id.bot1Stt);
                //SubscriptionFragment SubFmBot2Stt = (SubscriptionFragment) fm.findFragmentById(R.id.bot2Stt);
                //SubscriptionFragment SubFmBot3Stt = (SubscriptionFragment) fm.findFragmentById(R.id.bot3Stt);
                new CountDownTimer(10000, 500) {
                    @Override
                    public void onTick(long l) {
                        if(SubscriptionFragment.bot1Stt == 1 ){
                            bot1SttView.setText("On");
                            bot1SttView.setTextColor(Color.parseColor("#006633"));
                            //bot1SttView.setBackgroundColor();
                        }else{
                            bot1SttView.setText("Off");
                            bot1SttView.setTextColor(Color.parseColor("#cc0000"));
                        }

                        if(SubscriptionFragment.bot2Stt == 1 ){
                            bot2SttView.setText("On");
                            bot2SttView.setTextColor(Color.parseColor("#006633"));
                        }else{
                            bot2SttView.setText("Off");
                            bot2SttView.setTextColor(Color.parseColor("#cc0000"));
                        }

                        if(SubscriptionFragment.bot3Stt == 1 ){
                            bot3SttView.setText("On");
                            bot3SttView.setTextColor(Color.parseColor("#006633"));
                        }else{
                            bot3SttView.setText("Off");
                            bot3SttView.setTextColor(Color.parseColor("#cc0000"));
                        }
                    }

                    @Override
                    public void onFinish() {

                    }
                }.start();
                Calendar c = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy  hh:mm:ss  z");
                String formatTime = sdf.format(c.getTime());
                if(selectBot1 == 1){
                    logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                            formatTime,
                            "1",
                            time1Onh/60 +"h"+time1Onm,
                            time1Offh/60 + "h" + time1Offm,
                            time2Onh/60 + "h" + time2Onm,
                            time2Offh/60 + "h" + time2Offm,
                            time3Onh/60 +"h" + time3Onm,
                            time3Offh/60 + "h" + time3Offm,
                            "Ok"));

                }
                if(selectBot2 == 1){
                    logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                            formatTime,
                            "2",
                            time1Onh/60 +  "h"+time1Onm,
                            time1Offh/60 + "h" + time1Offm,
                            time2Onh/60 +  "h" + time2Onm,
                            time2Offh/60 + "h" + time2Offm,
                            time3Onh/60 +  "h" + time3Onm,
                            time3Offh/60 + "h" + time3Offm,
                            "Ok"));

                }
                if(selectBot3 == 1){
                    logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                            formatTime,
                            "3",
                            time1Onh/60 +  "h" +time1Onm,
                            time1Offh/60 + "h" + time1Offm,
                            time2Onh/60 +  "h" + time2Onm,
                            time2Offh/60 + "h" + time2Offm,
                            time3Onh/60 +  "h" + time3Onm,
                            time3Offh/60 + "h" + time3Offm,
                            "Ok"));
                }



            }



        });
        logViewBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //ctrlListAdapter.notifyDataSetChanged();
               showLogCtrl();

            }
        });

        // Inflate the layout for this fragment
        return rootView;
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    public static String POST(String url, String dataControl){
        InputStream inputStream = null;
        String result = "";
        try {
            // 1. create HttpClient
            HttpClient httpclient = new DefaultHttpClient();

            // 2. make POST request to the given URL
            HttpPost httpPost = new HttpPost(url);

            String json = dataControl;
            // 3. build jsonObject
            // 4. convert JSONObject to JSON to String
            //json = jsonObject.toString();

            // ** Alternative way to convert Person object to JSON string usin Jackson Lib
            // ObjectMapper mapper = new ObjectMapper();
            // json = mapper.writeValueAsString(person);

            // 5. set json to StringEntity
            StringEntity se = new StringEntity(json);

            // 6. set httpPost Entity
            httpPost.setEntity(se);
            // 7. Set some headers to inform server about the type of the content
            httpPost.setHeader("Accept", "application/json");
            httpPost.setHeader("Content-type", "application/json");

            // 8. Execute POST request to the given URL
            HttpResponse httpResponse = httpclient.execute(httpPost);
            // 9. receive response as inputStream
            inputStream = httpResponse.getEntity().getContent();
            // 10. convert inputstream to string
            if(inputStream != null)
                result = convertInputStreamToString(inputStream);
            else
                result = "Did not work!";

        } catch (Exception e) {
            Log.d("InputStream", e.getLocalizedMessage());
        }

        // 11. return result
        return result;
    }


    private class sendData extends AsyncTask<String, Void, String> {
        @Override
        protected String doInBackground(String... urls) {

            return POST(urls[0], jsonObject.toString());
        }
        // onPostExecute displays the results of the AsyncTask.
        @Override
        protected void onPostExecute(String result) {
            Toast.makeText(getActivity(), "Data Sent!", Toast.LENGTH_LONG).show();
        }
    }
    private static String convertInputStreamToString(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader( new InputStreamReader(inputStream));
        String line = "";
        String result = "";
        while((line = bufferedReader.readLine()) != null)
            result += line;
        inputStream.close();
        return result;
    }


    protected void showLogCtrl(){
        // ArrayList<LogCtrlMessage> logCtrlViewMsg = null ;
      //  final ArrayList<LogCtrlMessage> logCtrlViewBot2 = null;
       // final ArrayList<LogCtrlMessage> logCtrlViewBot3 = null;
       // final Button
       // public ArrayList<LogCtrlMessage> logCtrl ;
         LayoutInflater layoutInflater =  (LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
         View ctrlLogView = layoutInflater.inflate(R.layout.log_ctrl_hist, null);
         final LogCtrlMessageAdapter logCtrlMessageAdapter;






        //SimpleDateFormat s = new SimpleDateFormat("dd/MM/yyyy  hh:mm:ss  z");
        //String formatTime = s.format(new Date());
         //final ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();
        //ArrayList<LogCtrlMessageAdapter> lstView = new ArrayList<LogCtrlMessageAdapter>();

        //ArrayList<LogCtrlMessage>logMsgChan2 = new ArrayList<LogCtrlMessage>();
        //ArrayList<LogCtrlMessage>logMsgChan3 = new ArrayList<LogCtrlMessage>();

        //final ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();
         final Button clearBtnLog;
         ListView ctrlLogListView;
       //  TextView showxem = (TextView)ctrlLogView.findViewById(R.id.textView18);
        ctrlLogListView = (ListView) ctrlLogView.findViewById(R.id.ctrl_list);

        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext());
        alertDialogBuilder.setView(ctrlLogView);
        //logArrAdd();
        //logMsg.add(new LogCtrlMessage(jsonObject.toString(), "00:00:00","Channel 1", time1On, time1Off, "Ok"));
       // showxem.setText("Bang Nguyen");
        // LogCtrlMessageAdapter ctrlListAdapter = null;
       // final LogCtrlMessageAdapter ctrlListAdapter ;


       /* if(selectBot1 == 1){
            logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                                        formatTime,
                                        "1",
                                        time1Onh/60 +"h"+time1Onm,
                                        time1Offh/60 + "h" + time1Offm,
                                        time2Onh/60 + "h" + time2Offm,
                                        time2Offh/60 + "h" + time2Offm,
                                        time3Onh/60 +"h" + time3Onm,
                                        time3Offh/60 + "h" + time3Offm,
                                        "Ok"));

        }
        if(selectBot2 == 1){
            logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                                        formatTime,
                                        "2",
                                        time1Onh/60 +  "h"+time1Onm,
                                        time1Offh/60 + "h" + time1Offm,
                                        time2Onh/60 +  "h" + time2Offm,
                                        time2Offh/60 + "h" + time2Offm,
                                        time3Onh/60 +  "h" + time3Onm,
                                        time3Offh/60 + "h" + time3Offm,
                                        "Ok"));

        }
        if(selectBot3 == 1){
            logMsg.add(new LogCtrlMessage(jsonObject.toString(),
                                        formatTime,
                                        "3",
                                        time1Onh/60 +  "h" +time1Onm,
                                        time1Offh/60 + "h" + time1Offm,
                                        time2Onh/60 +  "h" + time2Offm,
                                        time2Offh/60 + "h" + time2Offm,
                                        time3Onh/60 +  "h" + time3Onm,
                                        time3Offh/60 + "h" + time3Offm,
                                        "Ok"));
        }
        */




        logCtrlMessageAdapter  = new LogCtrlMessageAdapter(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext(), logMsg);
        ctrlLogListView.setAdapter(logCtrlMessageAdapter);

        clearBtnLog = (Button) ctrlLogView.findViewById(R.id.logViewClearBtn);
        //  final LogCtrlMessageAdapter finalCtrlListAdapter = ctrlListAdapter;

        clearBtnLog.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // logCtrlViewMsg.clear();
                logCtrlMessageAdapter.clear();
            }
        });



        AlertDialog alert =  alertDialogBuilder.create();
        alert.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        alert.show();


    }



/*public void logArrAdd(){
    logMsg.add(new LogCtrlMessage(jsonObject.toString(), "00:00:00","Channel 1", time1On, time1Off, "Ok"));

    if(selectBot1 == 1){
        logMsg.add(new LogCtrlMessage(jsonObject.toString(), "00:00:00","Channel 1", time1On, time1Off, "Ok"));

    }
    if(selectBot2 == 1){
        logMsg.add(new LogCtrlMessage(jsonObject.toString(), "00:00:00","Channel 1", time1On, time1Off, "Ok"));

    }
    if(selectBot2 == 1){
        logMsg.add(new LogCtrlMessage(jsonObject.toString(), "00:00:00","Channel 1", time1On, time1Off, "Ok"));

    }


}*/
        /*View ctrlLogViewBot1 = layoutInflater.inflate(R.layout.log_ctrl_hist, null);

        ctrlListAdapter = new LogCtrlMessageAdapter(getActivity(), logCtrl);
        ctrlLogListView = (ListView) ctrlLogView.findViewById(R.id.history_list_view);
        ctrlLogListView.setAdapter(ctrlListAdapter);
        //new MessageListItemAdapter(getActivity)
        */




    //final EditText topicText = (EditText) promptView.findViewById(R.id.subscription_topic_edit_text);

       // final Spinner qos = (Spinner) promptView.findViewById(R.id.subscription_qos_spinner);
       // final ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(getActivity(), R.array.qos_options, android.R.layout.simple_spinner_item);
       // adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
       /* qos.setAdapter(adapter);
        qos.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
               // temp_qos_value = Integer.parseInt(getResources().getStringArray(R.array.qos_options)[position]);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        }); */

        //final Switch notifySwitch = (Switch) promptView.findViewById(R.id.show_notifications_switch);
        /*AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext());
        alertDialogBuilder.setView(promptView);
        alertDialogBuilder.setCancelable(true).setPositiveButton(R.string.subscribe_ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                String topic = topicText.getText().toString();

                Subscription subscription = new Subscription(topic, temp_qos_value, connection.handle(), notifySwitch.isChecked());
                subscriptions.add(subscription);
                try {
                    connection.addNewSubscription(subscription);

                } catch (MqttException ex) {
                    System.out.println("MqttException whilst subscribing: " + ex.getMessage());
                }
                adapter.notifyDataSetChanged();
            }

            ;
        }).setNegativeButton(R.string.subscribe_cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
            }
        });
        AlertDialog alert =  alertDialogBuilder.create();
        alert.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
        alert.show();
    }
*/

}