package entity;

import java.sql.Date;

public class Song {
	private int id;
	private String name;
	private String author;
	private String style;
	private Date pubDate;
	private int issueId;
	private String songUrl;
	public String getSongUrl() {
		return songUrl;
	}
	public void setSongUrl(String songUrl) {
		this.songUrl = songUrl;
	}
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
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
	public Song(int id, String name, String author, String style, Date pubDate, int issueId,String songUrl) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.style = style;
		this.pubDate = pubDate;
		this.issueId = issueId;
		this.songUrl = songUrl;
	}



}
