DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS ( 
	userId          varchar(12)		NOT NULL, 
	password		varchar(12)		NOT NULL,
	name			varchar(20)		NOT NULL,
	email			varchar(50),	
  	
	PRIMARY KEY               (userId)
);

INSERT INTO USERS VALUES('admin', 'password', '�ڹ�����', 'admin@slipp.net');

DROP TABLE IF EXISTS QUESTIONS;

CREATE TABLE QUESTIONS (
	questionId 			bigint				auto_increment,
	writer				varchar(30)			NOT NULL,
	title				varchar(50)			NOT NULL,
	contents			varchar(5000)		NOT NULL,
	createdDate			timestamp			NOT NULL,
	countOfAnswer int,
	PRIMARY KEY               (questionId)
);

DROP TABLE IF EXISTS ANSWERS;

CREATE TABLE ANSWERS (
	answerId 			bigint				auto_increment,
	writer				varchar(30)			NOT NULL,
	contents			varchar(5000)		NOT NULL,
	createdDate			timestamp			NOT NULL,
	questionId			bigint				NOT NULL,				
	PRIMARY KEY         (answerId)
);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(1, '�ڹ�����',
'�������� Ruby on Rails�� Play�� Ȱ��ȭ�Ǳ� ���� ������ ����?', 
'Ruby on Rails(���� RoR)�� 2006�� ������ ���� �̰߰� �޾ƿö��ٰ� �ݹ� ���� �ɾҴ�. Play �����ӿ�ũ�� ���� �� ���� ��� ���� ���̴ٰ� ����� ���ȴ�. RoR�� Play ������� ������ �غ��� ���� ���꼺�� ������, �� ���α׷����� ����ֱ���� �ϴ�. Spring MVC + JPA(Hibernate) ������� �����ϸ� ������ �κе� ����, �⺻���� �������� �ʴ� ��ɵ� ���� RoR�� Play���� �⺻������ �����ϴ� ����� �����Ϸ��� �߰����� ������ �ʿ��ϴ�.',
CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(2, '�蹮��',
'runtime �� reflect �ߵ� ��ü ��ü�� ���� �� ����� �������?', 
'���踦 �����ϰ� �ϴ� �ٶ��� ���� �������� �մϴٸ�. ������ϴ�.
��Ȳ�� mybatis select ����� �ÿ� return object �� getter �� ȣ��Ǹ鼭�ε���. getter �ȿ� �ٸ� property �� �������� �ڵ尡 ���ԵǾ� �־, ���� �ٸ� mybatis select ������ �ش� property �� ���ٸ� exception �� �߻��ϰ� �˴ϴ�.',
CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(3, '�ڹ�����',
'scala���� named parameter�� Ȱ���� test fixture ���� ���', 
'�ڹٷ� ������ �� ������ �۾� ���� �ϳ��� ��ü�� ���⵵�� �����ϴ� ��� test fixture�� �����ϴ� ���� ���� ������ �۾��� �ƴϴ�.
��Į��� named parameter�� Ȱ���� test fixture�� ������ �� �ִ�.',
CURRENT_TIMESTAMP(), 0);


INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(4, '�ڹ�����',
'DB ������ �� table id�� � ����� ����ϳ���?', 
'��� �������� DB id�� ������ �� Ư���� �Ű��� ���� ���� �� ���׿�. �ֱٿ��� JPA ����ϸ鼭 ���ǽ������� auto increment�� ����ϰ� �־��. ���� auto increment�� ������ ��쵵 �ְ����� �׷��� ���� ��쵵 ���ٰ� �����ؿ�. ���� DB ������ �� �� ���̺��� id�� � ����� ����ϳ���?
UUID�� ����ϴ� �͵� �ϳ��� ����� �� �� ������ ��������. UUID ��뿡 ���� ������� JPA Implementation Patterns: Using UUIDs As Primary Keys �������� �ٷ�� �ְ�, ������ �غ��ϴ� ����� ��ۿ��� �� �� �ֳ׿�.
���̺� id�� ������ �� � ������� �����ϳ���? ���� ���� �ʹ� �ƹ� �������� id�� �߰��ϰ� �ִٴ� ������ ��� ���� ���� ���ϴ�.',
CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(5, 'johnburr',
'��Ŭ���� JRE������ ���ؼ� ������ �帳�ϴ�.', 
'�̰����� ���� ��Ŭ������ jre�� ���ؼ� 3���� ������ ���ɴϴ�.
jre ���� ����
����ȯ�� ����(execution environment)
�����Ϸ� ����',
CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(6, '�ڹ�����',
'���α׷��Ӱ� �˾ƾ��� �⺻ ������ �������ϱ�?', 
'���� �����ΰ� �����ϴٰ� ����ü ���α׷��Ӱ� �˾ƾ��ϴ� �⺻ ������ �������ϱ��� �ǹ��� �����. ���� ��ǻ�� �⺻ ����, ��Ʈ��ũ, �ڷ� ����, �˰���, C, C++, �ڹ�, �پ��� �����ӿ�ũ ��� ��� ������ ���ϸ� �������� ��� ������ �н��ϱ⿡�� ������ ������ �ʹ� ����ϱ� �����̴�.',
CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(7, 'javajigi',
'javascript �н��ϱ� ���� ���̺귯���� ��õ�Ѵٸ�...', 
'�̹� slipp���� �����ϴ� 5��° ���͵� ������ trello�� ��Ű��ó�� �м��ϰ�, trello���� ����ϴ� ����� �н��ϴ� �����̴�. �� ���̵��� ���͵� �����ϰ� �� ���� http://www.mimul.com/pebble/default/2014/03/17/1395028081476.html ���� ���� ���͵� ������ ������ ���� ���ڴٴ� ������ �ߴ�.
�̹� ���͵� �����ϸ鼭 ���� ���� ���� javascript�� �����Ѵ�. ���ݱ��� javascript�� ����� ������ ���� �ְ� ����� ������ ���� ������ �̹� ��ȸ�� ƴƴ�� �н��� ������ �����ϰ� �ִ�. ��, �н� ����� ���ݱ����ʹ� �ٸ��� ���� �ҽ� ���̺귯�� �߿��� ������ ���� �ϳ� ��� �ҽ� �ڵ带 �����鼭 �н��ϴ� ������� ������ ������ �Ѵ�. �ƹ����� å �ѱ��� ó������ �����鼭 �ܼ� �����ϰ� �����ϱ� ���ٴ� �� ����� ���� �������� ��� �����̴�. javascript�� ���� ��Ÿ�ϵ� ������ �� �ֱ� ������ ���� ���� ����̶� �����Ѵ�.
Ȥ�� javascript�� �н��ϱ� ���� ���̺귯���� ������? �ҽ� �ڵ� ���� ���� ���� �����鼭 �ҽ� �ڵ� ��Ÿ�Ͽ����� ��� ���� ���� �׷� ���̺귯���� �� ���ڴ�.',
CURRENT_TIMESTAMP(), 2);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
('eungju',
'http://underscorejs.org/docs/underscore.html Underscore.js �����մϴ�!
���ϵ� ����, �ڵ嵵 ���� �ʰ�, �ڹٽ�ũ��Ʈ�� �� �⺻ API�� �����ϴ� ��ɵ��̶� �ڹٽ�ũ��Ʈ ���ؿ� ������ �˴ϴ�. �������� ���̺귯�� ��ü�� ���� �����մϴ�.', 
CURRENT_TIMESTAMP(), 7);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
('Hanghee Yi',
'������ھ� ���� ��õ�����.
�ٸ� �ֽ� ������ �����ϴ� �ͺ��ٴ� 0.10.0 �������� ���°� �� ��������.
�ڵ��� ��õ�絵 �� �� �ְ�, ����ȭ���� ���� �ڵ���� ����� �״�� �ΰ� ����ȭ�Ǿ� ���� �� ���� ��̰� �ֽ��ϴ� :)', 
CURRENT_TIMESTAMP(), 7);

INSERT INTO QUESTIONS (questionId, writer, title, contents, createdDate, countOfAnswer) VALUES
(8, '�ڹ�����',
'anonymous inner class�� final �������� �����ؾ� �ϴ� ������?', 
'���� �ڹ� 8�� �߰��� ���ٿ� ������ ������ �дٰ� ������ ���� ������ �־� �ñ����� �����.
���� ǥ���Ŀ��� ������ �����ϴ� �۾��� �����忡 �������� �ʴ�. - ���� ���� ������ �ڹ�8 28������...
���� ǥ������ ���� ������ anonymous inner class�� ���� �뵵�� �Ǵ����� �� ������ anonymous inner class������ final �������� ������ �� �־���.
���ݱ��� anonymous inner class���� final ������ �����ϴ� ������ ���� method�� Context�� anonymous inner class �ν��Ͻ����� Ȯ��Ǳ� ������ anonymous inner class ������ ���� ������ ��� �׿� ���� side effect�� ���� ���ɼ��� ���� final�� �����ϴ� ������ �����ߴ�.
�׷��� �� ������ �����忡 �������� �ʱ� ������ ���� ǥ���Ŀ��� ���� ���� �����ϴ� ���� ���´ٰ� �̾߱��ϰ� �ִ�. �� �����忡 �������� ���� ���ϱ�?',
CURRENT_TIMESTAMP(), 3);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
('jhindhal.jhang',
'Thread safe �� final�� ���谡 �ִ°����� �ٸ��� ���� �ϴ°� �ƴѰ�?
���� lambda�� ������ �� �� final ������ ���� ���� ���� ���� finalȿ��ó�� ��� �Ѵٸ� (�б⸸ �Ѵ� ����...) ��� ���� �ϴ�
Final �� �� lambda�� ���� ���� ���� thread safe�ϰ� ���α׷��� �ϱ� ���� final(�Ǵ� finaló��)�� �ؾ� �Ѵٴ� �ǹ̰� �ƴұ�? ���� �ϴµ�...', 
CURRENT_TIMESTAMP(), 8);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
('����',
'���� ���� �𸣰�����, �׳� ����� �������.
�ϴ� ������ ���� �ֱ��, ���� �ƴ� ���۷����� ���� �μ�ȿ���� �����ϰ�,
������ ���������� ������,
������ �����ϸ�, �������� �ν��Ͻ� ������ ����ϴ� ���� �����忡 �����ұ��? �������� �������?
���� ���� �ƶ��ΰ� ������ ^^;;
�� �׷��� ���� "����"�̶�� �Ǿ��ֳ׿�. ���� �ٸ� �ǹ��ΰ�.. ^^;;', 
CURRENT_TIMESTAMP(), 8);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
('Toby Lee',
'���ٽĿ��� ���Ǵ� ������� ���ٽ� ���ο��� ���ǵ� ���� �����̰ų� ���ٽ��� ����� �ܺ��� ������ �����ϴ� �����ٵ�, ���ڶ�� �ƹ��� �����ص� ������ ������ ����, ���ڴ� ���� ��ü�� ����� �ȵ��ٵ�. �� ������ ���� ������ ���ذ� �� ��.', 
CURRENT_TIMESTAMP(), 8);