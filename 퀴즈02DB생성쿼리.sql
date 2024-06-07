drop table `bookmark`;
select * from bookmark order by `id` DESC;

# 테이블 생성
create table `bookmark` (
	`id` int not null auto_increment primary key
    , `name` varchar(32) not null
    , `url` varchar(512) not null
    , `createdAt` timestamp default current_timestamp
    , `updatedAt` timestamp default current_timestamp
) ENGINE=InnoDB default charset=utf8mb4;

# 테이블에 데이터 추가
insert into `bookmark`
(`name`, `url`, `createdAt`, `updatedAt`)
values
('마론달', 'http://marondal.com', NOW(), NOW())
, ('구글', 'https://google.com', NOW(), NOW())
, ('네이버', 'https://naver.com', NOW(), NOW())
, ('다음', 'https://daum.net', NOW(), NOW());

-- 그외
insert into `bookmark`
(``, ``)
values
('', '');

delete from `bookmark` where `id` = 1;




