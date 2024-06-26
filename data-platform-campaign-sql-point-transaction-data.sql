CREATE TABLE `data_platform_campaign_point_transaction_data`
(
  `Campaign`                         int(16) NOT NULL,
  `Sender`                           int(12) NOT NULL,
  `Receiver`                         int(12) NOT NULL,
  `PointConditionRecord`             int(12) NOT NULL,
  `PointConditionSequentialNumber`   int(2) NOT NULL,
  `PointTransaction`                 int(20) NOT NULL,
  `PointSymbol`                      varchar(5) NOT NULL,
  `PointTransactionType`             varchar(3) NOT NULL,
  `PointConditionType`               varchar(4) NOT NULL,
  `PointConditionRateValue`          float(13) NOT NULL,
  `PointConditionRatio`              float(6) NOT NULL,
  `PlusMinus`                        varchar(1) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Campaign`, `Sender`, `Receiver`, `PointConditionRecord`, `PointConditionSequentialNumber`),

    CONSTRAINT `DPFMCampaignPointTransactionData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignPointTransactionDataSender_fk` FOREIGN KEY (`Sender`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMCampaignPointTransactionDataReceiver_fk` FOREIGN KEY (`Receiver`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMCampaignPointTransactionDataPointTransaction_fk` FOREIGN KEY (`PointTransaction`) REFERENCES `data_platform_point_transaction_header_data` (`PointTransaction`),
    CONSTRAINT `DPFMCampaignPointTransactionDataCampaignPointConditionElement_fk` FOREIGN KEY (`Campaign`, `PointConditionRecord`, `PointConditionSequentialNumber`) REFERENCES `data_platform_campaign_point_condition_element_data` (`Campaign`, `PointConditionRecord`, `PointConditionSequentialNumber`),
    CONSTRAINT `DPFMCampaignPointConditionElementDataPointSymbol_fk` FOREIGN KEY (`PointSymbol`) REFERENCES `data_platform_point_symbol_point_symbol_data` (`PointSymbol`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
