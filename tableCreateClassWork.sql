create table Actor(
	act_id			Integer			not null,
    act_fname		char(20)		not null,
    act_iname		char(20)		not null,
    act_gender		char(1)			not null,
    constraint 		Actor_PK 	PRIMARY KEY(act_id)
	);

create table Director(
	dr_id		integer			not null,
    dr_fname	char(20)		not null,
    dr_iname	char(20)		not null,
    CONSTRAINT	Director_PK		PRIMARY KEY(dr_id)
    );
    
create table Movies(
	mov_id			integer			not null,
    mov_title		char(50)		not null,
    mov_year		integer			not null,
    mov_time		integer			not null,
    mov_lang		char(50)		not null,
    mov_dt_rel		date			not null,
    mov_rel_country	char(5)			not null,
    constraint 		Movies_PK		PRIMARY KEY(mov_id)
    );

create table Movie_cast(
act_id			integer			not null,
mov_id			integer			not null,
role			char(30)		not null,
	
foreign key(act_id)		references Actor(act_id),
foreign key(mov_id)		references Movies(mov_id)
);

create table Reviewer(
rev_id			integer			not null,
rev_name		char(30)		not null,
constraint 		Reviewer_PK		primary key(rev_id)
);

create table Genres(
gen_id			integer			not null,
gen_title		char(30)		not null,
constraint 		Genres_PK		primary key(gen_id)
);

create table Rating(
mov_id			integer			not null,
rev_id			integer			not null,
rev_stars		integer			not null,
num_o_ratings	integer			not null,
foreign key(rev_id)		references reviewer(rev_id),
foreign key(mov_id)		references Movies(mov_id)

);

create table MovieDirection(
	dr_id		int			not null,
    mov_id		int			not null,
    
    foreign key(dr_id)		references Director(dr_id),
    foreign key(mov_id)		references Movies(mov_id)
    );
    
create table Movies_genre(
	mov_id		int				not null,
    gen_id		integer			not null,
    
    foreign key(mov_id)		references Movies(mov_id),
    foreign key(gen_id)		references genres(gen_id)
    );