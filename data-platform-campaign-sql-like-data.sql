CREATE TABLE `data_platform_campaign_like_data`
(
  `Campaign`                 int(16) NOT NULL,
  `BusinessPartner`          int(12) NOT NULL,
  `Like`                     tinyint(1) DEFAULT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,
  `LastChangeDate`           date NOT NULL,
  `LastChangeTime`           time NOT NULL,

    PRIMARY KEY (`Campaign`, `BusinessPartner`),

    CONSTRAINT `DPFMCampaignLikeData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignLikeDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
