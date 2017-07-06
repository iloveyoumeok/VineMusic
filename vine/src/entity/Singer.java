package entity;

public class Singer {
	private int singerId;
	private String singerName;
	private String area;
	private String type;
	public Singer(int singerId, String singerName, String area, String type) {
		super();
		this.singerId = singerId;
		this.singerName = singerName;
		this.area = area;
		this.type = type;
	}
	public int getSingerId() {
		return singerId;
	}
	public void setSingerId(int singerId) {
		this.singerId = singerId;
	}
	public String getSingerName() {
		return singerName;
	}
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

}
