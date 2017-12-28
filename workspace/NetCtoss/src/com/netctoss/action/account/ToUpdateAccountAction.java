package com.netctoss.action.account;

import com.netctoss.dao.DAOException;
import com.netctoss.dao.DAOFactory;
import com.netctoss.dao.account.IAccountDao;
import com.netctoss.pojo.Account;

public class ToUpdateAccountAction {
	
	//输入属性:
	private Integer id;
	
	//输出属性:
	private Account account;
	private String recommenderIdCardNo;
	
	public String execute(){
		IAccountDao dao = DAOFactory.getIAccountDao();
		try {
			//根据id获得对应的account对象;
			account = dao.findAccountById(id);
			//根据recommenderId获得对应的推荐人身份证号;
			Integer recommenderId = account.getRecommenderId();
			Account recommender = dao.findAccountById(recommenderId);
			if(recommender!=null){
			recommenderIdCardNo = recommender.getIdcardNo();
			}
		} catch (DAOException e) {
			e.printStackTrace();
			return "error";
		}
		return "success";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getRecommenderIdCardNo() {
		return recommenderIdCardNo;
	}

	public void setRecommenderIdCardNo(String recommenderIdCardNo) {
		this.recommenderIdCardNo = recommenderIdCardNo;
	}
	
}
