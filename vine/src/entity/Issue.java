package entity;

public class Issue {
	private int issueId;
	private String issueName;
	private String issueImg;

	public Issue(int issueId, String issueName, String issueImg) {
		super();
		this.issueId = issueId;
		this.issueName = issueName;
		this.issueImg = issueImg;
	}
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	public String getIssueName() {
		return issueName;
	}
	public void setIssueName(String issueName) {
		this.issueName = issueName;
	}
	public String getissueImg() {
		return issueImg;
	}
	public void setissueImg(String issueImg) {
		this.issueImg = issueImg;
	}

}
