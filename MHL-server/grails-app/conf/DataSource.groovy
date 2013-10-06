dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "mhladmin"
    password = "adminpass"
    properties {
       maxActive = 50
       maxIdle = 25
       minIdle = 5
       initialSize = 5
       minEvictableIdleTimeMillis = 1800000
       timeBetweenEvictionRunsMillis = 1800000
       maxWait = 10000
	}
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/mentalhealthliberiatest"
            dialect = BooleanFixDialect
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            dialect = BooleanFixDialect
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/mentalhealthliberia"
            dialect = BooleanFixDialect
        }
    }
}
