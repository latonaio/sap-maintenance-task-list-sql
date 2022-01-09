CREATE TABLE `sap_maintenance_task_list_operation_material_data`
(
  `TaskListType`                   varchar(1) NOT NULL,
  `TaskListGroup`                  varchar(8) NOT NULL,
  `TaskListGroupCounter`           varchar(2) NOT NULL,
  `TaskListSequence`               varchar(6) NOT NULL,
  `TaskListOperationInternalID`    varchar(8) NOT NULL,
  `TaskListOpBOMItmIntVersCounter` varchar(8) NOT NULL,
  `TaskListOpBOMItmInternalID`     varchar(8) NOT NULL,
  `Material`                       varchar(40) DEFAULT NULL,
  `MaterialName`                   varchar(40) DEFAULT NULL,
  `BillOfMaterialItemQuantity`     varchar(15) DEFAULT NULL,
  `BillOfMaterialItemCategory`     varchar(1) DEFAULT NULL,
  `BillOfMaterialItemUnit`         varchar(3) DEFAULT NULL,
  `ResvnIsMRPRlvtOrPurReqnIsCrted` varchar(1) DEFAULT NULL,
  `MatlCompIsMarkedForBackflush`   tinyint(1) DEFAULT NULL,
  `SafetyRelevantObject`           varchar(40) DEFAULT NULL,
  `BillOfMaterialItemCategoryDesc` varchar(30) DEFAULT NULL,
  `MatlsPlngRelevancyCodeName`     varchar(60) DEFAULT NULL,
  `SafetyRelevanceActionDesc`      varchar(30) DEFAULT NULL,
    PRIMARY KEY (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`, `TaskListSequence`, `TaskListOperationInternalID`, `TaskListOpBOMItmIntVersCounter`, `TaskListOpBOMItmInternalID`),
    CONSTRAINT `SAPMaintenanceTaskListOperationMaterialData_fk` FOREIGN KEY (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`) REFERENCES `sap_maintenance_task_list_header_data` (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
