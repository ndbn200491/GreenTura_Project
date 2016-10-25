package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.eclipse.paho.android.sample.R;
import org.eclipse.paho.android.sample.components.wifiListAdapter;
import org.eclipse.paho.android.sample.internal.Connections;
import org.eclipse.paho.android.sample.model.ConnectionModel;
import org.eclipse.paho.android.sample.model.wifiInforMessage;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class EditConnectionFragment extends Fragment {

    private Toolbar mToolbar;

    private ConnectionModel initialFormModel;
    private ConnectionModel updatedFormModel;

    private EditText clientId;
    private EditText serverHostname;
    private EditText serverPort;
    private Switch cleanSession;
    private EditText username;
    private EditText password;
    private EditText tlsServerKey;
    private EditText tlsClientKey;
    private EditText timeout;
    private EditText keepAlive;
    private EditText lwtTopic;
    private EditText lwtMessage;
    private Spinner lwtQos;
    private Switch lwtRetain;
    private Button WiFiButton;

    private String connectionHandle;
    private ConnectionModel formModel;
    private boolean newConnection = true;
    public static JSONObject wifiObject;


    // Wifi delacre
    //public WifiManager wifi;
    //public WifiManager wifiManager;
    //public List<ScanResult> results;

    public static List<wifiInforMessage>WiFiLogMsg =  new ArrayList<wifiInforMessage>();
    Connection connection;

    private static String TAG = "EditConnectionFragment";

    static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    static Random random = new Random();
    static int length = 8;
    private EditText wifiSsid;
    private EditText wifiPass;
    public static String WIFI_SSID;
    public static String WIFI_PASS;
    public static String subTopic;
    public static String pubTopic;

    String ESPHost = "http://192.168.4.1/setting" ;


    public wifiListAdapter WiFiListAdapter;
   // public static ArrayList<wifiInforMessage>wifiList = new ArrayList<wifiInforMessage>();
    boolean stopFlag = false;
    Handler scanHandler = new Handler ();




    //String ESPHost = "http://192.168.1.105";
    public EditConnectionFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       setHasOptionsMenu(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_edit_connection, container, false);

        clientId = (EditText) rootView.findViewById(R.id.client_id);
        serverHostname = (EditText) rootView.findViewById(R.id.hostname);
        serverPort = (EditText) rootView.findViewById(R.id.add_connection_port);
        serverPort.setText("");
        cleanSession = (Switch) rootView.findViewById(R.id.clean_session_switch);
        username = (EditText) rootView.findViewById(R.id.username);
        password = (EditText) rootView.findViewById(R.id.password);
        tlsServerKey = (EditText) rootView.findViewById(R.id.tls_server_key);
        tlsClientKey = (EditText) rootView.findViewById(R.id.tls_client_key);
        timeout = (EditText) rootView.findViewById(R.id.timeout);
        keepAlive = (EditText) rootView.findViewById(R.id.keepalive);
        lwtTopic = (EditText) rootView.findViewById(R.id.lwt_topic);
        lwtMessage = (EditText) rootView.findViewById(R.id.lwt_message);
        lwtQos = (Spinner) rootView.findViewById(R.id.lwt_qos_spinner);
        lwtRetain = (Switch) rootView.findViewById(R.id.retain_switch);
        wifiSsid = (EditText) rootView.findViewById(R.id.WiFiSsid) ;
        wifiPass = (EditText) rootView.findViewById(R.id.WiFiPass) ;
        WiFiButton = (Button) rootView.findViewById(R.id.wifiView);

       // tv =(TextView)rootView.
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(getActivity(), R.array.qos_options, android.R.layout.simple_spinner_item);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        lwtQos.setAdapter(adapter);
        // ##### http setting to send
        //WIFI_SSID = wifiSsid.getText().toString();
      //  WIFI_PASS = wifiPass.getText().toString();


        // Send POST data request






        if(this.getArguments() != null && this.getArguments().getString(ActivityConstants.CONNECTION_KEY) != null){
            /** This Form is referencing an existing connection. **/
            //this.getArguments().getString(ActivityConstants.CONNECTION_KEY)
            Map<String, Connection> connections =  Connections.getInstance(this.getActivity())
                    .getConnections();
            String connectionKey = this.getArguments().getString(ActivityConstants.CONNECTION_KEY);
             connection = connections.get(connectionKey);
            System.out.println("Editing an existing connection: " + connection.handle());
            newConnection = false;
            formModel = new ConnectionModel(connection);
            System.out.println("Form Model: " + formModel.toString());
            formModel.setClientHandle(connection.handle());
            populateFromConnectionModel(formModel);

        } else {
            formModel = new ConnectionModel();
            populateFromConnectionModel(formModel);

        }
        setFormItemListeners();
        // Wofo list show when click button
        WiFiButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
               // wifi.startScan();
                //WIFI_SSID = wifiSsid.getText().toString();
                //WIFI_PASS = wifiPass.getText().toString();
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        String wifiData;
                        wifiData= ESPHost + "?" + "&" +"ssid" + "=" + WIFI_SSID + "&" + "pass"  + "=" + WIFI_PASS ;
                        new sendData().execute(wifiData );
                    }
                });

                // Show response on activity
                //content.setText( text  );

               // WiFiScand();
                // get list of the results in object format ( like an array )
                showWifiList();
                // loop that goes through list
                /*for (ScanResult result : results) {
                    Toast.makeText(getActivity(), result.SSID + " " + result.level,
                            Toast.LENGTH_SHORT).show();
                    System.out.print(result.SSID + " " + result.level + "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                }*/
            }
        });
        //setFormItemListeners();
        // Inflate the layout for this fragment
        return rootView;
    }
    private void setFormItemListeners(){
       clientId.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                formModel.setClientId(s.toString());
            }
        });
        wifiSsid.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }
            @Override
            public void afterTextChanged(Editable s) {
                WIFI_SSID = s.toString();
            }
        });
        wifiPass.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }
            @Override
            public void afterTextChanged(Editable s) {
                WIFI_PASS = s.toString();
            }
        });

        serverHostname.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                formModel.setServerHostName(s.toString());
            }
        });

        serverPort.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                if (s.toString().length() > 0) {
                    formModel.setServerPort(Integer.parseInt(s.toString()));
                }
            }
        });

        cleanSession.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                formModel.setCleanSession(isChecked);
            }
        });

        username.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                if (!s.toString().trim().equals("")) {
                    formModel.setUsername(s.toString());
                } else {
                    formModel.setUsername(ActivityConstants.empty);
                }
                subTopic = s.toString();

            }
        });

        password.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                if (!s.toString().trim().equals("")) {
                    formModel.setPassword(s.toString());
                } else {
                    formModel.setPassword(ActivityConstants.empty);
                }
                pubTopic = s.toString();
            }
        });
        tlsServerKey.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                formModel.setTlsServerKey(s.toString());
            }
        });
        tlsClientKey.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                formModel.setTlsClientKey(s.toString());
            }
        });
        timeout.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                if (s.toString().length() > 0) {
                    formModel.setTimeout(Integer.parseInt(s.toString()));
                }
            }
        });
        keepAlive.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                if (s.toString().length() > 0) {
                    formModel.setKeepAlive(Integer.parseInt(s.toString()));
                }
            }
        });
        lwtTopic.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                    formModel.setLwtTopic(s.toString());
            }
        });
        lwtMessage.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {
                formModel.setLwtMessage(s.toString());
            }
        });
        lwtQos.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                formModel.setLwtQos(Integer.parseInt(getResources().getStringArray(R.array.qos_options)[position]));
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        lwtRetain.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                formModel.setLwtRetain(isChecked);
            }
        });

    }

