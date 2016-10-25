package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTabHost;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;

import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.internal.Connections;
import org.eclipse.paho.android.sample.internal.IReceivedMessageListener;
import org.eclipse.paho.android.sample.model.ReceivedMessage;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Date;
import java.util.Map;


public class ConnectionFragment extends Fragment {
    Connection connection;
    FragmentTabHost mTabHost;
    Switch connectSwitch;
    boolean connected;


    //


    float humi ;
    float temp;
    float ph;
    int ec;
    int ppm;
    int wLv ;
    String cmd;
    String httpContent;
    int i = 100000;
     int bot1Stt, bot2Stt, bot3Stt;
     boolean firstSub ;
    public static Date timeNow;

    public ConnectionFragment() {
        setHasOptionsMenu(true);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Map<String, Connection> connections = Connections.getInstance(this.getActivity())
                .getConnections();
        connection = connections.get(this.getArguments().getString(ActivityConstants.CONNECTION_KEY));
        connected = this.getArguments().getBoolean(ActivityConstants.CONNECTED, false);


        final String name = connection.getId() + "@" + connection.getHostName() + ":" + connection.getPort();
        setHasOptionsMenu(true);

        connection.addReceivedMessageListner(new IReceivedMessageListener() {
            @Override
            public void onMessageReceived(ReceivedMessage message) {
                System.out.println("GOT A MESSAGE in history " + new String(message.getMessage().getPayload()));
               // System.out.println("M: " + messages.size());
                //messageListAdapter.notifyDataSetChanged();

                String jsonMes = new String( message.getMessage().getPayload());
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
                     /*   if(wLv ==1) {
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
                        */
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View rootView = inflater.inflate(R.layout.main_new_v1, container, false);

        Bundle bundle = new Bundle();
        bundle.putString(ActivityConstants.CONNECTION_KEY, connection.handle());

        // Initialise the tab-host
        mTabHost = (FragmentTabHost) rootView.findViewById(android.R.id.tabhost);
        mTabHost.setup(getActivity(), getChildFragmentManager(), android.R.id.tabcontent);
        // Add a tab to the tabHost

        mTabHost.addTab(mTabHost.newTabSpec("KÊNH 1").setIndicator("KÊNH 1"), HistoryFragment.class, bundle);
        mTabHost.addTab(mTabHost.newTabSpec("KÊNH 2").setIndicator("KÊNH 2"), PublishFragment.class, bundle);
        mTabHost.addTab(mTabHost.newTabSpec("KÊNH 3").setIndicator("KÊNH 3"), SubscriptionFragment.class, bundle);

        return rootView;

    }

    public void changeConnectedState(boolean state){
        mTabHost.getTabWidget().getChildTabViewAt(1).setEnabled(state);
        mTabHost.getTabWidget().getChildTabViewAt(2).setEnabled(state);
        connectSwitch.setChecked(state);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    @Override
    public void onCreateOptionsMenu(final Menu menu, MenuInflater inflater){
        inflater.inflate(R.menu.menu_connection, menu);

        ((MainActivity) getActivity()).connect(connection);
       /* connectSwitch = (Switch)  menu.findItem(R.id.connect_switch).getActionView().findViewById(R.id.switchForActionBar);

        connectSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    ((MainActivity) getActivity()).connect(connection);
                    changeConnectedState(true);
                } else {
                    ((MainActivity) getActivity()).disconnect(connection);
                    changeConnectedState(false);
                }
            }
        });
        changeConnectedState(connection.isConnected());
        super.onCreateOptionsMenu(menu, inflater);
        */
    }

}

