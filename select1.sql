/*=======================<select>=======================*/
/*혹시라도 일어날 충돌을 방지하기 위해서 예약어와 같아 파란색으로 표시되는 경우 백쿼터로 감싸줌*/
/*해당 테이블을 조회할때 특정 컬럼 선택하여 조회 가능*/
select 
	id, `name`, age 
from 
	student_study_mst 
where 
	`name` like '%경%' /*해당 컬럼에서 해당 조건이 포함된 결과 조회*/
or `name` like '김%'; /*and는 두 조건을 모두 포함한 결과 출력 / or는 두 조건 중 하나라도 충족하는 결과 도출*/

select
	*
from
	student_study_mst
where
-- 	age > 25
-- and age <30 ;
	age between 25 and 30; -- 25살부터 30살까지 (포함) >> age >= 25 and age <=30;
    
select
	*
from
	student_study_mst
where
	age not between 25 and 30;  -- not between(사이가 아닌것) >> age < 25 and age > 30; // 키워드 앞에 not
    -- not age = 25; // 25살이 아닌 결과 조회  // 연산자 앞에 not
    
select
	*
from
	student_study_mst
where
	age is not null; 
    