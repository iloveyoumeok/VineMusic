package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import daoimp.IssueDaoImp;
import entity.Issue;
import net.sf.json.JSONArray;

public class IssueAction extends ActionSupport{
	private String cow;
	List<Issue> list=new ArrayList<Issue>();
	public String issueList(){
		IssueDaoImp idi=new IssueDaoImp();
		
		this.list=idi.showIssue(getCow());
		
		JSONArray jsonArray = JSONArray.fromObject(list);
	
				return SUCCESS;
	}

	public String getCow() {
		return cow;
	}

	public void setCow(String cow) {
		this.cow = cow;
	}

	public List<Issue> getList() {
		return list;
	}
	public void setList(List<Issue> list) {
		this.list = list;
	}
	public IssueAction(String cow, List<Issue> list) {
		super();
		this.cow = cow;
		this.list = list;
	}


}
