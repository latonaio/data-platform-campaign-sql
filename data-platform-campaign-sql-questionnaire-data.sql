CREATE TABLE `data_platform_campaign_questionnaire_data`
(
  `Campaign`                 int(16) NOT NULL,
  `Respondent`               int(12) NOT NULL,
  `Questionnaire`            int(20) NOT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,

    PRIMARY KEY (`Campaign`, `Respondent`),

    CONSTRAINT `DPFMCampaignQuestionnaireData_fk` FOREIGN KEY (`Campaign`) REFERENCES `data_platform_campaign_header_data` (`Campaign`),
    CONSTRAINT `DPFMCampaignQuestionnaireDataRespondent_fk` FOREIGN KEY (`Respondent`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMCampaignQuestionnaireDataQuestionnaire_fk` FOREIGN KEY (`Questionnaire`) REFERENCES `data_platform_questionnaire_header_data` (`Questionnaire`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
