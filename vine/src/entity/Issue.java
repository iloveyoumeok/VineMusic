package entity;

public class Issue {
	private String issueId;
	private String songName;
	private String singer;
	private String songUrl;
	public Issue(String issueId, String songName, String singer, String songUrl) {
		super();
		this.issueId = issueId;
		this.songName = songName;
		this.singer = singer;
		this.songUrl = songUrl;
	}
	public Issue() {
		// TODO Auto-generated constructor stub
	}
	public String getIssueId() {
		return issueId;
	}
	public void setIssueId(String issueId) {
		this.issueId = issueId;
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
	public String getSongUrl() {
		return songUrl;
	}
	public void setSongUrl(String songUrl) {
		this.songUrl = songUrl;
	}

}
