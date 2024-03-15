CREATE TABLE `data_platform_campaign_header_doc_data`
(
  `Campaign`                       int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Campaign`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMCampaignHeaderDocData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMCampaignHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
