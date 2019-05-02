// /*
//  * @Author: mikey.zhaopeng 
//  * @Date: 2019-05-02 11:36:28 
//  * @Last Modified by: mikey.zhaopeng
//  * @Last Modified time: 2019-05-02 11:41:57
//  */

// package com.myproject.findbook.config;

// import javax.sql.DataSource;

// import org.apache.ibatis.session.SqlSessionFactory;
// import org.mybatis.spring.SqlSessionFactoryBean;
// import org.mybatis.spring.annotation.MapperScan;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

// @Configuration
// @MapperScan(basePackages = {MyBatisConfig.MAPPER_PACKAGE}, sqlSessionFactoryRef = MyBatisConfig.SESSIONFACTORY_NAME)
// public class MyBatisConfig {

//     /**SqlSessionFactory名称.*/
//     public final static String SESSIONFACTORY_NAME = "sqlSessionFactory";
//     /**mapper包路径，必须与其他SqlSessionFactory-mapper路径区分.*/
//     public final static String MAPPER_PACKAGE = "com.myproject.findbook.mapper";
//     /**mapper.xml文件路径，必须与其他SqlSessionFactory-mapper路径区分.*/
//     public final static String MAPPER_XML_PATH = "classpath:mapper/*.xml";

//     @Autowired
//     private DataSourceProperties dataSourceProperties;


//     @Bean(name = "dataSource")
//     public DataSource dataSource() {
//         //建议封装成单独的类
//         DruidDataSource dataSource = new DruidDataSource();
//         dataSource.setUrl(dataSourceProperties.getUrl());
//         System.err.println(dataSourceProperties.getUrl());
//         dataSource.setDriverClassName(dataSourceProperties.getDriverClassName());
//         dataSource.setUserName(dataSourceProperties.getUsername());
//         dataSource.setPassword(dataSourceProperties.getPassword());

//         return dataSource;

//     }

//     //默认Bean首字母小写，简化配置 
//     //将SqlSessionFactory作为Bean注入到Spring容器中，成为配置一部分。
//     @Bean
//     public SqlSessionFactory sqlSessionFactory() throws Exception {
//         SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//         sqlSessionFactoryBean.setDataSource(dataSource());
//         sqlSessionFactoryBean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources(MAPPER_XML_PATH));
//         return sqlSessionFactoryBean.getObject();
//     }

// }

// /**
//  * InnerMyBatisConfig
//  */
// class DruidDataSource {

//     private String Url;
//     private String DriverClassName;
//     private String UserName;
//     private String Password;
// 	/**
// 	 * @return the url
// 	 */
// 	public String getUrl() {
// 		return Url;
// 	}
// 	/**
// 	 * @param url the url to set
// 	 */
// 	public void setUrl(String url) {
// 		Url = url;
// 	}
// 	/**
// 	 * @return the driverClassName
// 	 */
// 	public String getDriverClassName() {
// 		return DriverClassName;
// 	}
// 	/**
// 	 * @param driverClassName the driverClassName to set
// 	 */
// 	public void setDriverClassName(String driverClassName) {
// 		DriverClassName = driverClassName;
// 	}
// 	/**
// 	 * @return the userName
// 	 */
// 	public String getUserName() {
// 		return UserName;
// 	}
// 	/**
// 	 * @param userName the userName to set
// 	 */
// 	public void setUserName(String userName) {
// 		UserName = userName;
// 	}
// 	/**
// 	 * @return the password
// 	 */
// 	public String getPassword() {
// 		return Password;
// 	}
// 	/**
// 	 * @param password the password to set
// 	 */
// 	public void setPassword(String password) {
// 		Password = password;
// 	}

// }