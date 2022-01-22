package bikerentalBean;

public class RentalPlaceBean {

    private String ID;
    private String Bikerentalname;
    private String RoadAddress;
    private String NumberAddress;
    private float Latitude;
    private float Hardness;
    private String StartTime;
    private String FinishTime;
    private String BikeCount;

    public String getID() {
        return this.ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getBikerentalname() {
        return this.Bikerentalname;
    }

    public void setBikerentalname(String Bikerentalname) {
        this.Bikerentalname = Bikerentalname;
    }

    public String getRoadAddress() {
        return this.RoadAddress;
    }

    public void setRoadAddress(String RoadAddress) {
        this.RoadAddress = RoadAddress;
    }

    public String getNumberAddress() {
        return this.NumberAddress;
    }

    public void setNumberAddress(String NumberAddress) {
        this.NumberAddress = NumberAddress;
    }

    public float getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(float Latitude) {
        this.Latitude = Latitude;
    }

    public float getHardness() {
        return this.Hardness;
    }

    public void setHardness(float Hardness) {
        this.Hardness = Hardness;
    }

    public String getStartTime() {
        return this.StartTime;
    }

    public void setStartTime(String StartTime) {
        this.StartTime = StartTime;
    }

    public String getFinishTime() {
        return this.FinishTime;
    }

    public void setFinishTime(String FinishTime) {
        this.FinishTime = FinishTime;
    }

    public String getBikeCount() {
        return this.BikeCount;
    }

    public void setBikeCount(String BikeCount) {
        this.BikeCount = BikeCount;
    }
}
