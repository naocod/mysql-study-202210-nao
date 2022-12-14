/*=======================<insert>=======================*/
/*
	DML
	Insert	C	데이터 추가
	Select	R	데이터 조회
	Update	U	데이터 수정
	Delete	D	데이터 삭제
	
	Pk(키값)이 있어야지만 수정 가능
*/

set sql_safe_updates = 0;
select * from student_study_mst;

insert into student_study_mst
	(id, name, age)
values
	(1, '정빈', 20);
insert into student_study_mst(name, id, age) values('김규민', 2,  17);
insert into student_study_mst(name, id) values('박경효', 26);
insert into student_study_mst values(3, '김혜진', 26);
/* value들이 순서를 지키면서 빠짐없이 들어갔을 때 컬럼명을 생략할 수 있다.*/

insert into student_study_mst
values
	(5, '윤도영', 25),
	(6, '홍성욱', 25),
	(7, '김경민', 32),
	(8, '정혜민', 26);
    
/*=======================<update>=======================*/

update student_study_mst
set /* set의 = 은 대입*/
	name = '정순동',
	age = 22
where /* 조건문 / where에서의 =은 비교연산자 */
	Id  =  6;
	
update student_study_mst
set
	Age = age + 1
where
	Id = 6;
    
/*=======================<delete>=======================*/

delete
from
	student_study_mst
where
	id = 1;

