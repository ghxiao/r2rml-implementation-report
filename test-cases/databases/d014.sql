DROP TABLE IF EXISTS EMP cascade;
CREATE TABLE EMP (
      empno INTEGER PRIMARY KEY,
      ename VARCHAR(100),
      job VARCHAR(30),
	  deptno INTEGER REFERENCES DEPT (deptno),
	  etype VARCHAR(30));
INSERT INTO EMP (empno, ename, job, deptno, etype ) VALUES (7369, 'SMITH', 'CLERK', 10, 'PART_TIME');


DROP TABLE IF EXISTS DEPT cascade;
CREATE TABLE DEPT (
      deptno INTEGER UNIQUE,
      dname VARCHAR(30),
      loc VARCHAR(100));
INSERT INTO DEPT (deptno, dname, loc) VALUES (10, 'APPSERVER', 'NEW YORK');

DROP TABLE IF EXISTS LIKES cascade;
CREATE TABLE LIKES (
      id INTEGER,
      likeType VARCHAR(30),
      likedObj VARCHAR(100));
INSERT INTO LIKES (id, likeType, likedObj) VALUES (7369, 'Playing', 'Soccer');
INSERT INTO LIKES (id, likeType, likedObj) VALUES (7369, 'Watching', 'Basketball');