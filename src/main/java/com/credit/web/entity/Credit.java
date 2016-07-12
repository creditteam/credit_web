package com.credit.web.entity;

import java.util.Date;

public class Credit {

	private Integer id;
	// 债权发布人id
	private Integer userId;
	// 债权类型
	private Short crType;
	// 债权金额
	private Double crAmount;
	// 债权状态
	private Short crStatus;
	// 处置方式
	private Short disposalType;
	// 佣金范围
	private String commisionRange;
	// 联系人
	private String contactName;
	// 联系电话
	private String contactNumber;
	// 债权方名称
	private String debtName;
	// 债权方省份
	private String debtProvince;
	// 债权方城市
	private String debtCity;
	// 债权方电话
	private String debtPhone;
	// 债权方凭证
	private String debtProof;
	// 债权方描述
	private String description;
	// 创建日期
	private Date createDate;
	// 结束日期
	private Date endDate;
	// 开启日期
	private Date openDate;
	// 约定日期
	private Date agreedDate;

	public Credit() {

	}

	public Credit(Integer id, Integer userId, Short crType, Double crAmount,
			Short crStatus, Short disposalType, String commisionRange,
			String contactName, String contactNumber, String debtName,
			String debtProvince, String debtCity, String debtPhone,
			String debtProof, String description, Date createDate,
			Date endDate, Date openDate, Date agreedDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.crType = crType;
		this.crAmount = crAmount;
		this.crStatus = crStatus;
		this.disposalType = disposalType;
		this.commisionRange = commisionRange;
		this.contactName = contactName;
		this.contactNumber = contactNumber;
		this.debtName = debtName;
		this.debtProvince = debtProvince;
		this.debtCity = debtCity;
		this.debtPhone = debtPhone;
		this.debtProof = debtProof;
		this.description = description;
		this.createDate = createDate;
		this.endDate = endDate;
		this.openDate = openDate;
		this.agreedDate = agreedDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Short getCrType() {
		return crType;
	}

	public void setCrType(Short crType) {
		this.crType = crType;
	}

	public Double getCrAmount() {
		return crAmount;
	}

	public void setCrAmount(Double crAmount) {
		this.crAmount = crAmount;
	}

	public Short getCrStatus() {
		return crStatus;
	}

	public void setCrStatus(Short crStatus) {
		this.crStatus = crStatus;
	}

	public Short getDisposalType() {
		return disposalType;
	}

	public void setDisposalType(Short disposalType) {
		this.disposalType = disposalType;
	}

	public String getCommisionRange() {
		return commisionRange;
	}

	public void setCommisionRange(String commisionRange) {
		this.commisionRange = commisionRange;
	}

	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getDebtName() {
		return debtName;
	}

	public void setDebtName(String debtName) {
		this.debtName = debtName;
	}

	public String getDebtProvince() {
		return debtProvince;
	}

	public void setDebtProvince(String debtProvince) {
		this.debtProvince = debtProvince;
	}

	public String getDebtCity() {
		return debtCity;
	}

	public void setDebtCity(String debtCity) {
		this.debtCity = debtCity;
	}

	public String getDebtPhone() {
		return debtPhone;
	}

	public void setDebtPhone(String debtPhone) {
		this.debtPhone = debtPhone;
	}

	public String getDebtProof() {
		return debtProof;
	}

	public void setDebtProof(String debtProof) {
		this.debtProof = debtProof;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public Date getAgreedDate() {
		return agreedDate;
	}

	public void setAgreedDate(Date agreedDate) {
		this.agreedDate = agreedDate;
	}

}
