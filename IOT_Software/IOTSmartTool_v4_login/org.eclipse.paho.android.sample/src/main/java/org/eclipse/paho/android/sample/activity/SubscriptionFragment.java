package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.components.SubscriptionListItemAdapter;
import org.eclipse.paho.android.sample.internal.Connections;
import org.eclipse.paho.android.sample.internal.IReceivedMessageListener;
import org.eclipse.paho.android.sample.model.ReceivedMessage;
import org.eclipse.paho.android.sample.model.Subscription;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

// http


public class SubscriptionFragment extends Fragment {
    private static final String activityClass = "org.eclipse.paho.android.sample.activity.MainActivity";
    int temp_qos_value = 0;
    ListView subscriptionListView;
    Thread subThread ;
    float humi ;
    float temp;
    float ph;
    int ec;
    int ppm;
    int wLv ;
    String cmd;
    String httpContent;
    int i = 100000;
    static int bot1Stt, bot2Stt, bot3Stt;
    static boolean firstSub ;
    public static Date timeNow;
    String SetServerString = "";
    //String httpPath = "http://khoapham.vn/KhoaPhamTraining/laptrinhios/jSON/demo3.json";
    String httpPath = "http://192.168.4.1/sensorData";
    String httpMsg;
    // MessageListItemAdapter messageListAdapter;
    ArrayList<Subscription> subscriptions;
    //ArrayList<UnSubs>
    ArrayList<ReceivedMessage> messages;
    SubscriptionListItemAdapter adapter;
    Connection connection;
    public SubscriptionFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Bundle bundle  = this.getArguments();
        String connectionHandle = bundle.getString(ActivityConstants.CONNECTION_KEY);
        Map<String, Connection> connections = Connections.getInstance(this.getActivity())
                .getConnections();
        connection = connections.get(connectionHandle);
        //subscriptions = connection.getSubscriptions();

        messages = connection.getMessages();
      //  if(!firstSub) {


            /*Subscription subscription = new Subscription(topic, 0, connection.handle(), false); //temp_qos_value = 0;
            System.out.println("subscrise to topic" + EditConnectionFragment.subTopic);
            try {
                connection.addNewSubscription(subscription);
            } catch (MqttException e) {
                // e.printStackTrace();
                System.out.println("subscrise to topic" + EditConnectionFragment.subTopic);

            }
            firstSub = true;
            */
        //}

        //this.runOnUiThread(Runnable action){
        //}
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        final View rootView = inflater.inflate(R.layout.fragment_subscriptions, container, false);
        Button subscribeButton = (Button) rootView.findViewById(R.id.subscribe_button);
        Button btnRefresh = (Button) rootView.findViewById(R.id.btnRefresh);




        subscribeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showInputDialog();
            }
        });
        final TextView humiData = (TextView) rootView.findViewById(R.id.humiData);
        final TextView tempData = (TextView) rootView.findViewById(R.id.tempData);
        final TextView PHData   = (TextView) rootView.findViewById(R.id.PHData);
        final TextView ecVal    = (TextView) rootView.findViewById(R.id.ecVal);
        final TextView ppmVal   = (TextView) rootView.findViewById(R.id.ppmVal);
        final TextView wLevel   = (TextView) rootView.findViewById(R.id.waterLv) ;
        //wLevel.setText("Water Level:"+"   " +  );
        humiData.setText(humi+"(%)");
        tempData.setText(temp+"(C Degree)");
        PHData.setText(ph+"(+/-)");
        ecVal.setText(ec + "(uS)");
        ppmVal.setText(ppm + "");

        connection.addReceivedMessageListner(new IReceivedMessageListener() {
            @Override
            public void onMessageReceived(ReceivedMessage message) {
                String jsonMes = new String(message.getMessage().getPayload());
                //messageListAdapter.notifyDataSetChanged();
                timeNow = message.getTimestamp();

                //  Log.d("The Json mesage ........................................................", jsonMes);
                if(jsonMes.contains("}")&&jsonMes.contains("{")){
                    try {
                        JSONObject sensorDataJson = new JSONObject(jsonMes);

                        humi = (float)sensorDataJson.getInt("humi")/100;
                        temp = (float)sensorDataJson.getInt("temp")/100;
                        ph  = (float)sensorDataJson.getInt("PH+-")/100;
                        ec = sensorDataJson.getInt("ec");
                        ppm = sensorDataJson.getInt("ppm");
                        wLv  = sensorDataJson.getInt("wLv");


                        bot1Stt = sensorDataJson.getInt("rel1");
                        bot2Stt = sensorDataJson.getInt("rel2");
                        bot3Stt = sensorDataJson.getInt("rel3");
                        if(wLv ==1) {
                            wLevel.setText("Water Level:             Safety ");
                            wLevel.setBackgroundColor(Color.parseColor("#00dda2"));
                        }else if(wLv == 0){
                            wLevel.setText("Water Level:             Warning! Water Low  ");
                            wLevel.setBackgroundColor(Color.parseColor("#ff0000"));
                            Intent intent = new Intent();
                            intent.setClassName(getContext(), activityClass);
                            //intent.putExtra("handle", clientHandle);
                           // Notify.notifcation(getContext(), "Water Level Warning", intent, R.string.wLevel_Low);
                        }else{
                            wLevel.setText("No Update");
                        }

                        humiData.setText(humi+"(%)");
                        tempData.setText(temp+"(C Degree)");
                        PHData.setText(ph+"(+/-)");
                        ecVal.setText(ec + "(uS)");
                        ppmVal.setText(ppm + "");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        // String strHumiData = getArguments().getString("humiData");
        //humiData.setText(humi);
       // tempData.setText(temp);
        //PHData.setText(ph);
        //Log.d(" run lai tu dau #########################################", ""+i);


        btnRefresh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                //final TextView humiData = (TextView) rootView.findViewById(R.id.humiData);
                //final TextView tempData = (TextView) rootView.findViewById(R.id.tempData);
                //final TextView PHData   = (TextView) rootView.findViewById(R.id.PHData);
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        new readData().execute(httpPath);
                        JSONObject sensorDataJson = null;
                        if(httpMsg != null) {
                            try {
                                sensorDataJson = new JSONObject(httpMsg);
                                wLv  = sensorDataJson.getInt("wLv");
                                humi = (float)sensorDataJson.getInt("humi")/100;
                                temp = (float)sensorDataJson.getInt("temp")/100;
                                ph  = (float)sensorDataJson.getInt("PH+-")/100;
                                ec = sensorDataJson.getInt("ec");
                                ppm = sensorDataJson.getInt("ppm");
                                humiData.setText(humi+"(%)");
                                tempData.setText(temp+"(C Degree)");
                                PHData.setText(ph+"(+/-)");
                                ecVal.setText(ec + "(uS)");
                                ppmVal.setText(ppm + "");
                                bot1Stt = sensorDataJson.getInt("rel1");
                                bot2Stt = sensorDataJson.getInt("rel2");
                                bot3Stt = sensorDataJson.getInt("rel3");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }

                            //final TextView humiData = (TextView) rootView.findViewById(R.id.humiData);
                            //final TextView tempData = (TextView) rootView.findViewById(R.id.tempData);
                            //final TextView PHData   = (TextView) rootView.findViewById(R.id.PHData);
                            humiData.setText(humi+"(%)");
                            tempData.setText(temp+"(C Degree)");
                            PHData.setText(ph+"(+/-)");

                            ecVal.setText(ec + "(uS)");
                            ppmVal.setText(ppm +"");

                        }
                        /*JSONObject sensorDataJson = null;
                        try {
                            sensorDataJson = new JSONObject(httpMsg);

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        humi = sensorDataJson.getString("humi") + i++;
                        temp = sensorDataJson.getString("temp");
                        ph  = sensorDataJson.getString("PH+-");
                        //final TextView humiData = (TextView) rootView.findViewById(R.id.humiData);
                        //final TextView tempData = (TextView) rootView.findViewById(R.id.tempData);
                        //final TextView PHData   = (TextView) rootView.findViewById(R.id.PHData);
                        humiData.setText(humi+"(%)");
                        tempData.setText(temp+"(C Degree)");
                        PHData.setText(ph+"(+/-)");
                        */

                    }
                });


            }
        });



        /*if(strHumiData !="") {
            humiData.setText(this.getArguments().getString("humiData")+"(%)");
            tempData.setText(this.getArguments().getString("tempData") + "(Degree)");
            PHData.setText(this.getArguments().getString("PHData")+ "(+/-)");
        } */


        ListView subscriptionListView = (ListView) rootView.findViewById(R.id.subscription_list_view);
        adapter = new SubscriptionListItemAdapter(this.getActivity(), subscriptions);

        adapter.addOnUnsubscribeListner(new SubscriptionListItemAdapter.OnUnsubscribeListner() {
            @Override
            public void onUnsubscribe(Subscription subscription) {
                try {
                    connection.unsubscribe(subscription);
                    System.out.println("Unsubscribed from: " + subscription.toString());
                } catch (MqttException ex) {
                    System.out.println("Failed to unsubscribe from " + subscription.toString() + ". " + ex.getMessage());
                }
            }
        });
        //  subscriptionListView.setAdapter(adapter);;


        // Inflate the layout for this fragment
        return rootView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();

    }
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    class readData extends AsyncTask<String, Integer, String> {

        @Override
        protected String doInBackground(String... param) {
            return readDataFromUrl(param[0]);
        }

        @Override
        protected void onPostExecute(String s) {
            //super.onPostExecute(s);
            Toast.makeText(getActivity(),"The HTTP Respon:"+s, Toast.LENGTH_LONG).show();
            httpMsg =  s;
        }
    }

    private static String  readDataFromUrl(String theUrl){
        StringBuilder content = new StringBuilder();
        try
        {
            // create a url object
            URL url = new URL(theUrl);

            // create a urlconnection object
            URLConnection urlConnection = url.openConnection();

            // wrap the urlconnection in a bufferedreader
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

            String line;

            // read from the urlconnection via the bufferedreader
            while ((line = bufferedReader.readLine()) != null)
            {
                content.append(line + "\n");
            }
            bufferedReader.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return content.toString();

    }




    protected void showInputDialog(){
        LayoutInflater layoutInflater =  (LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View promptView = layoutInflater.inflate(R.layout.subscription_dialog, null);
        //final EditText topicText = (EditText) promptView.findViewById(R.id.subscription_topic_edit_text);

        final Spinner qos = (Spinner) promptView.findViewById(R.id.subscription_qos_spinner);
        final ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(getActivity(), R.array.qos_options, android.R.layout.simple_spinner_item);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        qos.setAdapter(adapter);
        qos.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                temp_qos_value = Integer.parseInt(getResources().getStringArray(R.array.qos_options)[position]);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        final Switch notifySwitch = (Switch) promptView.findViewById(R.id.show_notifications_switch);
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext());
        alertDialogBuilder.setView(promptView);
        alertDialogBuilder.setCancelable(true).setPositiveButton(R.string.subscribe_ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                //String topic = topicText.getText().toString();
                String topic = EditConnectionFragment.WIFI_SSID;
                Subscription subscription = new Subscription(topic, temp_qos_value, connection.handle(), notifySwitch.isChecked());
                subscriptions.add(subscription);
                System.out.println("subscrise to topic" + EditConnectionFragment.subTopic);
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
}