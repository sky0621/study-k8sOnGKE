
-- +migrate Up
CREATE TABLE IF NOT EXISTS `notice` (
  `id` varchar(64) NOT NULL,
  `sentence` varchar(256) NOT NULL,
  `create_user` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(256) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

-- +migrate Down
DROP TABLE IF EXISTS `notice`;
