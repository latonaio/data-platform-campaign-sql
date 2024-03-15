CREATE TABLE `data_platform_campaign_game_data`
(
    `Campaign`                                          int(16) NOT NULL,
    `Game`                                              int(16) DEFAULT NULL,
    `CreationDate`                                      date NOT NULL,
    `LastChangeDate`                                    date NOT NULL,
    `IsReleased`                                        tinyint(1) DEFAULT NULL,
    `IsCancelled`                                       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                               tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`Campaign`, `Game`),
    
    CONSTRAINT `DPFMCampaignGameData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignGameDataGame_fk` FOREIGN KEY (`Game`) REFERENCES `data_platform_game_header_data` (`Game`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
