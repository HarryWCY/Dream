drop sequence travel_user_id;
drop sequence travel_address_id;
drop sequence travel_route_id;
drop sequence travel_routeday_id;
drop sequence travel_routeorder_id;
drop sequence travel_cater_id;
drop sequence travel_specialty_id;

create sequence travel_user_id;
create sequence travel_address_id;
create sequence travel_route_id;
create sequence travel_routeday_id;
create sequence travel_routeorder_id;
create sequence travel_cater_id
create sequence travel_specialty_id;

drop table travel_user;
drop table travel_address;
drop table travel_route;
drop table travel_routeday;
drop table travel_routeorder;
drop table travel_sights;
drop table travel_cater;
drop table travel_specialty;

create table travel_user(
	id number(11) not null,
	userName varchar2(128) not null,
	realName varchar2(128) not null,
	password varchar2(128) not null,
	phone varchar2(128),
	primary key(id)
);
insert into travel_user values(travel_user_id.nextval,'admin','123456','王二','13523457890');

create table travel_address(
	id number(11) not null,
	userName varchar2(128) not null,
	detail varchar2(225) not null,
	postCode varchar2(25),
	phone varchar2(128) not null,
	defaul number(11) not null,
	user_id number(11),
	primary key(id),
	constraint travel_address_user_id_fk foreign key(user_id)
	references travel_user(id)
);
insert into travel_address values(travel_address_id.nextval,'李二','安徽芜湖','123456','123456789',0,1);
insert into travel_address values(travel_address_id.nextval,'王二','安徽滁州','123456','123456789',1,1);

