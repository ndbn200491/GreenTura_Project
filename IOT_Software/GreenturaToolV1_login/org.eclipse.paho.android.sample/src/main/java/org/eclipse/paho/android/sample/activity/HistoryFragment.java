package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;

import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.components.MessageListItemAdapter;
import org.eclipse.paho.android.sample.internal.Connections;
import org.eclipse.paho.android.sample.internal.IReceivedMessageListener;
import org.eclipse.paho.android.sample.model.ReceivedMessage;

import java.util.ArrayList;
import java.util.Map;


public class HistoryFragment extends Fragment {

    ListView messageHistoryListView;
    MessageListItemAdapter messageListAdapter;
    Button clearButton;
    Connection connection;
    public  String humiData;
    public  String tempData;
    public  String PHData;
    public String jsonDecode ;

    int i ;
    public ArrayList<ReceivedMessage> messages;
    public HistoryFragment() {

        setHasOptionsMenu(true);

    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Map<String, Connection> connections = Connections.getInstance(this.getActivity())
                .getConnections();
        connection = connections.get(this.getArguments().getString(ActivityConstants.CONNECTION_KEY));
        System.out.println("History Fragment: " + connection.getId());
        setHasOptionsMenu(true);
        messages = connection.getMessages();


        connection.addReceivedMessageListner(new IReceivedMessageListener() {
            @Override
            public void onMessageReceived(ReceivedMessage message) {
                System.out.println("GOT A MESSAGE in history " + new String(message.getMessage().getPayload()));
                System.out.println("M: " + messages.size());
                messageListAdapter.notifyDataSetChanged();

               // jsonDecode = new String( message.getMessage().getPayload());
               // i +=1;
                //Log.d("The Json mesage ........................................................", jsonDecode);
              /*  if(jsonDecode.contains("{")) {
                    try {
                        JSONObject dataSensor = new JSONObject(jsonDecode);
                        HistoryFragment.humiData = dataSensor.getString("time" )+i;
                        HistoryFragment.tempData = dataSensor.getString("sensor");
                        HistoryFragment.PHData = dataSensor.getString("PH+-");

                        Log.d("the sensor Data:", humiData);
                        Log.d("The temp:", tempData);
                        Log.d("the PH Data", PHData);

                      /*  if(humiData !="") {
                            Bundle bundle = new Bundle();
                            //bundle.putString("humiData", "From Activity");
                            bundle.putString("humiData", humiData);
                            bundle.putString("tempData", tempData);
                            bundle.putString("PHData", PHData);
// set Fragmentclass Arguments
                            HistoryFragment fromHistoryFragment = new HistoryFragment();
                            fromHistoryFragment.setArguments(bundle);
                        }


                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                } */

            }
        });


    }





    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {


        View rootView = inflater.inflate(R.layout.fragment_connection_history, container, false);


        messageListAdapter = new MessageListItemAdapter(getActivity(), messages);
        messageHistoryListView = (ListView) rootView.findViewById(R.id.history_list_view);
        messageHistoryListView.setAdapter(messageListAdapter);


        clearButton = (Button) rootView.findViewById(R.id.history_clear_button);
        clearButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                messages.clear();
                messageListAdapter.notifyDataSetChanged();
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



}

