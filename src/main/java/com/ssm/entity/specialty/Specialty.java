package com.ssm.entity.specialty;

import java.io.Serializable;
import java.util.Date;
/**
 * 地方特产实体类
 * @author Harry
 * @version 1.0
 * 本类Specialty.java是描述
 */
public class Specialty implements Serializable{

	private static final long serialVersionUID = -5894896395084552882L;

	private Integer id;
	private String specialtyName;// 特产名
	private String introduce; //简介
	private Double preferentialPrice;// 优惠价
	private Double shopPrice; //专柜价格
	private long weight;// 重量
	private String distribution;// 配送地址
	private Double courierFees; // 快递费
	private long monthlySales; // 月销量
	private String evaluation; // 评价分
	private long evalCount;
	private String productParamenters; // 产品参数
	private String factoryName;// 厂名
	private String factoryPhone; // 厂家联系方式
	private String stroageMetod; // 储存方法
	private String foodAdditives; // 食品添加剂
	private String series;// 系列
	private String rank; // 等级
	private Date productDate; // 生产日期
	private String productCode; // 产品标准号
	private String factoryAddress; // 厂址
	private String burdenSheet; // 配料表
	private String expirationDate; // 保质期
	private String paching; // 包装方式	
	private String barCode; // 商品条形码	
	private String organism; // 是否含有有机物
	private String origin; // 产地
	private String image; //产品图片
	/**
	 * 
	 */
	public Specialty() {
	}
	/**
	 * @param id
	 * @param specialtyName
	 * @param introduce
	 * @param preferentialPrice
	 * @param shopPrice
	 * @param weight
	 * @param distribution
	 * @param courierFees
	 * @param monthlySales
	 * @param evaluation
	 * @param evalCount
	 * @param productParamenters
	 * @param factoryName
	 * @param factoryPhone
	 * @param stroageMetod
	 * @param foodAdditives
	 * @param series
	 * @param rank
	 * @param productDate
	 * @param productCode
	 * @param factoryAddress
	 * @param burdenSheet
	 * @param expirationDate
	 * @param paching
	 * @param barCode
	 * @param organism
	 * @param origin
	 * @param image
	 */
	public Specialty(Integer id, String specialtyName, String introduce, Double preferentialPrice, Double shopPrice,
			long weight, String distribution, Double courierFees, long monthlySales, String evaluation, long evalCount,
			String productParamenters, String factoryName, String factoryPhone, String stroageMetod,
			String foodAdditives, String series, String rank, Date productDate, String productCode,
			String factoryAddress, String burdenSheet, String expirationDate, String paching, String barCode,
			String organism, String origin, String image) {
		this.id = id;
		this.specialtyName = specialtyName;
		this.introduce = introduce;
		this.preferentialPrice = preferentialPrice;
		this.shopPrice = shopPrice;
		this.weight = weight;
		this.distribution = distribution;
		this.courierFees = courierFees;
		this.monthlySales = monthlySales;
		this.evaluation = evaluation;
		this.evalCount = evalCount;
		this.productParamenters = productParamenters;
		this.factoryName = factoryName;
		this.factoryPhone = factoryPhone;
		this.stroageMetod = stroageMetod;
		this.foodAdditives = foodAdditives;
		this.series = series;
		this.rank = rank;
		this.productDate = productDate;
		this.productCode = productCode;
		this.factoryAddress = factoryAddress;
		this.burdenSheet = burdenSheet;
		this.expirationDate = expirationDate;
		this.paching = paching;
		this.barCode = barCode;
		this.organism = organism;
		this.origin = origin;
		this.image = image;
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the specialtyName
	 */
	public String getSpecialtyName() {
		return specialtyName;
	}
	/**
	 * @param specialtyName the specialtyName to set
	 */
	public void setSpecialtyName(String specialtyName) {
		this.specialtyName = specialtyName;
	}
	/**
	 * @return the introduce
	 */
	public String getIntroduce() {
		return introduce;
	}
	/**
	 * @param introduce the introduce to set
	 */
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	/**
	 * @return the preferentialPrice
	 */
	public Double getPreferentialPrice() {
		return preferentialPrice;
	}
	/**
	 * @param preferentialPrice the preferentialPrice to set
	 */
	public void setPreferentialPrice(Double preferentialPrice) {
		this.preferentialPrice = preferentialPrice;
	}
	/**
	 * @return the shopPrice
	 */
	public Double getShopPrice() {
		return shopPrice;
	}
	/**
	 * @param shopPrice the shopPrice to set
	 */
	public void setShopPrice(Double shopPrice) {
		this.shopPrice = shopPrice;
	}
	/**
	 * @return the weight
	 */
	public long getWeight() {
		return weight;
	}
	/**
	 * @param weight the weight to set
	 */
	public void setWeight(long weight) {
		this.weight = weight;
	}
	/**
	 * @return the distribution
	 */
	public String getDistribution() {
		return distribution;
	}
	/**
	 * @param distribution the distribution to set
	 */
	public void setDistribution(String distribution) {
		this.distribution = distribution;
	}
	/**
	 * @return the courierFees
	 */
	public Double getCourierFees() {
		return courierFees;
	}
	/**
	 * @param courierFees the courierFees to set
	 */
	public void setCourierFees(Double courierFees) {
		this.courierFees = courierFees;
	}
	/**
	 * @return the monthlySales
	 */
	public long getMonthlySales() {
		return monthlySales;
	}
	/**
	 * @param monthlySales the monthlySales to set
	 */
	public void setMonthlySales(long monthlySales) {
		this.monthlySales = monthlySales;
	}
	/**
	 * @return the evaluation
	 */
	public String getEvaluation() {
		return evaluation;
	}
	/**
	 * @param evaluation the evaluation to set
	 */
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	/**
	 * @return the evalCount
	 */
	public long getEvalCount() {
		return evalCount;
	}
	/**
	 * @param evalCount the evalCount to set
	 */
	public void setEvalCount(long evalCount) {
		this.evalCount = evalCount;
	}
	/**
	 * @return the productParamenters
	 */
	public String getProductParamenters() {
		return productParamenters;
	}
	/**
	 * @param productParamenters the productParamenters to set
	 */
	public void setProductParamenters(String productParamenters) {
		this.productParamenters = productParamenters;
	}
	/**
	 * @return the factoryName
	 */
	public String getFactoryName() {
		return factoryName;
	}
	/**
	 * @param factoryName the factoryName to set
	 */
	public void setFactoryName(String factoryName) {
		this.factoryName = factoryName;
	}
	/**
	 * @return the factoryPhone
	 */
	public String getFactoryPhone() {
		return factoryPhone;
	}
	/**
	 * @param factoryPhone the factoryPhone to set
	 */
	public void setFactoryPhone(String factoryPhone) {
		this.factoryPhone = factoryPhone;
	}
	/**
	 * @return the stroageMetod
	 */
	public String getStroageMetod() {
		return stroageMetod;
	}
	/**
	 * @param stroageMetod the stroageMetod to set
	 */
	public void setStroageMetod(String stroageMetod) {
		this.stroageMetod = stroageMetod;
	}
	/**
	 * @return the foodAdditives
	 */
	public String getFoodAdditives() {
		return foodAdditives;
	}
	/**
	 * @param foodAdditives the foodAdditives to set
	 */
	public void setFoodAdditives(String foodAdditives) {
		this.foodAdditives = foodAdditives;
	}
	/**
	 * @return the series
	 */
	public String getSeries() {
		return series;
	}
	/**
	 * @param series the series to set
	 */
	public void setSeries(String series) {
		this.series = series;
	}
	/**
	 * @return the rank
	 */
	public String getRank() {
		return rank;
	}
	/**
	 * @param rank the rank to set
	 */
	public void setRank(String rank) {
		this.rank = rank;
	}
	/**
	 * @return the productDate
	 */
	public Date getProductDate() {
		return productDate;
	}
	/**
	 * @param productDate the productDate to set
	 */
	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}
	/**
	 * @return the productCode
	 */
	public String getProductCode() {
		return productCode;
	}
	/**
	 * @param productCode the productCode to set
	 */
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	/**
	 * @return the factoryAddress
	 */
	public String getFactoryAddress() {
		return factoryAddress;
	}
	/**
	 * @param factoryAddress the factoryAddress to set
	 */
	public void setFactoryAddress(String factoryAddress) {
		this.factoryAddress = factoryAddress;
	}
	/**
	 * @return the burdenSheet
	 */
	public String getBurdenSheet() {
		return burdenSheet;
	}
	/**
	 * @param burdenSheet the burdenSheet to set
	 */
	public void setBurdenSheet(String burdenSheet) {
		this.burdenSheet = burdenSheet;
	}
	/**
	 * @return the expirationDate
	 */
	public String getExpirationDate() {
		return expirationDate;
	}
	/**
	 * @param expirationDate the expirationDate to set
	 */
	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}
	/**
	 * @return the paching
	 */
	public String getPaching() {
		return paching;
	}
	/**
	 * @param paching the paching to set
	 */
	public void setPaching(String paching) {
		this.paching = paching;
	}
	/**
	 * @return the barCode
	 */
	public String getBarCode() {
		return barCode;
	}
	/**
	 * @param barCode the barCode to set
	 */
	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}
	/**
	 * @return the organism
	 */
	public String getOrganism() {
		return organism;
	}
	/**
	 * @param organism the organism to set
	 */
	public void setOrganism(String organism) {
		this.organism = organism;
	}
	/**
	 * @return the origin
	 */
	public String getOrigin() {
		return origin;
	}
	/**
	 * @param origin the origin to set
	 */
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Specialty [id=").append(id).append(", specialtyName=").append(specialtyName)
				.append(", introduce=").append(introduce).append(", preferentialPrice=").append(preferentialPrice)
				.append(", shopPrice=").append(shopPrice).append(", weight=").append(weight).append(", distribution=")
				.append(distribution).append(", courierFees=").append(courierFees).append(", monthlySales=")
				.append(monthlySales).append(", evaluation=").append(evaluation).append(", evalCount=")
				.append(evalCount).append(", productParamenters=").append(productParamenters).append(", factoryName=")
				.append(factoryName).append(", factoryPhone=").append(factoryPhone).append(", stroageMetod=")
				.append(stroageMetod).append(", foodAdditives=").append(foodAdditives).append(", series=")
				.append(series).append(", rank=").append(rank).append(", productDate=").append(productDate)
				.append(", productCode=").append(productCode).append(", factoryAddress=").append(factoryAddress)
				.append(", burdenSheet=").append(burdenSheet).append(", expirationDate=").append(expirationDate)
				.append(", paching=").append(paching).append(", barCode=").append(barCode).append(", organism=")
				.append(organism).append(", origin=").append(origin).append(", image=").append(image).append("]");
		return builder.toString();
	}
	


	

	
}
