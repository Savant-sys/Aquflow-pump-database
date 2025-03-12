
-- Drop existing database if needed and create a new one
DROP DATABASE IF EXISTS `Local_Pump_Info`;
CREATE DATABASE `Local_Pump_Info`;
USE `Local_Pump_Info`;

-- Create pumps table
CREATE TABLE `pumps` (
	id INT AUTO_INCREMENT PRIMARY KEY,
    `Model` VARCHAR(255),
    `Series` VARCHAR(255),
    `Simplex_Duplex` VARCHAR(50),
    `Pump_Price` DECIMAL(10,3) NULL,
    `TEFC_AC_Price` DECIMAL(10,3) NULL,
    `XPFC_AC_Price` DECIMAL(10,3) NULL,
    `TEFC_DC_Price` VARCHAR(20) NULL,
    `XPFC_DC_Price` VARCHAR(20) NULL,
    `GPH_60Hz` DECIMAL(10,2) NULL,
    `GPH_50Hz` DECIMAL(10,2) NULL,
    `LPH_60Hz` DECIMAL(10,2) NULL,
    `LPH_50Hz` DECIMAL(10,2) NULL,
    `Max_Pressure_PSI` DECIMAL(10,2) NULL,
    `Max_Pressure_Bar` DECIMAL(10,2) NULL,
    `Max_Pressure_PSI_High_Pressure_Adder` DECIMAL(10,2) NULL,
    `Max_Pressure_Bar_High_Pressure_Adder` DECIMAL(10,2) NULL,
    `High_Pressure_Adder_Price` VARCHAR(20) NULL,
    `Max_SPM` INT NULL,
    `Viton` DECIMAL(10,3) NULL,
    `Hypalon` DECIMAL(10,3) NULL,
    `EPDM` DECIMAL(10,3) NULL,
    `Liquid_End_Material` VARCHAR(255) NULL,
    `Conductive_Leak_Detection_Price_Adder` DECIMAL(10,1) NULL,
    `Vacuum_Leak_Detection_Price_Adder` DECIMAL(10,1) NULL,
    -- `Flange_Adder_Price` VARCHAR(20) NULL,
    `Flange_Size` VARCHAR(20) NULL,
    `Ball_Size` VARCHAR(20) NULL,
    -- `Liq_Inlet` VARCHAR(255) NULL,
    -- `Liq_Outlet` VARCHAR(255) NULL,
     `Motor_HP_AC` DECIMAL(10,2) NULL,
	 `Motor_HP_AC_High_Pressure` DECIMAL(10,2) NULL,
     `Motor_HP_DC_TEFC` DECIMAL(10,2) NULL,
     `Motor_HP_DC_XPFC` DECIMAL(10,2) NULL
);