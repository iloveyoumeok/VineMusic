package entity;

import java.sql.Date;

public class Song {
	private int songId;
	private String songName;
	private int singerId;
	private String style;
	private Date pubDate;
	private int issueId;
	private String songUrl;
	public int getSongId() {
		return songId;
	}
	public void setSongId(int songId) {
		this.songId = songId;
	}
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public int getSingerId() {
		return singerId;
	}
	public void setSingerId(int singerId) {
		this.singerId = singerId;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	public String getSongUrl() {
		return songUrl;
	}
	public void setSongUrl(String songUrl) {
		this.songUrl = songUrl;
	}
	public Song(int songId, String songName, int singerId, String style, Date pubDate, int issueId, String songUrl) {
		super();
		this.songId = songId;
		this.songName = songName;
		this.singerId = singerId;
		this.style = style;
		this.pubDate = pubDate;
		this.issueId = issueId;
		this.songUrl = songUrl;
	}



}
