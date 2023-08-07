package com.nn.search.domain;

import java.util.Date;


/**
 * 
 * 
 * 
 **/
public class Information{


  /****/

  private Long id;


  /**新闻来源**/

  private String infoSrc;


  /**新闻内容**/

  private String infoText;


  /**新闻图片链接**/

  private String infoImage;


  /**新闻跳转url**/

  private String infoUrl;


  /**标题md5值，校验防止相同新闻误插入**/

  private String singleTag;


  /**发布时间**/

  private String time;


  /**创建时间**/

  private Date createTime;


  /**最后更新时间**/

  private Date updateTime;


  /**是否可用：0否 1是**/

  private Integer isEnabled;


  /**是否删除：0否 1是**/

  private Integer isDeleted;




  public void setId(Long id) {     this.id = id;
  }


  public Long getId() {     return this.id;
  }


  public void setInfoSrc(String infoSrc) {     this.infoSrc = infoSrc;
  }


  public String getInfoSrc() {     return this.infoSrc;
  }


  public void setInfoText(String infoText) {     this.infoText = infoText;
  }


  public String getInfoText() {     return this.infoText;
  }


  public void setInfoImage(String infoImage) {     this.infoImage = infoImage;
  }


  public String getInfoImage() {     return this.infoImage;
  }


  public void setInfoUrl(String infoUrl) {     this.infoUrl = infoUrl;
  }


  public String getInfoUrl() {     return this.infoUrl;
  }


  public void setSingleTag(String singleTag) {     this.singleTag = singleTag;
  }


  public String getSingleTag() {     return this.singleTag;
  }


  public void setTime(String time) {     this.time = time;
  }


  public String getTime() {     return this.time;
  }


  public void setCreateTime(Date createTime) {     this.createTime = createTime;
  }


  public Date getCreateTime() {     return this.createTime;
  }


  public void setUpdateTime(Date updateTime) {     this.updateTime = updateTime;
  }


  public Date getUpdateTime() {     return this.updateTime;
  }


  public void setIsEnabled(Integer isEnabled) {     this.isEnabled = isEnabled;
  }


  public Integer getIsEnabled() {     return this.isEnabled;
  }


  public void setIsDeleted(Integer isDeleted) {     this.isDeleted = isDeleted;
  }


  public Integer getIsDeleted() {     return this.isDeleted;
  }

}
