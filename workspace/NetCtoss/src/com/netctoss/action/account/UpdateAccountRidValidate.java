package com.netctoss.action.account;

import com.netctoss.dao.DAOException;
import com.netctoss.dao.DAOFactory;
import com.netctoss.dao.account.IAccountDao;
import com.netctoss.pojo.Account;

public class UpdateAccountRidValidate {
	
	//输入属性;
	private String recommenderIdCardNo;
	
	//输出属性;
	private Integer recommenderId;
	
	public String execute(){
		IAccountDao dao = DAOFactory.getIAccountDao();
		try {
			Account account = dao.findAccountByIdCardNo(recommenderIdCardNo);
			if(account==null){
				recommenderId = null;
			}else{
				recommenderId=account.getId();;
			}
		} catch (DAOException e) {
			e.printStackTrace();
			recommenderId = null;
		}
		return "success";
	}

	public String getRecommenderIdCardNo() {
		return recommenderIdCardNo;
	}

	public void setRecommenderIdCardNo(String recommenderIdCardNo) {
		this.recommenderIdCardNo = recommenderIdCardNo;
	}

	public Integer getRecommenderId() {
		return recommenderId;
	}

	public void setRecommenderId(Integer recommenderId) {
		this.recommenderId = recommenderId;
	}

	
	
}