private void populateFromConnectionModel(ConnectionModel connectionModel) {
    clientId.setText(connectionModel.getClientId());
    serverHostname.setText(connectionModel.getServerHostName());
   serverPort.setText(Integer.toString(connectionModel.getServerPort()));
    cleanSession.setChecked(connectionModel.isCleanSession());
    username.setText(connectionModel.getUsername());
    password.setText(connectionModel.getPassword());
    tlsServerKey.setText(connectionModel.getTlsServerKey());
    tlsClientKey.setText(connectionModel.getTlsClientKey());
    timeout.setText(Integer.toString(connectionModel.getTimeout()));
    keepAlive.setText(Integer.toString(connectionModel.getKeepAlive()));
    lwtTopic.setText(connectionModel.getLwtTopic());
    lwtMessage.setText(connectionModel.getLwtMessage());
    lwtQos.setSelection(connectionModel.getLwtQos());
    lwtRetain.setChecked(connectionModel.isLwtRetain());
}

    private void saveConnection(){
        System.out.println("SAVING CONNECTION");
        System.out.println(formModel.toString());
        if(newConnection){
            // Generate a new Client Handle
            StringBuilder sb = new StringBuilder(length);
            for (int i = 0; i < length; i++){
                sb.append(AB.charAt(random.nextInt(AB.length())));
            }
            String clientHandle = sb.toString() + '-' + formModel.getServerHostName() + '-' + formModel.getClientId();
            formModel.setClientHandle(clientHandle);
            ((MainActivity) getActivity()).persistAndConnect(formModel);

        } else {
            // Update an existing connection

            ((MainActivity) getActivity()).updateAndConnect(formModel);
        }


    }
    /**
     * Compares the Initial state of the form to the current state.
     * If the form has changed, return true.
     * @return <code>True</code> if the form has changed.
     */
    private boolean checkFormForChanges(){
        return true;
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        // Inflate the menu; this adds items to the action bar if it is present.
        inflater.inflate(R.menu.menu_edit_connection, menu);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_save_connection) {
          /*  getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    new sendData().execute(ESPHost);
                }
            });*/

            saveConnection();




           // System.out.println( "wifi ssid:" + EditConnectionFragment.WIFI_SSID);
           // System.out.println( "wifi pass:" + EditConnectionFragment.WIFI_PASS);

        }

        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }
    @Override
    public void onDetach() {
        super.onDetach();
    }
    public static String POST(String url){
        InputStream inputStream = null;
        String result = "";
        try {
            // 1. create HttpClient
            HttpClient httpclient = new DefaultHttpClient();

            // 2. make POST request to the given URL
            HttpPost httpPost = new HttpPost(url);
            List wifiVal = new ArrayList(3);
            wifiVal.add(new BasicNameValuePair("action","setting"));
            wifiVal.add(new BasicNameValuePair("ssid", "Ap_cisco"));
            wifiVal.add(new BasicNameValuePair("pass", "Chantroiviet@2014"));



            // 3. build jsonObject
            // 4. convert JSONObject to JSON to String
            //json = jsonObject.toString();

            // ** Alternative way to convert Person object to JSON string usin Jackson Lib
            // ObjectMapper mapper = new ObjectMapper();
            // json = mapper.writeValueAsString(person);

            // 5. set json to StringEntity
          //  StringEntity se = new StringEntity(json);

            // 6. set httpPost Entity
           // httpPost.setEntity(se);
            // 7. Set some headers to inform server about the type of the content
           httpPost.setHeader("Accept", "application/json");
            httpPost.setHeader("Content-type", "application/json");
            try {
               httpPost.setEntity(new UrlEncodedFormEntity(wifiVal));
            }
            catch(UnsupportedEncodingException e){

           }

            // 8. Execute POST request to the   given URL
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

            return POST(urls[0]);
        }
        // onPostExecute displays the results of the AsyncTask.
        @Override
        protected void onPostExecute(String result) {
            //Toast.makeText(getActivity(), "Data Sent!", Toast.LENGTH_LONG).show();
            Toast.makeText(getActivity(), result, Toast.LENGTH_LONG).show();
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
protected void showWifiList(){
    // ArrayList<LogCtrlMessage> logCtrlViewMsg = null ;
    //  final ArrayList<LogCtrlMessage> logCtrlViewBot2 = null;
    // final ArrayList<LogCtrlMessage> logCtrlViewBot3 = null;
    // final Button
    // public ArrayList<LogCtrlMessage> logCtrl ;
    LayoutInflater layoutInflater =  (LayoutInflater) this.getActivity().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    View wifiView = layoutInflater.inflate(R.layout.wifi_infor_list, null);
    final wifiListAdapter wifiListAdapter;
    //SimpleDateFormat s = new SimpleDateFormat("dd/MM/yyyy  hh:mm:ss  z");
    //String formatTime = s.format(new Date());
    //final ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();
    //ArrayList<LogCtrlMessageAdapter> lstView = new ArrayList<LogCtrlMessageAdapter>();
    //ArrayList<LogCtrlMessage>logMsgChan2 = new ArrayList<LogCtrlMessage>();
    //ArrayList<LogCtrlMessage>logMsgChan3 = new ArrayList<LogCtrlMessage>();
    //final ArrayList<LogCtrlMessage>logMsg = new ArrayList<LogCtrlMessage>();
    final Button clearBtnLog;
    ListView wifiListView;
    //  TextView showxem = (TextView)ctrlLogView.findViewById(R.id.textView18);
    wifiListView = (ListView) wifiView.findViewById(R.id.wifi_list);
    AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext());
    alertDialogBuilder.setView(wifiView);
    wifiListAdapter  = new wifiListAdapter(((AppCompatActivity) getActivity()).getSupportActionBar().getThemedContext(), (ArrayList<wifiInforMessage>) WiFiLogMsg);
    wifiListView.setAdapter(wifiListAdapter);
            //  final LogCtrlMessageAdapter finalCtrlListAdapter = ctrlListAdapter;
   /* clearBtnLog.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            // logCtrlViewMsg.clear();
            WiFiListAdapter.clear();
        }
    });
/*
*/
    AlertDialog alert =  alertDialogBuilder.create();
    alert.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
    alert.show();
}







}