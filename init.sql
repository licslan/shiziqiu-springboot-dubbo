CREATE TABLE `nc_goods` (
  `goods_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '��ƷID',
  `goods_uuid` varchar(35) NOT NULL COMMENT '��Ʒ���ID',
  `goods_name` varchar(50) NOT NULL COMMENT '��Ʒ����',
  `goods_num` int(11) NOT NULL COMMENT '��Ʒ����',
  `goods_price` double(9,2) NOT NULL COMMENT '��Ʒ�ۼ�',
  `goods_purch_price` double(9,2) NOT NULL COMMENT '��Ʒ�ɹ���',
  `goods_concess_rate` double(9,2) NOT NULL DEFAULT '1.00' COMMENT '��Ʒ�Żݼ�',
  `goods_label` varchar(20) NOT NULL COMMENT '��Ʒ��ǩ',
  `goods_cover` varchar(150) NOT NULL COMMENT '��Ʒ����ͼ',
  `goods_desc` varchar(200) DEFAULT NULL COMMENT '�̻�����',
  `goods_status` tinyint(6) NOT NULL DEFAULT '1' COMMENT '1,�¼ܣ�2������3�����',
  `create_time` datetime NOT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '���ʱ��',
  `remark` varchar(200) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='��Ʒ��';


CREATE TABLE `nc_goods_details` (
  `goods_detail_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '��ƷID',
  `goods_id` int(20) NOT NULL COMMENT '��ƷID',
  `describe` varchar(550) NOT NULL COMMENT '����',
  `goods_images` varchar(500) NOT NULL COMMENT '��ƷչʾͼƬ��',
  `goods_video` varchar(200) NOT NULL COMMENT '��Ʒչʾ��Ƶ',
  `goods_selling_point` varchar(200) NOT NULL COMMENT '��Ʒ����',
  `goods_specific` varchar(100) NOT NULL COMMENT '��Ʒ���',
  `goods_size` varchar(100) NOT NULL DEFAULT '1.00' COMMENT '��Ʒ��С',
  `create_time` datetime NOT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '���ʱ��',
  `remark` varchar(200) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`goods_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ʒ����';

CREATE TABLE `nc_goods_evaluate` (
  `evaluate_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `goods_id` int(20) NOT NULL COMMENT '��ƷID',
  `goods_star` tinyint(2) NOT NULL COMMENT '1,2,3,4,5',
  `evaluate_status` tinyint(2) DEFAULT NULL COMMENT '״̬',
  `evaluate_desc` varchar(500) NOT NULL COMMENT '��������',
  `account_id` bigint(20) NOT NULL COMMENT '�û�ID',
  `account_avtar` varchar(200) NOT NULL COMMENT '�û�ͷ��',
  `account_nick_name` varchar(100) NOT NULL COMMENT '�û��ǳ�',
  `evaluate_images` varchar(500) DEFAULT NULL COMMENT '����ͼƬ����',
  `create_time` datetime NOT NULL COMMENT '���ʱ��',
  `remark` varchar(200) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`evaluate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ʒ����';

CREATE TABLE `nc_goods_express` (
  `express_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���ID',
  `goods_id` int(20) NOT NULL COMMENT '��ƷID',
  `account_id` bigint(20) NOT NULL COMMENT '�û�ID',
  `consign_name` varchar(20) NOT NULL COMMENT '�ջ���',
  `mobile` varchar(20) NOT NULL COMMENT '�ֻ�',
  `express_status` tinyint(2) DEFAULT NULL COMMENT '1�������У�2���ջ���3ʧЧ��4���˿�',
  `address` varchar(200) NOT NULL COMMENT '�û���ַ',
  `describe` varchar(200) NOT NULL COMMENT '����',
  `province` varchar(100) NOT NULL COMMENT 'ʡ',
  `province_id` int(20) DEFAULT NULL COMMENT 'ʡ��ID',
  `city` varchar(20) NOT NULL COMMENT '����',
  `city_id` int(20) DEFAULT NULL COMMENT '����ID',
  `area` varchar(20) NOT NULL COMMENT '����',
  `area_id` int(20) DEFAULT NULL COMMENT '����id',
  `create_time` datetime NOT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
  `remark` varchar(200) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`express_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Ʒ���';


CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;