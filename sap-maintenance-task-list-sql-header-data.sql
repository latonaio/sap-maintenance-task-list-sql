CREATE TABLE `sap_maintenance_task_list_header_data`
(
  `TaskListType`                 varchar(1) NOT NULL,
  `TaskListGroup`                varchar(8) NOT NULL,
  `TaskListGroupCounter`         varchar(2) NOT NULL,
  `TaskListVersionCounter`       varchar(8) NOT NULL,
  `MaintenancePlanningPlant`     varchar(4) DEFAULT NULL,
  `TaskListStatus`               varchar(3) DEFAULT NULL,
  `TaskListStatusDesc`           varchar(40) DEFAULT NULL,
  `TechnicalObject`              varchar(40) DEFAULT NULL,
  `TaskListUsage`                varchar(3) DEFAULT NULL,
  `TaskListDesc`                 varchar(40) DEFAULT NULL,
  `WorkCenter`                   varchar(8) DEFAULT NULL,
  `MaintenanceStrategy`          varchar(6) DEFAULT NULL,
  `OperationSystemCondition`     varchar(1) DEFAULT NULL,
  `Assembly`                     varchar(40) DEFAULT NULL,
  `ChangeNumber`                 varchar(12) DEFAULT NULL,
  `ValidityStartDate`            varchar(80) DEFAULT NULL,
  `ValidityEndDate`              varchar(80) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,
  `LastChangeDate`               varchar(80) DEFAULT NULL,
  `CreationDate`                 varchar(80) DEFAULT NULL,
  `Plant`                        varchar(4) DEFAULT NULL,
  `ResponsiblePlannerGroup`      varchar(3) DEFAULT NULL,
  `Equipment`                    varchar(18) DEFAULT NULL,
  `FunctionalLocationLabelName`  varchar(40) DEFAULT NULL,
  `TaskListIsHierarchical`       tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`TaskListType`, `TaskListGroup`, `TaskListGroupCounter`, `TaskListVersionCounter`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
