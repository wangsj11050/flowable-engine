
ALTER TABLE [ACT_FO_FORM_INSTANCE] ADD [SCOPE_ID_] [varchar](255)
GO

ALTER TABLE [ACT_FO_FORM_INSTANCE] ADD [SCOPE_TYPE_] [varchar](255)
GO

ALTER TABLE [ACT_FO_FORM_INSTANCE] ADD [SCOPE_DEFINITION_ID_] [varchar](255)
GO

INSERT INTO [ACT_DMN_DATABASECHANGELOG] ([ID], [AUTHOR], [FILENAME], [DATEEXECUTED], [ORDEREXECUTED], [MD5SUM], [DESCRIPTION], [COMMENTS], [EXECTYPE], [CONTEXTS], [LABELS], [LIQUIBASE], [DEPLOYMENT_ID]) VALUES ('2', 'flowable', 'changelog-xml/form/6200.xml', GETDATE(), 3, '7:4850f9311e7503d7ea30a372e79b4ea2', 'addColumn tableName=ACT_FO_FORM_INSTANCE', '', 'EXECUTED', NULL, NULL, '3.5.3', '7878887712')
GO

insert into ACT_GE_PROPERTY values ('common.schema.version', '6.2.0.0', 1);
insert into ACT_GE_PROPERTY values ('identitylink.schema.version', '6.2.0.0', 1);
alter table ACT_RU_TASK add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_TASK add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_TASK add SCOPE_TYPE_ nvarchar(255);
alter table ACT_RU_TASK add SCOPE_DEFINITION_ID_ nvarchar(255);

create index ACT_IDX_TASK_SCOPE on ACT_RU_TASK(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_TASK_SUB_SCOPE on ACT_RU_TASK(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_TASK_SCOPE_DEF on ACT_RU_TASK(SCOPE_DEFINITION_ID_, SCOPE_TYPE_);

insert into ACT_GE_PROPERTY values ('task.schema.version', '6.2.0.0', 1);
alter table ACT_RU_VARIABLE add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_VARIABLE add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_VARIABLE add SCOPE_TYPE_ nvarchar(255);

create index ACT_IDX_RU_VAR_SCOPE_ID_TYPE on ACT_RU_VARIABLE(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_RU_VAR_SUB_ID_TYPE on ACT_RU_VARIABLE(SUB_SCOPE_ID_, SCOPE_TYPE_);

insert into ACT_GE_PROPERTY values ('variable.schema.version', '6.2.0.0', 1);
insert into ACT_GE_PROPERTY values ('job.schema.version', '6.2.0.0', 1);
alter table ACT_RU_EXECUTION add CALLBACK_ID_ nvarchar(255);
alter table ACT_RU_EXECUTION add CALLBACK_TYPE_ nvarchar(255);

update ACT_GE_PROPERTY set VALUE_ = '6.2.0.0' where NAME_ = 'schema.version';
alter table ACT_HI_TASKINST add SCOPE_ID_ nvarchar(255);
alter table ACT_HI_TASKINST add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_HI_TASKINST add SCOPE_TYPE_ nvarchar(255);
alter table ACT_HI_TASKINST add SCOPE_DEFINITION_ID_ nvarchar(255);

create index ACT_IDX_HI_TASK_SCOPE on ACT_HI_TASKINST(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_HI_TASK_SUB_SCOPE on ACT_HI_TASKINST(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_HI_TASK_SCOPE_DEF on ACT_HI_TASKINST(SCOPE_DEFINITION_ID_, SCOPE_TYPE_);
alter table ACT_HI_VARINST add SCOPE_ID_ nvarchar(255);
alter table ACT_HI_VARINST add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_HI_VARINST add SCOPE_TYPE_ nvarchar(255);

create index ACT_IDX_HI_VAR_SCOPE_ID_TYPE on ACT_HI_VARINST(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_HI_VAR_SUB_ID_TYPE on ACT_HI_VARINST(SUB_SCOPE_ID_, SCOPE_TYPE_);
