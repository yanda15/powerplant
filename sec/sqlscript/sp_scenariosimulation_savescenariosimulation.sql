USE [ecsecnew]
GO
/****** Object:  StoredProcedure [dbo].[SaveScenarioSimulation]    Script Date: 7/29/2016 9:23:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SaveScenarioSimulation]
	@START_PERIOD DATETIME = NULL,
	@END_PERIOD DATETIME = NULL,
	@NAME NVARCHAR(50) = NULL,
	@DESC NVARCHAR(50) = NULL,
	@HISTORIC_REVENUE FLOAT = 0,
	@HISTORIC_LABOR FLOAT = 0,
	@HISTORIC_MATERIAL FLOAT = 0,
	@HISTORIC_SERVICE FLOAT = 0,
	@HISTORIC_OPERATING FLOAT = 0,
	@HISTORIC_MAINTENANCE FLOAT = 0,
	@HISTORIC_VALUE_EQUATION FLOAT = 0,
	@FUTURE_REVENUE FLOAT = 0,
	@FUTURE_LABOR FLOAT = 0,
	@FUTURE_MATERIAL FLOAT = 0,
	@FUTURE_SERVICE FLOAT = 0,
	@FUTURE_OPERATING FLOAT = 0,
	@FUTURE_MAINTENANCE FLOAT = 0,
	@FUTURE_VALUE_EQUATION FLOAT = 0,
	@DIFFERENTIAL_REVENUE FLOAT = 0,
	@DIFFERENTIAL_LABOR FLOAT = 0,
	@DIFFERENTIAL_MATERIAL FLOAT = 0,
	@DIFFERENTIAL_SERVICE FLOAT = 0,
	@DIFFERENTIAL_OPERATING FLOAT = 0,
	@DIFFERENTIAL_MAINTENANCE FLOAT = 0,
	@DIFFERENTIAL_VALUE_EQUATION FLOAT = 0
AS
BEGIN TRY
	INSERT INTO ScenarioSimulation (
		StartPeriod,
		EndPeriod,
		Name,
		Description,
		HistoricResultRevenue,
		HistoricResultLaborCost,
		HistoricResultMaterialCost,
		HistoricResultServiceCost,
		HistoricResultOperationCost,
		HistoricResultMaintenanceCost,
		HistoricResultValueEquation,
		FutureResultRevenue,
		FutureResultLaborCost,
		FutureResultMaterialCost,
		FutureResultServiceCost,
		FutureResultOperationCost,
		FutureResultMaintenanceCost,
		FutureResultValueEquation,
		DifferentialRevenue,
		DifferentialLaborCost,
		DifferentialMaterialCost,
		DifferentialServiceCost,
		DifferentialOperationCost,
		DifferentialMaintenanceCost,
		DifferentialValueEquation,
		LastUpdate
	)
	OUTPUT inserted.Id 
	VALUES(
	@START_PERIOD,
	@END_PERIOD,
	@NAME,
	@DESC,
	@HISTORIC_REVENUE,
	@HISTORIC_LABOR,
	@HISTORIC_MATERIAL,
	@HISTORIC_SERVICE,
	@HISTORIC_OPERATING,
	@HISTORIC_MAINTENANCE,
	@HISTORIC_VALUE_EQUATION,
	@FUTURE_REVENUE,
	@FUTURE_LABOR,
	@FUTURE_MATERIAL,
	@FUTURE_SERVICE,
	@FUTURE_OPERATING,
	@FUTURE_MAINTENANCE,
	@FUTURE_VALUE_EQUATION,
	@DIFFERENTIAL_REVENUE,
	@DIFFERENTIAL_LABOR,
	@DIFFERENTIAL_MATERIAL,
	@DIFFERENTIAL_SERVICE,
	@DIFFERENTIAL_OPERATING,
	@DIFFERENTIAL_MAINTENANCE,
	@DIFFERENTIAL_VALUE_EQUATION,
	GETDATE()
	)
END TRY
BEGIN CATCH
	 PRINT 'Error: ' + error_message()
END CATCH