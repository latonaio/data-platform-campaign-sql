CREATE TABLE `data_platform_campaign_counter_data`
(
  `Campaign`                         int(16) NOT NULL,
  `NumberOfLikes`                    int(10) DEFAULT NULL,
  `NumberOfParticipations`           int(10) DEFAULT NULL,
  `NumberOfAttendances`              int(10) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`Campaign`),

    CONSTRAINT `DPFMCampaignCounterData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
