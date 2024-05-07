CREATE TABLE `data_platform_campaign_event_data`
(
    `Campaign`                         int(16) NOT NULL,
    `Event`                            int(16) NOT NULL,
    `CreationDate`                     date NOT NULL,
    `LastChangeDate`                   date NOT NULL,
    `IsReleased`                       tinyint(1) DEFAULT NULL,
    `IsCancelled`                      tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Campaign`, `Event`),
    
    CONSTRAINT `DPFMCampaignEventData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignEventDataEvent_fk` FOREIGN KEY (`Event`) REFERENCES `data_platform_event_header_data` (`Event`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
