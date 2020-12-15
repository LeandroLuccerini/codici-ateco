create table if not exists codice_ateco
(
	codice varchar(8) not null primary key,
	genitore_id varchar(8) null,
	sezione varchar(1) not null,
	descrizione varchar(255) not null,
	constraint FK_226F0A5989CCFDCE foreign key (genitore_id) references codice_ateco (codice)
)
collate=utf8mb4_unicode_ci;

create index IDX_226F0A5989CCFDCE
	on codice_ateco (genitore_id);
