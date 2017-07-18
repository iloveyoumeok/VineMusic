package dao;

import java.util.List;

import entity.Issue;

public interface IssueDao {
	public List<Issue> showIssue(String id);
}
