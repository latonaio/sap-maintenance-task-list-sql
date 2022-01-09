CREATE TABLE `sap_maintenance_task_list_strategy_package_data`
(
  `TaskListType`                   varchar(1) NOT NULL,
  `TaskListGroup`                  varchar(8) NOT NULL,
  `TaskListGroupCounter`           varchar(2) NOT NULL,
  `TaskListSequence`               varchar(6) NOT NULL,
  `TaskListOperationInternalID`    varchar(8) DEFAULT NULL,
  `MaintenancePackage`             varchar(2) DEFAULT NULL,
  `MaintPckgTskListOpAllocIntNmbr` varchar(8) DEFAULT NULL,
  `MaintenancePackageText`         varchar(30) DEFAULT NULL,
  `MaintenanceTaskListOperation`   varchar(4) DEFAULT NULL,
  `OperationText`                  varchar(40) DEFAULT NULL,
  `MaintTaskListSubOperation`      varchar(4) DEFAULT NULL,
  `ChangeNumber`                   varchar(12) DEFAULT NULL,
    PRIMARY KEY (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`, `TaskListSequence`),
    CONSTRAINT `SAPMaintenanceTaskListStrategyPackageData_fk` FOREIGN KEY (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`) REFERENCES `sap_maintenance_task_list_header_data` (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
