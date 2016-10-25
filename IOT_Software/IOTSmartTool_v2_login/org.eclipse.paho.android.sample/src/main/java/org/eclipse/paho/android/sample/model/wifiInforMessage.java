package org.eclipse.paho.android.sample.model;

/**
 * Created by VSKYLINE on 8/31/2016.
 */
public class wifiInforMessage {
    // String topic;
    // String message;
    private String SSID;
    private int RSSI;
    private int numberic;

    public wifiInforMessage(String SSID, int RSSI, int numberic){
        this.SSID = SSID;
        this.RSSI = RSSI;
        this.numberic = numberic;
    }


    public String getSSID(){
        return  SSID;
    }
    public int getRSSI() {
        return RSSI;
    }
    public int getNumberic() {return numberic;}

  /*  public String getTopic() {
        return topic;
    }*/

    /*public String getMessage() {
        return message;
    } */
    @Override
    public String toString() {
        return "wifiInforMessage{" +
                "SSID='" + SSID + '\'' +
                "RSSI:" + RSSI +
                ", numberic=" + numberic +
                '}';
    }
}
