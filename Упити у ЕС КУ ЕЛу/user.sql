create user korisnik identified by ftn
	default tablespace USERS temporary tablespace TEMP;


	grant connect, resource to korisnik;

	grant create table to korisnik;

	grant create view to korisnik;

	grant create procedure to korisnik;

	grant create synonym to korisnik;

	grant create sequence to korisnik;

	grant select on dba_rollback_segs to korisnik;

	grant select on dba_segments to korisnik;

	grant unlimited tablespace to korisnik;