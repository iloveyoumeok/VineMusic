package entity;

import java.sql.Date;

public class Song {
private String songName;
private String singer;
private String address;
private String pubDate;
public Song(String songName, String singer, String address, String pubDate) {
	super();
	this.songName = songName;
	this.singer = singer;
	this.address = address;
	this.pubDate = pubDate;
}
public String getSongName() {
	return songName;
}
public void setSongName(String songName) {
	this.songName = songName;
}
public String getSinger() {
	return singer;
}
public void setSinger(String singer) {
	this.singer = singer;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPubDate() {
	return pubDate;
}
public void setPubDate(String pubDate) {
	this.pubDate = pubDate;
}


}
