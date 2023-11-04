
-- 데이터베이스 `translate_db`에 `django_session` 테이블 생성
CREATE TABLE `translate_db`.`django_session` (
  `session_key` varchar(40) NOT NULL PRIMARY KEY,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- `inneats_db`의 데이터를 `translate_db`의 `django_session` 테이블로 복사
INSERT INTO `translate_db`.`django_session` (`session_key`, `session_data`, `expire_date`)
SELECT `session_key`, `session_data`, `expire_date`
FROM `inneats_db`.`django_session`;