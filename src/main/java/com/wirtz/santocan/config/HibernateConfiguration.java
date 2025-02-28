package com.wirtz.santocan.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.wirtz.santocan.config" })
@PropertySource(value = { "classpath:application.properties" })
public class HibernateConfiguration {

	  @Autowired
	    private Environment environment;

	    @Bean
	    public LocalSessionFactoryBean sessionFactory() {
	        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
	        sessionFactory.setDataSource(dataSource());
	        sessionFactory.setPackagesToScan(new String[] { "com.wirtz.santocan.model" });
	        sessionFactory.setHibernateProperties(hibernateProperties());
	        return sessionFactory;
	     }
		
	    @Bean
	    public DataSource dataSource() {
	        DriverManagerDataSource dataSource = new DriverManagerDataSource();
	        dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
	        dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
	        dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
	        dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
	        return dataSource;
	    }
	    

	    
	    private Properties hibernateProperties() {
	    	final Properties hibernateProperties = new Properties();
			hibernateProperties.setProperty("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
			hibernateProperties.setProperty("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
			hibernateProperties.setProperty("hibernate.hbm2ddl.auto",
					environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
			// https://hibernate.atlassian.net/browse/HHH-11722

			// TODO: remove
			System.out.println("############# " + environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
			System.out.println("############# " + environment.getRequiredProperty("hibernate.dialect"));
			System.out.println("############# " + environment.getRequiredProperty("hibernate.hbm2ddl.auto"));

//			hibernateProperties.setProperty("hibernate.legacy_limit_handler",
//					environment.getRequiredProperty("hibernate.legacy_limit_handler"));
			return hibernateProperties;  
	    }
	    
		@Bean
	    @Autowired
	    public HibernateTransactionManager transactionManager(SessionFactory s) {
	       HibernateTransactionManager txManager = new HibernateTransactionManager();
	       txManager.setSessionFactory(s);
	       return txManager;
	    }
}

