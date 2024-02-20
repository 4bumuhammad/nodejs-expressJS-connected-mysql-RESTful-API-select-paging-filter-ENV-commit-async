#[container: 001-docker-compose-mysql-standard]

---



    ❯ mysql -h 127.0.0.1 -P 3309 -u root -p --ssl-mode=DISABLED

        Enter password: password


        mysql> show databases;

        +------------------------+

        | Database               |

        +------------------------+

        | information_schema     |

        | mysql                  |

        | performance_schema     |

        | sys                    |

        | ujimysqlkudb           |

        | ujitransactionrabbitmq |

        +------------------------+

        6 rows in set (0.01 sec)


---


# mekanisme backup database

    ❯ mysqldump -h 127.0.0.1 -P 3309 -u root -p ujimysqlkudb > backup_ujimysqlkudb.sql

        Enter password:password

    ❯ mysqldump -h 127.0.0.1 -P 3309 -u root -p ujitransactionrabbitmq > backup_ujitransactionrabbitmq.sql

        Enter password:password

# mekanisme restore database

    ❯ mysql -h 127.0.0.1 -P 3309 -u root -p ujimysqlkudb < backup_ujimysqlkudb_20230525.sql

    ❯ mysql -h 127.0.0.1 -P 3309 -u root -p ujitransactionrabbitmq < backup_ujitransactionrabbitmq_20230525.sql


    atau 

    ❯ mysql -h 127.0.0.1 -P 3309 -u aman -p --default-auth=mysql_native_password

        password : am4n
