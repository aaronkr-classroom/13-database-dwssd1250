SHOW DATABASES;

CREATE TABLE member(
	id int NOT NULL AUTO_INCREMENT,
	name VARCHER(100) NOT NULL,
	passwd VARCHER(50) NOT NULL,
	PRIMARY KEY(id)
);

TABLE member; -- SELECT * FROM member;
DESC member; -- 테이블 생성 (구조 확인)

-- 열 추가
ALTER TABLE member ADD phone VARCHER(20);
ALTER TABLE member ADD nickname VARCHER(50);

-- 열 삭제
ALTER TABLE member DROP COLUMN nickname;

-- 열 이름 수정
ALTER TABLE member CHANGE COLUMN passwd password varcher(60);

-- 테이블 이름 수정
RENAME TABLE member TO student;
TABLE student;

-- 테이블에서 데이터 삽입
INSERT INTO student VALUES('1', '홍길순', '1235', '01012345678');
INSERT INTO student VALUES('2', '수여인', '1236', '01011112222');
INSERT INTO student VALUES('3', '수여남', '1237', '01022223333');
INSERT INTO student VALUES('4', '홍길동', '1238', '01033334444');

-- 조회 할 때
SELECT name, phone FROM student;
SELECT * FROM student ORDER BY id DESC LIMIT 2;
SELECT * FROM student WHERE id=2;

INSERT INTO student VALUES('99', 'Aaron', '0000', null);

-- 열 값 수정
UPDATE student SET phone="01055554444" WHERE name='Aaron';
SELECT * FROM student;

INSERT INTO student VALUES('15', 'Tracy', 'abcd', null);
TABLE student;

-- 행 삭제
DELETE FROM student WHERE id='15';

-- CRUD 기능
-- 기능     | 의미  | 행에서   |
-- C(Creat) 생성: INSERT... / CREATE...
-- R(Read) 조회/읽기: SELECT... / SHOW...
-- U(Update) 수정/변경: UPDATE... / ALTER...
-- D(Delete) 삭제: DELETE... / DROP...








