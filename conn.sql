drop database link site1;

create database link site1
	connect to system identified by "123456"
	using '(DESCRIPTION =
			(ADDRESS_LIST =
				(ADDRESS = (PROTOCOL = TCP)
				(HOST = 172.20.10.3)
				(PORT = 1622))
			)
			(CONNECT_DATA =
				(SID = XE)
			)
		)'
;