create table travel_route(
	id number(11) not null,
	image varchar2(25),
	routeNumber varchar2(25) not null,
	routeName varchar2(128) not null,
	startPlace varchar2(128),
	endPlace varchar2(128),
	oldPrice number(11,2),
	discount number(11,2),
	newPrice number(11,2),
	startTime date,
	endTime date,
	betweenTime number(6),
	comments number(6),
	purchasePeople number(6),
	primary key(id)
);
insert into travel_route values(travel_route_id.nextval,'route1.jpg','ROU00001','杭州-苏州-无锡3日游','杭州','无锡',800,0.75,600,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-04','yyyy-MM-DD'),3,34,35);
insert into travel_route values(travel_route_id.nextval,'route2.jpg','ROU00002','曲阜-泰山双高铁2日游','南京','泰山',500,0.75,375,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-03','yyyy-MM-DD'),2,34,35);
insert into travel_route values(travel_route_id.nextval,'route3.jpg','ROU00003','园林纯玩精品1日游','苏州','苏州',125,0.75,100,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-02','yyyy-MM-DD'),1,34,35);
insert into travel_route values(travel_route_id.nextval,'route4.jpg','ROU00004','南京一日游','南京','南京',125,0.75,100,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-02','yyyy-MM-DD'),1,34,35);
insert into travel_route values(travel_route_id.nextval,'route5.jpg','ROU00005','欢乐五星北京双高5日跟团游','南京','南京',3000,0.75,2250,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-06','yyyy-MM-DD'),5,34,35);
insert into travel_route values(travel_route_id.nextval,'route6.jpg','ROU00006','纯玩无购物黄山二日游','黄山','黄山',500,0.75,375,to_date('2018-01-02','yyyy-MM-DD'),to_date('2018-01-03','yyyy-MM-DD'),2,34,35);

create table travel_routeday(
	id number(11) not null,
	day number(11),
	startPlace varchar2(128),
	endPlace varchar2(128),
	spotName varchar2(128) not null,
	introduce varchar2(1024),
	image varchar2(128),
	route_id number(11) not null,
	primary key(id),
	constraint travel_routeday_route_id_fk foreign key(route_id)
	references travel_route(id)
);
insert into travel_routeday values(travel_routeday_id.nextval,1,'泰安','曲阜','三孔','山东曲阜的孔府、孔庙、孔林，统称曲阜“三孔”，是中国历代纪念孔子，推崇儒学的表征，以丰厚的文化积淀、悠久历史、宏大规模、丰富文物珍藏，以及科学艺术价值而著称。','route2_1.jpg',2);
insert into travel_routeday values(travel_routeday_id.nextval,2,'泰安','泰山','东岳泰山','泰山被古人视为“直通帝座”的天堂，成为百姓崇拜，帝王告祭的神山，有“泰山安，四海皆安”的说法。自秦始皇开始到清代，先后有13代帝王引次亲登泰山封禅或祭祀，另外有24代帝王遣官祭祀72次。','route2_2.jpg',2);
insert into travel_routeday values(travel_routeday_id.nextval,1,'苏州','苏州','苏州园林','苏州古典园林，简称苏州园林，是世界文化遗产、国家AAAAA级旅游景区，中国十大风景名胜之一。苏州古典园林素有“园林之城”之称，享有“江南园林甲天下，苏州园林甲江南”之美誉，誉为“咫尺之内再造乾坤”。','route3_1.jpg',3);
insert into travel_routeday values(travel_routeday_id.nextval,1,'南京','南京','南京总统府','南京总统府位于南京市玄武区长江路292号，是中国近代建筑遗存中规模最大、保存最完整的建筑群，也是南京民国建筑的主要代表之一，中国近代历史的重要遗址，现已辟为中国近代史遗址博物馆。','route4_1.jpg',4);
insert into travel_routeday values(travel_routeday_id.nextval,1,'黄山','黄山','黄山','黄山位于安徽省南部黄山市境内，有72峰，主峰莲花峰海拔1864米，与光明顶、天都峰并称三大黄山主峰，为36大峰之一。黄山是安徽旅游的标志，是中国十大风景名胜唯一的山岳风光。','route6_1.jpg',6);
insert into travel_routeday values(travel_routeday_id.nextval,2,'黄山','黄山','宏村','宏村有“画里乡村”之称，全镇完好保存明清民居140余幢，主要景点有：南湖春晓，书院诵读，月沼风荷，牛肠水圳，双溪映碧，亭前古树，雷岗夕照等。','route6_2.jpg',6);

create table travel_routeorder(
	id number(11) not null,
	adultCount number(11),
	childCount number(11),
	insuranceCount number(11),
	insurancePrice number(11,2),
	isInvoice number(6),
	sumPrice number(11,2),
	route_id number(11),
	user_id number(11),
	primary key(id),
	constraint travel_routeorder_route_id_fk foreign key(route_id)
	references travel_route(id),
	constraint travel_routeorder_user_id_fk foreign key(user_id)
	references travel_user(id)
);

create table travel_cater(
	id number(11) not null,
	catername varchar2(128) not null,
	lv varchar2(25),
	phone varchar2(128),
	city varchar2(128),
	address varchar2(128),
	type number(11),
	image varchar2(25),
	detail varchar2(1024),
	primary key(id)
);
insert into travel_cater values(travel_cater_id.nextval,'杭州新延安饭店','p_tar03.jpg','0898-00223373','杭州','下城区延安路直戒坛寺巷20号',0,'cater1.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');
insert into travel_cater values(travel_cater_id.nextval,'浙旅名庭酒店','p_tar04.jpg','0898-00224242','杭州','下城区延安路直戒坛寺巷21号',1,'cater4.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');
insert into travel_cater values(travel_cater_id.nextval,'中式饭店','p_tar04.jpg','0898-00224242','苏州','下城区延安路直戒坛寺巷21号',0,'cater5.jpg','海南四大名菜东山羊、和乐蟹、港北对虾、后安鲻鱼。其位于之首的东山羊产于万宁市东山岭。其美味据传是因羊食东山岭的稀有草木所致，因此肥而不腻、食无膻味，且滋补养颜防湿热，具有膘肥皮薄肉嫩无膻及皮下脂肪适中、肥而不腻、汤味浓稠乳白、气味芳香、味道鲜美、营养滋补和美容之特点。东山羊自宋朝以来就已享有盛名，并曾被列为“贡品”。');

create  table travel_specialty(
	id number(11) not null,
	specialtyName varchar2(128) not null,
	introduce varchar2(255)  not null,
	preferentialPrice number(11,2),
	shopPrice number(11,2),
	weight number(11,2),
	distribution varchar2(255),
	courierFees number(11,2),
	monthlySales number(11,2),
	evaluation varchar2(18),
	evalCount number(11,2),
	productParamenters varchar2(225),
	factoryName varchar2(128),
	factoryPhone varchar2(128),
	stroageMetod varchar2(225),
	foodAdditives varchar2(225),
	series varchar2(128),
	rank varchar2(128),
	productDate date,
	productCode varchar2(128),
	factoryAddress varchar2(128),
	burdenSheet varchar2(128),
	expirationDate varchar2(128),
	paching varchar2(128),
	BarCode varchar2(128),
	organism varchar2(128),
	origin varchar2(128),
	image varchar2(128),
	primary key(id)
);
insert  into travel_specialty values(travel_specialty_id.nextval,'高邮鸭蛋','油多，下饭菜',55.00,179.00,500,'安徽浙江',0.00,800,'4.5分',45,'生产许可证编号：650117020039','扬州高邮鸭蛋有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','高邮鸭蛋特级500g 一捆','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','扬州105号367院内房屋',
'鸭蛋','180天','袋装','650117020039','否','江苏','高邮鸭蛋.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'北京烤鸭','油而不腻',200.00,300.00,500,'安徽浙江',4.00,800,'4.5分',45,'生产许可证编号：650117020040','北京全聚德烤鸭店','138384456','不宜长期存放',
'无','北京烤鸭特级500g 一只','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5635','北京长安街',
'烤鸭','10天','真空','650117020033','否','北京','北京烤鸭.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'葡萄干','酸甜',10.00,20.00,500,'北京',2.00,800,'4.5分',45,'生产许可证编号：650134020039','新疆葡萄干有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','新疆葡萄干500g 一袋','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5335','新疆乌鲁木齐',
'葡萄干','180天','袋装','650117020039','否','新疆','新疆葡萄干.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'砀山酥梨','酥甜',55.00,120.00,500,'江苏浙江',0.00,800,'4.5分',45,'生产许可证编号：650117000039','安徽砀山果园','13838438','置于阴凉干燥处 ',
'无','砀山酥梨特级500g 一箱','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','安徽砀山',
'梨','20天','箱装','650117020039','否','安徽','砀山酥梨.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'盐水鸭','飘香四溢 新鲜',55.00,120.00,500,'江苏浙江',0.00,800,'4.5分',45,'生产许可证编号：650117000039','江苏南京盐水鸭有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','盐水鸭 一袋','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','江苏南京',
'鸭','20天','真空','650117020039','否','江苏','盐水鸭.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'秦楠卤鹅','飘香四溢',55.00,120.00,500,'江苏安徽',0.00,800,'4.5分',45,'生产许可证编号：650117000039','安徽天长秦楠卤菜店','13838438','置于阴凉干燥处 ',
'无','秦楠卤鹅500g 一只','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','安徽天长秦楠',
'鹅','10天','真空','650117020039','否','安徽','秦楠卤鹅.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'老陈醋','酸辣',23.00,80.00,500,'江苏浙江',0.00,800,'4.5分',45,'生产许可证编号：650117000039','山西老陈醋有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','山西老陈醋500g 一瓶','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','山西太原',
'醋','180天','瓶装','650117020039','否','山西','山西老陈醋.jpg');
insert  into travel_specialty values(travel_specialty_id.nextval,'大闸蟹','个大，新鲜',55.00,120.00,500,'江苏浙江',0.00,800,'4.5分',45,'生产许可证编号：650117000039','阳澄湖大闸蟹有限公司加工厂','13838438','置于阴凉干燥处 ',
'无','阳澄湖大闸蟹4个 一捆','特级',to_date('2018-01-03','yyyy-MM-DD'),'GB/T5835','苏州105号367院内房屋',
'大闸蟹','20天','箱装','650117020039','否','江苏','阳澄湖大闸蟹.jpg');

