package org.eclipse.paho.android.sample.model;

/**
 * Created by VSKYLINE on 8/31/2016.
 */
public class LogCtrlMessage {
   // String topic;
   // String message;
    private String jsonSend;
    private String timestamp;
    private String botName;
    private String OnTime1;
    private String OffTime1;
    private String OnTime2;
    private String OffTime2;
    private String OnTime3;
    private String OffTime3;
    private String status;
    public LogCtrlMessage(String jsonSend, String timestamp, String botName, String OnTime1, String OffTime1, String OnTime2, String OffTime2, String OnTime3, String OffTime3, String status){
        this.jsonSend = jsonSend;
        this.timestamp = timestamp;
        this.botName = botName;
        this.OffTime1 = OffTime1;
        this.OnTime1 = OnTime1;
        this.OffTime2 = OffTime2;
        this.OnTime2 = OnTime2;
        this.OffTime3 = OffTime3;
        this.OnTime3 = OnTime3;
        this.status = status;
    }

    public String getJsonSend(){
        return  jsonSend;
    }
    public String getTimestamp() {
        return timestamp;
    }
    public String getBotName(){
        return botName;
    }
    public String getOnTime1(){
        return OnTime1;
    }
    public String getOffTime1(){
        return OffTime1;
    }
    public String getOnTime2(){
        return OnTime2;
    }
    public String getOffTime2(){
        return OffTime2;
    }
    public String getOnTime3(){
        return OnTime3;
    }
    public String getOffTime3(){
        return OffTime3;
    }
    public String getStatus(){
        return status;
    }
  /*  public String getTopic() {
        return topic;
    }*/

    /*public String getMessage() {
        return message;
    } */
    @Override
    public String toString() {
        return "LogCtrlMessage{" +
                "jsonPack='" + jsonSend + '\'' +
                "Time On1:" + OnTime1 +
                ", Time Off1=" + OffTime1 +
                "Time On1:" + OnTime2 +
                ", Time Off1=" + OffTime2 +
                "Time On1:" + OnTime3 +
                ", Time Off1=" + OffTime3 +
                ", Status Control: " + status +
                ", timestamp=" + timestamp +
                '}';
    }
}
