
-- Drop existing database if needed and create a new one
DROP DATABASE IF EXISTS `Local_Pump_Info`;
CREATE DATABASE `Local_Pump_Info`;
USE `Local_Pump_Info`;

-- Create pumps table
CREATE TABLE `pumps` (
    `Model` VARCHAR(255),
    `Series` VARCHAR(255),
    `Simplex_Duplex` VARCHAR(50),
    `Pump_Price` DECIMAL(10,2) NULL,
    `TEFC_AC_Price` DECIMAL(10,2) NULL,
    `XPFC_AC_Price` DECIMAL(10,2) NULL,
    `TEFC_DC_Price` DECIMAL(10,2) NULL,
    `XPFC_DC_Price` DECIMAL(10,2) NULL,
    `GPH_60Hz` DECIMAL(10,2) NULL,
    `GPH_50Hz` DECIMAL(10,2) NULL,
    `LPH_60Hz` DECIMAL(10,2) NULL,
    `LPH_50Hz` DECIMAL(10,2) NULL,
    `Max_Pressure_PSI` DECIMAL(10,2) NULL,
    `Max_Pressure_Bar` DECIMAL(10,2) NULL,
    `Max_Pressure_PSI_HP_Adder` DECIMAL(10,2) NULL,
    `Max_Pressure_Bar_HP_Adder` DECIMAL(10,2) NULL,
    `HP_Adder_Price` DECIMAL(10,2) NULL
);

-- Insert data into the pumps table

    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3812-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.33, 
        1.94, 
        8.82, 
        7.35, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3812-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.33, 
        1.94, 
        8.82, 
        7.35, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3812-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.33, 
        1.94, 
        8.82, 
        7.35, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3812-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.33, 
        1.94, 
        8.82, 
        7.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3812-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.33, 
        1.94, 
        8.82, 
        7.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3814-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.7, 
        2.24, 
        10.22, 
        8.48, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3814-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.7, 
        2.24, 
        10.22, 
        8.48, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3814-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.7, 
        2.24, 
        10.22, 
        8.48, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3814-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.7, 
        2.24, 
        10.22, 
        8.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3814-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.7, 
        2.24, 
        10.22, 
        8.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3817-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.3, 
        2.74, 
        12.49, 
        10.37, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3817-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.3, 
        2.74, 
        12.49, 
        10.37, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3817-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.3, 
        2.74, 
        12.49, 
        10.37, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3817-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.3, 
        2.74, 
        12.49, 
        10.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3817-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.3, 
        2.74, 
        12.49, 
        10.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3829-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.46, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3829-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.46, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3829-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.46, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3829-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.46, 
        2.08, 
        1.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3829-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.46, 
        2.08, 
        1.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3858-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.91, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3858-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.91, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3858-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.91, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3858-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.91, 
        4.16, 
        3.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3858-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.91, 
        4.16, 
        3.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3897-04013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.85, 
        1.54, 
        7.0, 
        5.81, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3897-05013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.85, 
        1.54, 
        7.0, 
        5.81, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3897-06013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.85, 
        1.54, 
        7.0, 
        5.81, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3897-08013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.85, 
        1.54, 
        7.0, 
        5.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA4T3897-0A013', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.85, 
        1.54, 
        7.0, 
        5.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11312-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.0, 
        18.26, 
        83.28, 
        69.12, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11312-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.0, 
        18.26, 
        83.28, 
        69.12, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11312-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.0, 
        18.26, 
        83.28, 
        69.12, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11312-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.0, 
        18.26, 
        83.28, 
        69.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11312-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.0, 
        18.26, 
        83.28, 
        69.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11314-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.33, 
        97.29, 
        80.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11314-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.33, 
        97.29, 
        80.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11314-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.33, 
        97.29, 
        80.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11314-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.33, 
        97.29, 
        80.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11314-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.33, 
        97.29, 
        80.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11317-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.3, 
        25.98, 
        118.48, 
        98.34, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11317-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.3, 
        25.98, 
        118.48, 
        98.34, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11317-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.3, 
        25.98, 
        118.48, 
        98.34, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11317-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.3, 
        25.98, 
        118.48, 
        98.34, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11317-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.3, 
        25.98, 
        118.48, 
        98.34, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11329-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.33, 
        4.42, 
        20.18, 
        16.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11329-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.33, 
        4.42, 
        20.18, 
        16.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11329-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.33, 
        4.42, 
        20.18, 
        16.75, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11329-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.33, 
        4.42, 
        20.18, 
        16.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11329-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.33, 
        4.42, 
        20.18, 
        16.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11358-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.6, 
        8.8, 
        40.13, 
        33.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11358-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.6, 
        8.8, 
        40.13, 
        33.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11358-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.6, 
        8.8, 
        40.13, 
        33.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11358-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.6, 
        8.8, 
        40.13, 
        33.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11358-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.6, 
        8.8, 
        40.13, 
        33.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11397-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.8, 
        14.77, 
        67.38, 
        55.93, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11397-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.8, 
        14.77, 
        67.38, 
        55.93, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11397-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.8, 
        14.77, 
        67.38, 
        55.93, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11397-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.8, 
        14.77, 
        67.38, 
        55.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T11397-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.8, 
        14.77, 
        67.38, 
        55.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16212-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16214-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16217-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16229-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16258-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T16297-0X018', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5612-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.1, 
        4.23, 
        19.31, 
        16.02, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5612-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.1, 
        4.23, 
        19.31, 
        16.02, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5612-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.1, 
        4.23, 
        19.31, 
        16.02, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5612-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.1, 
        4.23, 
        19.31, 
        16.02, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5612-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.1, 
        4.23, 
        19.31, 
        16.02, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5614-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5614-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5614-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5614-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5614-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5617-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.4, 
        6.14, 
        28.01, 
        23.25, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5617-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.4, 
        6.14, 
        28.01, 
        23.25, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5617-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.4, 
        6.14, 
        28.01, 
        23.25, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5617-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.4, 
        6.14, 
        28.01, 
        23.25, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5617-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.4, 
        6.14, 
        28.01, 
        23.25, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5629-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.25, 
        1.04, 
        4.73, 
        3.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5629-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.25, 
        1.04, 
        4.73, 
        3.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5629-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.25, 
        1.04, 
        4.73, 
        3.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5629-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.25, 
        1.04, 
        4.73, 
        3.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5629-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.25, 
        1.04, 
        4.73, 
        3.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5658-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.85, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5658-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.85, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5658-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.85, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5658-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.85, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5658-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.85, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5697-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.2, 
        3.49, 
        15.9, 
        13.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5697-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.2, 
        3.49, 
        15.9, 
        13.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5697-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.2, 
        3.49, 
        15.9, 
        13.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5697-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.2, 
        3.49, 
        15.9, 
        13.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T5697-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.2, 
        3.49, 
        15.9, 
        13.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7512-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.05, 
        7.51, 
        34.26, 
        28.43, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7512-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.05, 
        7.51, 
        34.26, 
        28.43, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7512-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.05, 
        7.51, 
        34.26, 
        28.43, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7512-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.05, 
        7.51, 
        34.26, 
        28.43, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7512-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.05, 
        7.51, 
        34.26, 
        28.43, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7514-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.8, 
        8.96, 
        40.88, 
        33.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7514-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.8, 
        8.96, 
        40.88, 
        33.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7514-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.8, 
        8.96, 
        40.88, 
        33.93, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7514-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.8, 
        8.96, 
        40.88, 
        33.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7514-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.8, 
        8.96, 
        40.88, 
        33.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7517-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.1, 
        10.87, 
        49.59, 
        41.16, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7517-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.1, 
        10.87, 
        49.59, 
        41.16, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7517-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.1, 
        10.87, 
        49.59, 
        41.16, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7517-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.1, 
        10.87, 
        49.59, 
        41.16, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7517-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.1, 
        10.87, 
        49.59, 
        41.16, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7529-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.25, 
        1.87, 
        8.52, 
        7.07, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7529-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.25, 
        1.87, 
        8.52, 
        7.07, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7529-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.25, 
        1.87, 
        8.52, 
        7.07, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7529-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.25, 
        1.87, 
        8.52, 
        7.07, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7529-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.25, 
        1.87, 
        8.52, 
        7.07, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7558-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.74, 
        17.03, 
        14.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7558-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.74, 
        17.03, 
        14.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7558-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.74, 
        17.03, 
        14.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7558-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.74, 
        17.03, 
        14.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7558-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.74, 
        17.03, 
        14.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7597-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.5, 
        6.23, 
        28.39, 
        23.56, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7597-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.5, 
        6.23, 
        28.39, 
        23.56, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7597-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.5, 
        6.23, 
        28.39, 
        23.56, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7597-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.5, 
        6.23, 
        28.39, 
        23.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T7597-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.5, 
        6.23, 
        28.39, 
        23.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8712-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.5, 
        10.38, 
        47.32, 
        39.27, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8712-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.5, 
        10.38, 
        47.32, 
        39.27, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8712-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.5, 
        10.38, 
        47.32, 
        39.27, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8712-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.5, 
        10.38, 
        47.32, 
        39.27, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8712-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.5, 
        10.38, 
        47.32, 
        39.27, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8714-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.28, 
        56.02, 
        46.5, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8714-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.28, 
        56.02, 
        46.5, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8714-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.28, 
        56.02, 
        46.5, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8714-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.28, 
        56.02, 
        46.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8714-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.28, 
        56.02, 
        46.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8717-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.9, 
        14.86, 
        67.76, 
        56.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8717-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.9, 
        14.86, 
        67.76, 
        56.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8717-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.9, 
        14.86, 
        67.76, 
        56.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8717-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.9, 
        14.86, 
        67.76, 
        56.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8717-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        17.9, 
        14.86, 
        67.76, 
        56.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8729-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.05, 
        2.53, 
        11.55, 
        9.58, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8729-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.05, 
        2.53, 
        11.55, 
        9.58, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8729-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.05, 
        2.53, 
        11.55, 
        9.58, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8729-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.05, 
        2.53, 
        11.55, 
        9.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8729-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.05, 
        2.53, 
        11.55, 
        9.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8758-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8758-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8758-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8758-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8758-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.06, 
        23.09, 
        19.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8797-04014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.47, 
        38.61, 
        32.05, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8797-05014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.47, 
        38.61, 
        32.05, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8797-06014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.47, 
        38.61, 
        32.05, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8797-08014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.47, 
        38.61, 
        32.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ4T8797-0A014', 'Series 1000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.47, 
        38.61, 
        32.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3812-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3812-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3812-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3812-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3812-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3814-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.4, 
        4.5, 
        20.44, 
        17.03, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3814-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.4, 
        4.5, 
        20.44, 
        17.03, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3814-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.4, 
        4.5, 
        20.44, 
        17.03, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3814-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.4, 
        4.5, 
        20.44, 
        17.03, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3814-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.4, 
        4.5, 
        20.44, 
        17.03, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3817-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.6, 
        5.5, 
        24.98, 
        20.82, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3817-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.6, 
        5.5, 
        24.98, 
        20.82, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3817-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.6, 
        5.5, 
        24.98, 
        20.82, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3817-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.6, 
        5.5, 
        24.98, 
        20.82, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3817-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.6, 
        5.5, 
        24.98, 
        20.82, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3829-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.92, 
        4.16, 
        3.47, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3829-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.92, 
        4.16, 
        3.47, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3829-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.92, 
        4.16, 
        3.47, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3829-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.92, 
        4.16, 
        3.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3829-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.92, 
        4.16, 
        3.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3858-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.2, 
        1.83, 
        8.33, 
        6.94, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3858-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.2, 
        1.83, 
        8.33, 
        6.94, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3858-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.2, 
        1.83, 
        8.33, 
        6.94, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3858-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.2, 
        1.83, 
        8.33, 
        6.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3858-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.2, 
        1.83, 
        8.33, 
        6.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3897-04023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.7, 
        3.08, 
        14.01, 
        11.67, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3897-05023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.7, 
        3.08, 
        14.01, 
        11.67, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3897-06023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.7, 
        3.08, 
        14.01, 
        11.67, 
        500.0, 
        34.0, 
        NULL, 
        172.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3897-08023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.7, 
        3.08, 
        14.01, 
        11.67, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CA3T3897-0A023', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.7, 
        3.08, 
        14.01, 
        11.67, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11312-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        44.0, 
        36.67, 
        166.56, 
        138.8, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11312-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        44.0, 
        36.67, 
        166.56, 
        138.8, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11312-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        44.0, 
        36.67, 
        166.56, 
        138.8, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11312-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        44.0, 
        36.67, 
        166.56, 
        138.8, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11312-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        44.0, 
        36.67, 
        166.56, 
        138.8, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11314-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11314-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11314-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11314-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11314-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11317-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.2, 
        51.83, 
        235.45, 
        196.21, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11317-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.2, 
        51.83, 
        235.45, 
        196.21, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11317-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.2, 
        51.83, 
        235.45, 
        196.21, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11317-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.2, 
        51.83, 
        235.45, 
        196.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11317-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.2, 
        51.83, 
        235.45, 
        196.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11329-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.66, 
        8.88, 
        40.35, 
        33.63, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11329-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.66, 
        8.88, 
        40.35, 
        33.63, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11329-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.66, 
        8.88, 
        40.35, 
        33.63, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11329-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.66, 
        8.88, 
        40.35, 
        33.63, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11329-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.66, 
        8.88, 
        40.35, 
        33.63, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11358-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.2, 
        17.67, 
        80.25, 
        66.88, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11358-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.2, 
        17.67, 
        80.25, 
        66.88, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11358-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.2, 
        17.67, 
        80.25, 
        66.88, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11358-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.2, 
        17.67, 
        80.25, 
        66.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11358-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.2, 
        17.67, 
        80.25, 
        66.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11397-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.6, 
        29.67, 
        134.76, 
        112.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11397-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.6, 
        29.67, 
        134.76, 
        112.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11397-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.6, 
        29.67, 
        134.76, 
        112.3, 
        350.0, 
        24.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11397-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.6, 
        29.67, 
        134.76, 
        112.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T11397-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.6, 
        29.67, 
        134.76, 
        112.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16212-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        85.0, 
        70.83, 
        321.76, 
        268.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16212-05028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        85.0, 
        70.83, 
        321.76, 
        268.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16212-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        85.0, 
        70.83, 
        321.76, 
        268.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16212-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        85.0, 
        70.83, 
        321.76, 
        268.13, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16212-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        85.0, 
        70.83, 
        321.76, 
        268.13, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16214-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.8, 
        84.83, 
        385.35, 
        321.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16214-05028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.8, 
        84.83, 
        385.35, 
        321.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16214-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.8, 
        84.83, 
        385.35, 
        321.13, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16214-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.8, 
        84.83, 
        385.35, 
        321.13, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16214-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.8, 
        84.83, 
        385.35, 
        321.13, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16217-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.6, 
        103.0, 
        467.88, 
        389.9, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16217-05028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.6, 
        103.0, 
        467.88, 
        389.9, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16217-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.6, 
        103.0, 
        467.88, 
        389.9, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16217-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.6, 
        103.0, 
        467.88, 
        389.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16217-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.6, 
        103.0, 
        467.88, 
        389.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16229-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.0, 
        17.5, 
        79.49, 
        66.24, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16229-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.0, 
        17.5, 
        79.49, 
        66.24, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16229-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.0, 
        17.5, 
        79.49, 
        66.24, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16229-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.0, 
        17.5, 
        79.49, 
        66.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16229-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.0, 
        17.5, 
        79.49, 
        66.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16258-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        42.0, 
        35.0, 
        158.99, 
        132.49, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16258-05028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        42.0, 
        35.0, 
        158.99, 
        132.49, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16258-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        42.0, 
        35.0, 
        158.99, 
        132.49, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16258-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        42.0, 
        35.0, 
        158.99, 
        132.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16258-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        42.0, 
        35.0, 
        158.99, 
        132.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16297-04028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        70.6, 
        58.83, 
        267.25, 
        222.71, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16297-05028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        70.6, 
        58.83, 
        267.25, 
        222.71, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16297-06028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        70.6, 
        58.83, 
        267.25, 
        222.71, 
        200.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16297-08028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        70.6, 
        58.83, 
        267.25, 
        222.71, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T16297-0A028', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        70.6, 
        58.83, 
        267.25, 
        222.71, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5612-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.5, 
        38.61, 
        32.18, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5612-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.5, 
        38.61, 
        32.18, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5612-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.5, 
        38.61, 
        32.18, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5612-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.5, 
        38.61, 
        32.18, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5612-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        10.2, 
        8.5, 
        38.61, 
        32.18, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5614-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5614-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5614-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5614-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5614-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5617-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.33, 
        56.02, 
        46.69, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5617-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.33, 
        56.02, 
        46.69, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5617-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.33, 
        56.02, 
        46.69, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5617-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.33, 
        56.02, 
        46.69, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5617-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        14.8, 
        12.33, 
        56.02, 
        46.69, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5629-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.89, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5629-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.89, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5629-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.89, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5629-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.89, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5629-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.5, 
        2.08, 
        9.46, 
        7.89, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5658-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.0, 
        4.17, 
        18.93, 
        15.77, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5658-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.0, 
        4.17, 
        18.93, 
        15.77, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5658-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.0, 
        4.17, 
        18.93, 
        15.77, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5658-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.0, 
        4.17, 
        18.93, 
        15.77, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5658-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.0, 
        4.17, 
        18.93, 
        15.77, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5697-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        8.4, 
        7.0, 
        31.8, 
        26.5, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5697-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        8.4, 
        7.0, 
        31.8, 
        26.5, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5697-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        8.4, 
        7.0, 
        31.8, 
        26.5, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5697-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        8.4, 
        7.0, 
        31.8, 
        26.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T5697-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        8.4, 
        7.0, 
        31.8, 
        26.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7512-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.7, 
        15.58, 
        70.79, 
        58.99, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7512-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.7, 
        15.58, 
        70.79, 
        58.99, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7512-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.7, 
        15.58, 
        70.79, 
        58.99, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7512-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.7, 
        15.58, 
        70.79, 
        58.99, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7512-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.7, 
        15.58, 
        70.79, 
        58.99, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7514-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.6, 
        18.0, 
        81.76, 
        68.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7514-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.6, 
        18.0, 
        81.76, 
        68.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7514-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.6, 
        18.0, 
        81.76, 
        68.14, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7514-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.6, 
        18.0, 
        81.76, 
        68.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7514-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        21.6, 
        18.0, 
        81.76, 
        68.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7517-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        26.2, 
        21.83, 
        99.18, 
        82.65, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7517-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        26.2, 
        21.83, 
        99.18, 
        82.65, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7517-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        26.2, 
        21.83, 
        99.18, 
        82.65, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7517-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        26.2, 
        21.83, 
        99.18, 
        82.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7517-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        26.2, 
        21.83, 
        99.18, 
        82.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7529-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7529-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7529-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7529-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7529-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.5, 
        3.75, 
        17.03, 
        14.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7558-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.0, 
        7.5, 
        34.07, 
        28.39, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7558-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.0, 
        7.5, 
        34.07, 
        28.39, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7558-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.0, 
        7.5, 
        34.07, 
        28.39, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7558-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.0, 
        7.5, 
        34.07, 
        28.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7558-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.0, 
        7.5, 
        34.07, 
        28.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7597-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.0, 
        12.5, 
        56.78, 
        47.32, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7597-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.0, 
        12.5, 
        56.78, 
        47.32, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7597-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.0, 
        12.5, 
        56.78, 
        47.32, 
        400.0, 
        28.0, 
        NULL, 
        103.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7597-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.0, 
        12.5, 
        56.78, 
        47.32, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T7597-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.0, 
        12.5, 
        56.78, 
        47.32, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8712-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.0, 
        20.83, 
        94.64, 
        78.86, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8712-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.0, 
        20.83, 
        94.64, 
        78.86, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8712-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.0, 
        20.83, 
        94.64, 
        78.86, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8712-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.0, 
        20.83, 
        94.64, 
        78.86, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8712-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.0, 
        20.83, 
        94.64, 
        78.86, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8714-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        29.6, 
        24.67, 
        112.05, 
        93.37, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8714-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        29.6, 
        24.67, 
        112.05, 
        93.37, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8714-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        29.6, 
        24.67, 
        112.05, 
        93.37, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8714-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        29.6, 
        24.67, 
        112.05, 
        93.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8714-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        29.6, 
        24.67, 
        112.05, 
        93.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8717-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.8, 
        29.83, 
        135.52, 
        112.93, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8717-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.8, 
        29.83, 
        135.52, 
        112.93, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8717-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.8, 
        29.83, 
        135.52, 
        112.93, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8717-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.8, 
        29.83, 
        135.52, 
        112.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8717-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        35.8, 
        29.83, 
        135.52, 
        112.93, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8729-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.08, 
        23.09, 
        19.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8729-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.08, 
        23.09, 
        19.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8729-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.08, 
        23.09, 
        19.24, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8729-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.08, 
        23.09, 
        19.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8729-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.1, 
        5.08, 
        23.09, 
        19.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8758-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8758-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8758-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8758-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8758-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        12.2, 
        10.17, 
        46.18, 
        38.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8797-04024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        20.4, 
        17.0, 
        77.22, 
        64.35, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8797-05024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        20.4, 
        17.0, 
        77.22, 
        64.35, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8797-06024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        20.4, 
        17.0, 
        77.22, 
        64.35, 
        400.0, 
        28.0, 
        700.0, 
        48.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8797-08024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        20.4, 
        17.0, 
        77.22, 
        64.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CJ3T8797-0A024', 'Series 1000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        20.4, 
        17.0, 
        77.22, 
        64.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        11.47, 
        9.56, 
        43.42, 
        36.18, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        11.47, 
        9.56, 
        43.42, 
        36.18, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        11.47, 
        9.56, 
        43.42, 
        36.18, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        11.47, 
        9.56, 
        43.42, 
        36.18, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        11.47, 
        9.56, 
        43.42, 
        36.18, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.73, 
        11.44, 
        51.97, 
        43.31, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.73, 
        11.44, 
        51.97, 
        43.31, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.73, 
        11.44, 
        51.97, 
        43.31, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.73, 
        11.44, 
        51.97, 
        43.31, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        13.73, 
        11.44, 
        51.97, 
        43.31, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        18.73, 
        15.61, 
        70.9, 
        59.08, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        18.73, 
        15.61, 
        70.9, 
        59.08, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        18.73, 
        15.61, 
        70.9, 
        59.08, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        18.73, 
        15.61, 
        70.9, 
        59.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        18.73, 
        15.61, 
        70.9, 
        59.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.84, 
        2.37, 
        10.75, 
        8.96, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.84, 
        2.37, 
        10.75, 
        8.96, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.84, 
        2.37, 
        10.75, 
        8.96, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.84, 
        2.37, 
        10.75, 
        8.96, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.84, 
        2.37, 
        10.75, 
        8.96, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.69, 
        4.74, 
        21.54, 
        17.95, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.69, 
        4.74, 
        21.54, 
        17.95, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.69, 
        4.74, 
        21.54, 
        17.95, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.69, 
        4.74, 
        21.54, 
        17.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        5.69, 
        4.74, 
        21.54, 
        17.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.51, 
        7.93, 
        36.0, 
        30.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.51, 
        7.93, 
        36.0, 
        30.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.51, 
        7.93, 
        36.0, 
        30.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.51, 
        7.93, 
        36.0, 
        30.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.51, 
        7.93, 
        36.0, 
        30.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        19.0, 
        15.83, 
        71.92, 
        59.94, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        19.0, 
        15.83, 
        71.92, 
        59.94, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        19.0, 
        15.83, 
        71.92, 
        59.94, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        19.0, 
        15.83, 
        71.92, 
        59.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        19.0, 
        15.83, 
        71.92, 
        59.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.7, 
        18.92, 
        85.93, 
        71.61, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.7, 
        18.92, 
        85.93, 
        71.61, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.7, 
        18.92, 
        85.93, 
        71.61, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.7, 
        18.92, 
        85.93, 
        71.61, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.7, 
        18.92, 
        85.93, 
        71.61, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-04015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-05015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-06015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.7, 
        3.92, 
        17.79, 
        14.83, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.7, 
        3.92, 
        17.79, 
        14.83, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.7, 
        3.92, 
        17.79, 
        14.83, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.7, 
        3.92, 
        17.79, 
        14.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        4.7, 
        3.92, 
        17.79, 
        14.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.7, 
        13.08, 
        59.43, 
        49.53, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.7, 
        13.08, 
        59.43, 
        49.53, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.7, 
        13.08, 
        59.43, 
        49.53, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.7, 
        13.08, 
        59.43, 
        49.53, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.7, 
        13.08, 
        59.43, 
        49.53, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-04015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-05015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-06015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.0, 
        25.83, 
        117.35, 
        97.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-04015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.0, 
        30.83, 
        140.06, 
        116.72, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-05015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.0, 
        30.83, 
        140.06, 
        116.72, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-06015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.0, 
        30.83, 
        140.06, 
        116.72, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.0, 
        30.83, 
        140.06, 
        116.72, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.0, 
        30.83, 
        140.06, 
        116.72, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-04015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-05015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-06015', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.6, 
        6.33, 
        28.77, 
        23.97, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.6, 
        6.33, 
        28.77, 
        23.97, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.6, 
        6.33, 
        28.77, 
        23.97, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.6, 
        6.33, 
        28.77, 
        23.97, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        7.6, 
        6.33, 
        28.77, 
        23.97, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.3, 
        12.75, 
        57.92, 
        48.26, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.3, 
        12.75, 
        57.92, 
        48.26, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.3, 
        12.75, 
        57.92, 
        48.26, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.3, 
        12.75, 
        57.92, 
        48.26, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        15.3, 
        12.75, 
        57.92, 
        48.26, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.42, 
        97.29, 
        81.07, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.42, 
        97.29, 
        81.07, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.42, 
        97.29, 
        81.07, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.42, 
        97.29, 
        81.07, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.7, 
        21.42, 
        97.29, 
        81.07, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        51.1, 
        42.58, 
        193.43, 
        161.2, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        51.1, 
        42.58, 
        193.43, 
        161.2, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        51.1, 
        42.58, 
        193.43, 
        161.2, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        51.1, 
        42.58, 
        193.43, 
        161.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        51.1, 
        42.58, 
        193.43, 
        161.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.1, 
        50.92, 
        231.29, 
        192.74, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.1, 
        50.92, 
        231.29, 
        192.74, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.1, 
        50.92, 
        231.29, 
        192.74, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.1, 
        50.92, 
        231.29, 
        192.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.1, 
        50.92, 
        231.29, 
        192.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        83.4, 
        69.5, 
        315.7, 
        263.09, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        83.4, 
        69.5, 
        315.7, 
        263.09, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        83.4, 
        69.5, 
        315.7, 
        263.09, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        83.4, 
        69.5, 
        315.7, 
        263.09, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        83.4, 
        69.5, 
        315.7, 
        263.09, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.6, 
        10.5, 
        47.7, 
        39.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.6, 
        10.5, 
        47.7, 
        39.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.6, 
        10.5, 
        47.7, 
        39.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.6, 
        10.5, 
        47.7, 
        39.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        12.6, 
        10.5, 
        47.7, 
        39.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.3, 
        21.08, 
        95.77, 
        79.81, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.3, 
        21.08, 
        95.77, 
        79.81, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.3, 
        21.08, 
        95.77, 
        79.81, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.3, 
        21.08, 
        95.77, 
        79.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        25.3, 
        21.08, 
        95.77, 
        79.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        42.4, 
        35.33, 
        160.5, 
        133.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        42.4, 
        35.33, 
        160.5, 
        133.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        42.4, 
        35.33, 
        160.5, 
        133.75, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        42.4, 
        35.33, 
        160.5, 
        133.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        42.4, 
        35.33, 
        160.5, 
        133.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        57.0, 
        47.5, 
        215.77, 
        179.81, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        57.0, 
        47.5, 
        215.77, 
        179.81, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        57.0, 
        47.5, 
        215.77, 
        179.81, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        57.0, 
        47.5, 
        215.77, 
        179.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        57.0, 
        47.5, 
        215.77, 
        179.81, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        68.0, 
        56.67, 
        257.41, 
        214.51, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        68.0, 
        56.67, 
        257.41, 
        214.51, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        68.0, 
        56.67, 
        257.41, 
        214.51, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        68.0, 
        56.67, 
        257.41, 
        214.51, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        68.0, 
        56.67, 
        257.41, 
        214.51, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        93.0, 
        77.5, 
        352.04, 
        293.37, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        93.0, 
        77.5, 
        352.04, 
        293.37, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        93.0, 
        77.5, 
        352.04, 
        293.37, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        93.0, 
        77.5, 
        352.04, 
        293.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        93.0, 
        77.5, 
        352.04, 
        293.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.0, 
        11.67, 
        53.0, 
        44.16, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.0, 
        11.67, 
        53.0, 
        44.16, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.0, 
        11.67, 
        53.0, 
        44.16, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.0, 
        11.67, 
        53.0, 
        44.16, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        14.0, 
        11.67, 
        53.0, 
        44.16, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-04014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        28.25, 
        23.54, 
        106.94, 
        89.11, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-05014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        28.25, 
        23.54, 
        106.94, 
        89.11, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-06014', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        28.25, 
        23.54, 
        106.94, 
        89.11, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        28.25, 
        23.54, 
        106.94, 
        89.11, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        28.25, 
        23.54, 
        106.94, 
        89.11, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-04018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        47.25, 
        39.38, 
        178.86, 
        149.05, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-05018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        47.25, 
        39.38, 
        178.86, 
        149.05, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-06018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        47.25, 
        39.38, 
        178.86, 
        149.05, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-08018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        47.25, 
        39.38, 
        178.86, 
        149.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-0A018', 'Series 2000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        47.25, 
        39.38, 
        178.86, 
        149.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        22.94, 
        19.12, 
        86.84, 
        72.36, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        22.94, 
        19.12, 
        86.84, 
        72.36, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        22.94, 
        19.12, 
        86.84, 
        72.36, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        22.94, 
        19.12, 
        86.84, 
        72.36, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0512-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        22.94, 
        19.12, 
        86.84, 
        72.36, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        27.46, 
        22.88, 
        103.95, 
        86.62, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        27.46, 
        22.88, 
        103.95, 
        86.62, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        27.46, 
        22.88, 
        103.95, 
        86.62, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        27.46, 
        22.88, 
        103.95, 
        86.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0514-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        27.46, 
        22.88, 
        103.95, 
        86.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        37.46, 
        31.22, 
        141.8, 
        118.17, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        37.46, 
        31.22, 
        141.8, 
        118.17, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        37.46, 
        31.22, 
        141.8, 
        118.17, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        37.46, 
        31.22, 
        141.8, 
        118.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0519-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        37.46, 
        31.22, 
        141.8, 
        118.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.68, 
        4.73, 
        21.5, 
        17.92, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.68, 
        4.73, 
        21.5, 
        17.92, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.68, 
        4.73, 
        21.5, 
        17.92, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.68, 
        4.73, 
        21.5, 
        17.92, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0529-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.68, 
        4.73, 
        21.5, 
        17.92, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        11.38, 
        9.48, 
        43.08, 
        35.9, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        11.38, 
        9.48, 
        43.08, 
        35.9, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        11.38, 
        9.48, 
        43.08, 
        35.9, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        11.38, 
        9.48, 
        43.08, 
        35.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0558-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        11.38, 
        9.48, 
        43.08, 
        35.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        19.02, 
        15.85, 
        72.0, 
        60.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        19.02, 
        15.85, 
        72.0, 
        60.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        19.02, 
        15.85, 
        72.0, 
        60.0, 
        360.0, 
        25.0, 
        1800.0, 
        124.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        19.02, 
        15.85, 
        72.0, 
        60.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0597-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        19.02, 
        15.85, 
        72.0, 
        60.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        38.0, 
        31.67, 
        143.85, 
        119.87, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        38.0, 
        31.67, 
        143.85, 
        119.87, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        38.0, 
        31.67, 
        143.85, 
        119.87, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        38.0, 
        31.67, 
        143.85, 
        119.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0612-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        38.0, 
        31.67, 
        143.85, 
        119.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.4, 
        37.83, 
        171.86, 
        143.21, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.4, 
        37.83, 
        171.86, 
        143.21, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.4, 
        37.83, 
        171.86, 
        143.21, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.4, 
        37.83, 
        171.86, 
        143.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0614-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.4, 
        37.83, 
        171.86, 
        143.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-04025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-05025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-06025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0619-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0629-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        9.4, 
        7.83, 
        35.58, 
        29.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.8, 
        15.67, 
        71.17, 
        59.3, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.8, 
        15.67, 
        71.17, 
        59.3, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.8, 
        15.67, 
        71.17, 
        59.3, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.8, 
        15.67, 
        71.17, 
        59.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0658-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        18.8, 
        15.67, 
        71.17, 
        59.3, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        31.4, 
        26.17, 
        118.86, 
        99.05, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        31.4, 
        26.17, 
        118.86, 
        99.05, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        31.4, 
        26.17, 
        118.86, 
        99.05, 
        360.0, 
        25.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        31.4, 
        26.17, 
        118.86, 
        99.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0697-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        31.4, 
        26.17, 
        118.86, 
        99.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-04025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-05025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-06025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0812-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        62.0, 
        51.67, 
        234.7, 
        195.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-04025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        74.0, 
        61.67, 
        280.12, 
        233.43, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-05025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        74.0, 
        61.67, 
        280.12, 
        233.43, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-06025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        74.0, 
        61.67, 
        280.12, 
        233.43, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        74.0, 
        61.67, 
        280.12, 
        233.43, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0814-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        74.0, 
        61.67, 
        280.12, 
        233.43, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-04025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.2, 
        84.33, 
        383.08, 
        319.24, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-05025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.2, 
        84.33, 
        383.08, 
        319.24, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-06025', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.2, 
        84.33, 
        383.08, 
        319.24, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.2, 
        84.33, 
        383.08, 
        319.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0819-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        101.2, 
        84.33, 
        383.08, 
        319.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.2, 
        12.67, 
        57.54, 
        47.95, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.2, 
        12.67, 
        57.54, 
        47.95, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.2, 
        12.67, 
        57.54, 
        47.95, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.2, 
        12.67, 
        57.54, 
        47.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0829-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        15.2, 
        12.67, 
        57.54, 
        47.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        30.6, 
        25.5, 
        115.83, 
        96.53, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        30.6, 
        25.5, 
        115.83, 
        96.53, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        30.6, 
        25.5, 
        115.83, 
        96.53, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        30.6, 
        25.5, 
        115.83, 
        96.53, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0858-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        30.6, 
        25.5, 
        115.83, 
        96.53, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        360.0, 
        25.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T0897-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        51.4, 
        42.83, 
        194.57, 
        162.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        102.2, 
        85.17, 
        386.87, 
        322.39, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        102.2, 
        85.17, 
        386.87, 
        322.39, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        102.2, 
        85.17, 
        386.87, 
        322.39, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        102.2, 
        85.17, 
        386.87, 
        322.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1012-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        102.2, 
        85.17, 
        386.87, 
        322.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        122.2, 
        101.83, 
        462.58, 
        385.48, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        122.2, 
        101.83, 
        462.58, 
        385.48, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        122.2, 
        101.83, 
        462.58, 
        385.48, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        122.2, 
        101.83, 
        462.58, 
        385.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1014-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        122.2, 
        101.83, 
        462.58, 
        385.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        166.8, 
        139.0, 
        631.41, 
        526.17, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        166.8, 
        139.0, 
        631.41, 
        526.17, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        166.8, 
        139.0, 
        631.41, 
        526.17, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        166.8, 
        139.0, 
        631.41, 
        526.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1019-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        166.8, 
        139.0, 
        631.41, 
        526.17, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.2, 
        21.0, 
        95.39, 
        79.49, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.2, 
        21.0, 
        95.39, 
        79.49, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.2, 
        21.0, 
        95.39, 
        79.49, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.2, 
        21.0, 
        95.39, 
        79.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1029-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        25.2, 
        21.0, 
        95.39, 
        79.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1058-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        50.6, 
        42.17, 
        191.54, 
        159.62, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        84.8, 
        70.67, 
        321.0, 
        267.5, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        84.8, 
        70.67, 
        321.0, 
        267.5, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        84.8, 
        70.67, 
        321.0, 
        267.5, 
        210.0, 
        14.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        84.8, 
        70.67, 
        321.0, 
        267.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1097-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        84.8, 
        70.67, 
        321.0, 
        267.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        114.0, 
        95.0, 
        431.54, 
        359.61, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        114.0, 
        95.0, 
        431.54, 
        359.61, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        114.0, 
        95.0, 
        431.54, 
        359.61, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        114.0, 
        95.0, 
        431.54, 
        359.61, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1212-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        114.0, 
        95.0, 
        431.54, 
        359.61, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        136.0, 
        113.33, 
        514.82, 
        429.01, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        136.0, 
        113.33, 
        514.82, 
        429.01, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        136.0, 
        113.33, 
        514.82, 
        429.01, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        136.0, 
        113.33, 
        514.82, 
        429.01, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1214-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        136.0, 
        113.33, 
        514.82, 
        429.01, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        186.0, 
        155.0, 
        704.09, 
        586.74, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        186.0, 
        155.0, 
        704.09, 
        586.74, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        186.0, 
        155.0, 
        704.09, 
        586.74, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        186.0, 
        155.0, 
        704.09, 
        586.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1219-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        186.0, 
        155.0, 
        704.09, 
        586.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        28.0, 
        23.33, 
        105.99, 
        88.33, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        28.0, 
        23.33, 
        105.99, 
        88.33, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        28.0, 
        23.33, 
        105.99, 
        88.33, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        28.0, 
        23.33, 
        105.99, 
        88.33, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1229-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        28.0, 
        23.33, 
        105.99, 
        88.33, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-04024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        56.5, 
        47.08, 
        213.88, 
        178.23, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-05024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        56.5, 
        47.08, 
        213.88, 
        178.23, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-06024', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        56.5, 
        47.08, 
        213.88, 
        178.23, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        56.5, 
        47.08, 
        213.88, 
        178.23, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1258-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        56.5, 
        47.08, 
        213.88, 
        178.23, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-04028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        94.5, 
        78.75, 
        357.72, 
        298.1, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-05028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        94.5, 
        78.75, 
        357.72, 
        298.1, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-06028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        94.5, 
        78.75, 
        357.72, 
        298.1, 
        195.0, 
        13.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-08028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        94.5, 
        78.75, 
        357.72, 
        298.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CD3T1297-0A028', 'Series 2000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        94.5, 
        78.75, 
        357.72, 
        298.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        64.1, 
        53.42, 
        242.64, 
        202.2, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        64.1, 
        53.42, 
        242.64, 
        202.2, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        64.1, 
        53.42, 
        242.64, 
        202.2, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        64.1, 
        53.42, 
        242.64, 
        202.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        64.1, 
        53.42, 
        242.64, 
        202.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        76.7, 
        63.92, 
        290.34, 
        241.95, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        76.7, 
        63.92, 
        290.34, 
        241.95, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        76.7, 
        63.92, 
        290.34, 
        241.95, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        76.7, 
        63.92, 
        290.34, 
        241.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        76.7, 
        63.92, 
        290.34, 
        241.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        24.1, 
        20.08, 
        91.23, 
        76.02, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        24.1, 
        20.08, 
        91.23, 
        76.02, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        24.1, 
        20.08, 
        91.23, 
        76.02, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        24.1, 
        20.08, 
        91.23, 
        76.02, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        24.1, 
        20.08, 
        91.23, 
        76.02, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.8, 
        26.5, 
        120.38, 
        100.31, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.8, 
        26.5, 
        120.38, 
        100.31, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.8, 
        26.5, 
        120.38, 
        100.31, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.8, 
        26.5, 
        120.38, 
        100.31, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        31.8, 
        26.5, 
        120.38, 
        100.31, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        100.7, 
        83.92, 
        381.19, 
        317.66, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        100.7, 
        83.92, 
        381.19, 
        317.66, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        100.7, 
        83.92, 
        381.19, 
        317.66, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        100.7, 
        83.92, 
        381.19, 
        317.66, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        100.7, 
        83.92, 
        381.19, 
        317.66, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        120.5, 
        100.42, 
        456.14, 
        380.12, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        120.5, 
        100.42, 
        456.14, 
        380.12, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        120.5, 
        100.42, 
        456.14, 
        380.12, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        120.5, 
        100.42, 
        456.14, 
        380.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        120.5, 
        100.42, 
        456.14, 
        380.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.8, 
        31.5, 
        143.09, 
        119.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.8, 
        31.5, 
        143.09, 
        119.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.8, 
        31.5, 
        143.09, 
        119.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.8, 
        31.5, 
        143.09, 
        119.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        37.8, 
        31.5, 
        143.09, 
        119.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.0, 
        41.67, 
        189.27, 
        157.73, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.0, 
        41.67, 
        189.27, 
        157.73, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.0, 
        41.67, 
        189.27, 
        157.73, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.0, 
        41.67, 
        189.27, 
        157.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        50.0, 
        41.67, 
        189.27, 
        157.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        75.7, 
        63.08, 
        286.56, 
        238.8, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        75.7, 
        63.08, 
        286.56, 
        238.8, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        75.7, 
        63.08, 
        286.56, 
        238.8, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        75.7, 
        63.08, 
        286.56, 
        238.8, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        75.7, 
        63.08, 
        286.56, 
        238.8, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        144.5, 
        120.42, 
        546.99, 
        455.83, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        144.5, 
        120.42, 
        546.99, 
        455.83, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        144.5, 
        120.42, 
        546.99, 
        455.83, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        144.5, 
        120.42, 
        546.99, 
        455.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        144.5, 
        120.42, 
        546.99, 
        455.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        173.0, 
        144.17, 
        654.88, 
        545.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        173.0, 
        144.17, 
        654.88, 
        545.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        173.0, 
        144.17, 
        654.88, 
        545.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        173.0, 
        144.17, 
        654.88, 
        545.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        173.0, 
        144.17, 
        654.88, 
        545.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        54.3, 
        45.25, 
        205.55, 
        171.29, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        54.3, 
        45.25, 
        205.55, 
        171.29, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        54.3, 
        45.25, 
        205.55, 
        171.29, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        54.3, 
        45.25, 
        205.55, 
        171.29, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        54.3, 
        45.25, 
        205.55, 
        171.29, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        71.6, 
        59.67, 
        271.04, 
        225.86, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        71.6, 
        59.67, 
        271.04, 
        225.86, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        71.6, 
        59.67, 
        271.04, 
        225.86, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        71.6, 
        59.67, 
        271.04, 
        225.86, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        71.6, 
        59.67, 
        271.04, 
        225.86, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        108.7, 
        90.58, 
        411.47, 
        342.9, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        108.7, 
        90.58, 
        411.47, 
        342.9, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        108.7, 
        90.58, 
        411.47, 
        342.9, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        108.7, 
        90.58, 
        411.47, 
        342.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        108.7, 
        90.58, 
        411.47, 
        342.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        197.0, 
        164.17, 
        745.73, 
        621.44, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        197.0, 
        164.17, 
        745.73, 
        621.44, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        197.0, 
        164.17, 
        745.73, 
        621.44, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        197.0, 
        164.17, 
        745.73, 
        621.44, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        197.0, 
        164.17, 
        745.73, 
        621.44, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        235.8, 
        196.5, 
        892.6, 
        743.83, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        235.8, 
        196.5, 
        892.6, 
        743.83, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        235.8, 
        196.5, 
        892.6, 
        743.83, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        235.8, 
        196.5, 
        892.6, 
        743.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        235.8, 
        196.5, 
        892.6, 
        743.83, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        74.1, 
        61.75, 
        280.5, 
        233.75, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        74.1, 
        61.75, 
        280.5, 
        233.75, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        74.1, 
        61.75, 
        280.5, 
        233.75, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        74.1, 
        61.75, 
        280.5, 
        233.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        74.1, 
        61.75, 
        280.5, 
        233.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        97.7, 
        81.42, 
        369.83, 
        308.2, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        97.7, 
        81.42, 
        369.83, 
        308.2, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        97.7, 
        81.42, 
        369.83, 
        308.2, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        97.7, 
        81.42, 
        369.83, 
        308.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        97.7, 
        81.42, 
        369.83, 
        308.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0401B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        257.3, 
        214.42, 
        973.99, 
        811.66, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0501B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        257.3, 
        214.42, 
        973.99, 
        811.66, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0601B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        257.3, 
        214.42, 
        973.99, 
        811.66, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0801B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        257.3, 
        214.42, 
        973.99, 
        811.66, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0A01B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        257.3, 
        214.42, 
        973.99, 
        811.66, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0401B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        308.0, 
        256.67, 
        1165.91, 
        971.59, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0501B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        308.0, 
        256.67, 
        1165.91, 
        971.59, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0601B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        308.0, 
        256.67, 
        1165.91, 
        971.59, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0801B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        308.0, 
        256.67, 
        1165.91, 
        971.59, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0A01B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        308.0, 
        256.67, 
        1165.91, 
        971.59, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        96.8, 
        80.67, 
        366.43, 
        305.36, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        96.8, 
        80.67, 
        366.43, 
        305.36, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        96.8, 
        80.67, 
        366.43, 
        305.36, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        96.8, 
        80.67, 
        366.43, 
        305.36, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        96.8, 
        80.67, 
        366.43, 
        305.36, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        127.6, 
        106.33, 
        483.02, 
        402.52, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        127.6, 
        106.33, 
        483.02, 
        402.52, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        127.6, 
        106.33, 
        483.02, 
        402.52, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        127.6, 
        106.33, 
        483.02, 
        402.52, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        127.6, 
        106.33, 
        483.02, 
        402.52, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        193.5, 
        161.25, 
        732.48, 
        610.4, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        193.5, 
        161.25, 
        732.48, 
        610.4, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        193.5, 
        161.25, 
        732.48, 
        610.4, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        193.5, 
        161.25, 
        732.48, 
        610.4, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        193.5, 
        161.25, 
        732.48, 
        610.4, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0401B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        325.5, 
        271.25, 
        1232.15, 
        1026.79, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0501B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        325.5, 
        271.25, 
        1232.15, 
        1026.79, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0601B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        325.5, 
        271.25, 
        1232.15, 
        1026.79, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0801B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        325.5, 
        271.25, 
        1232.15, 
        1026.79, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0A01B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        325.5, 
        271.25, 
        1232.15, 
        1026.79, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0401C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        389.5, 
        324.58, 
        1474.42, 
        1228.68, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0501C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        389.5, 
        324.58, 
        1474.42, 
        1228.68, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0601C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        389.5, 
        324.58, 
        1474.42, 
        1228.68, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0801C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        389.5, 
        324.58, 
        1474.42, 
        1228.68, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0A01C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        389.5, 
        324.58, 
        1474.42, 
        1228.68, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        122.4, 
        102.0, 
        463.33, 
        386.11, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        122.4, 
        102.0, 
        463.33, 
        386.11, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        122.4, 
        102.0, 
        463.33, 
        386.11, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        122.4, 
        102.0, 
        463.33, 
        386.11, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        122.4, 
        102.0, 
        463.33, 
        386.11, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        161.3, 
        134.42, 
        610.59, 
        508.82, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        161.3, 
        134.42, 
        610.59, 
        508.82, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        161.3, 
        134.42, 
        610.59, 
        508.82, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        161.3, 
        134.42, 
        610.59, 
        508.82, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        161.3, 
        134.42, 
        610.59, 
        508.82, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0401C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        387.1, 
        322.58, 
        1465.33, 
        1221.11, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0501C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        387.1, 
        322.58, 
        1465.33, 
        1221.11, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0601C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        387.1, 
        322.58, 
        1465.33, 
        1221.11, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0801C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        387.1, 
        322.58, 
        1465.33, 
        1221.11, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0A01C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        387.1, 
        322.58, 
        1465.33, 
        1221.11, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0401C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        463.2, 
        386.0, 
        1753.4, 
        1461.17, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0501C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        463.2, 
        386.0, 
        1753.4, 
        1461.17, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0601C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        463.2, 
        386.0, 
        1753.4, 
        1461.17, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0801C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        463.2, 
        386.0, 
        1753.4, 
        1461.17, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0A01C', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        463.2, 
        386.0, 
        1753.4, 
        1461.17, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-04018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        145.6, 
        121.33, 
        551.16, 
        459.3, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-05018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        145.6, 
        121.33, 
        551.16, 
        459.3, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-06018', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        145.6, 
        121.33, 
        551.16, 
        459.3, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        145.6, 
        121.33, 
        551.16, 
        459.3, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        145.6, 
        121.33, 
        551.16, 
        459.3, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0401A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        191.9, 
        159.92, 
        726.42, 
        605.35, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0501A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        191.9, 
        159.92, 
        726.42, 
        605.35, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0601A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        191.9, 
        159.92, 
        726.42, 
        605.35, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0801A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        191.9, 
        159.92, 
        726.42, 
        605.35, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0A01A', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        191.9, 
        159.92, 
        726.42, 
        605.35, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0401B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0501B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0601B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0801B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0A01B', 'Series 3000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        128.2, 
        106.83, 
        485.29, 
        404.41, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        128.2, 
        106.83, 
        485.29, 
        404.41, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        128.2, 
        106.83, 
        485.29, 
        404.41, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        128.2, 
        106.83, 
        485.29, 
        404.41, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0812-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        128.2, 
        106.83, 
        485.29, 
        404.41, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        153.4, 
        127.83, 
        580.68, 
        483.9, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        153.4, 
        127.83, 
        580.68, 
        483.9, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        153.4, 
        127.83, 
        580.68, 
        483.9, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        153.4, 
        127.83, 
        580.68, 
        483.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0814-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        153.4, 
        127.83, 
        580.68, 
        483.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0844-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        48.2, 
        40.17, 
        182.46, 
        152.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        63.6, 
        53.0, 
        240.75, 
        200.63, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        63.6, 
        53.0, 
        240.75, 
        200.63, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        63.6, 
        53.0, 
        240.75, 
        200.63, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        63.6, 
        53.0, 
        240.75, 
        200.63, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0858-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        63.6, 
        53.0, 
        240.75, 
        200.63, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        96.4, 
        80.33, 
        364.91, 
        304.09, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        96.4, 
        80.33, 
        364.91, 
        304.09, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        96.4, 
        80.33, 
        364.91, 
        304.09, 
        700.0, 
        48.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        96.4, 
        80.33, 
        364.91, 
        304.09, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT0888-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        96.4, 
        80.33, 
        364.91, 
        304.09, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        201.4, 
        167.83, 
        762.38, 
        635.32, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        201.4, 
        167.83, 
        762.38, 
        635.32, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        201.4, 
        167.83, 
        762.38, 
        635.32, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        201.4, 
        167.83, 
        762.38, 
        635.32, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1012-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        201.4, 
        167.83, 
        762.38, 
        635.32, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        241.0, 
        200.83, 
        912.28, 
        760.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        241.0, 
        200.83, 
        912.28, 
        760.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        241.0, 
        200.83, 
        912.28, 
        760.24, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        241.0, 
        200.83, 
        912.28, 
        760.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1014-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        241.0, 
        200.83, 
        912.28, 
        760.24, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        75.6, 
        63.0, 
        286.18, 
        238.48, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        75.6, 
        63.0, 
        286.18, 
        238.48, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        75.6, 
        63.0, 
        286.18, 
        238.48, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        75.6, 
        63.0, 
        286.18, 
        238.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1044-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        75.6, 
        63.0, 
        286.18, 
        238.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        100.0, 
        83.33, 
        378.54, 
        315.45, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        100.0, 
        83.33, 
        378.54, 
        315.45, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        100.0, 
        83.33, 
        378.54, 
        315.45, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        100.0, 
        83.33, 
        378.54, 
        315.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1058-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        100.0, 
        83.33, 
        378.54, 
        315.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        151.4, 
        126.17, 
        573.11, 
        477.59, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        151.4, 
        126.17, 
        573.11, 
        477.59, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        151.4, 
        126.17, 
        573.11, 
        477.59, 
        405.0, 
        28.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        151.4, 
        126.17, 
        573.11, 
        477.59, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1088-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        151.4, 
        126.17, 
        573.11, 
        477.59, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        289.0, 
        240.83, 
        1093.98, 
        911.65, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        289.0, 
        240.83, 
        1093.98, 
        911.65, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        289.0, 
        240.83, 
        1093.98, 
        911.65, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        289.0, 
        240.83, 
        1093.98, 
        911.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1212-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        289.0, 
        240.83, 
        1093.98, 
        911.65, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        346.0, 
        288.33, 
        1309.75, 
        1091.46, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        346.0, 
        288.33, 
        1309.75, 
        1091.46, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        346.0, 
        288.33, 
        1309.75, 
        1091.46, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        346.0, 
        288.33, 
        1309.75, 
        1091.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1214-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        346.0, 
        288.33, 
        1309.75, 
        1091.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        108.6, 
        90.5, 
        411.1, 
        342.58, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        108.6, 
        90.5, 
        411.1, 
        342.58, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        108.6, 
        90.5, 
        411.1, 
        342.58, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        108.6, 
        90.5, 
        411.1, 
        342.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1244-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        108.6, 
        90.5, 
        411.1, 
        342.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        143.2, 
        119.33, 
        542.07, 
        451.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        143.2, 
        119.33, 
        542.07, 
        451.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        143.2, 
        119.33, 
        542.07, 
        451.73, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        143.2, 
        119.33, 
        542.07, 
        451.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1258-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        143.2, 
        119.33, 
        542.07, 
        451.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        217.4, 
        181.17, 
        822.95, 
        685.79, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        217.4, 
        181.17, 
        822.95, 
        685.79, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        217.4, 
        181.17, 
        822.95, 
        685.79, 
        265.0, 
        18.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        217.4, 
        181.17, 
        822.95, 
        685.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1288-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        217.4, 
        181.17, 
        822.95, 
        685.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        394.0, 
        328.33, 
        1491.45, 
        1242.88, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        394.0, 
        328.33, 
        1491.45, 
        1242.88, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        394.0, 
        328.33, 
        1491.45, 
        1242.88, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        394.0, 
        328.33, 
        1491.45, 
        1242.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1412-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        394.0, 
        328.33, 
        1491.45, 
        1242.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        471.6, 
        393.0, 
        1785.2, 
        1487.67, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        471.6, 
        393.0, 
        1785.2, 
        1487.67, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        471.6, 
        393.0, 
        1785.2, 
        1487.67, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        471.6, 
        393.0, 
        1785.2, 
        1487.67, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1414-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        471.6, 
        393.0, 
        1785.2, 
        1487.67, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1444-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        148.2, 
        123.5, 
        561.0, 
        467.5, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        195.4, 
        162.83, 
        739.67, 
        616.39, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        195.4, 
        162.83, 
        739.67, 
        616.39, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        195.4, 
        162.83, 
        739.67, 
        616.39, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        195.4, 
        162.83, 
        739.67, 
        616.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1458-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        195.4, 
        162.83, 
        739.67, 
        616.39, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        296.4, 
        247.0, 
        1122.0, 
        935.0, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        296.4, 
        247.0, 
        1122.0, 
        935.0, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        296.4, 
        247.0, 
        1122.0, 
        935.0, 
        180.0, 
        12.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        296.4, 
        247.0, 
        1122.0, 
        935.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1488-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        296.4, 
        247.0, 
        1122.0, 
        935.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0402B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        514.6, 
        428.83, 
        1947.97, 
        1623.31, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0502B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        514.6, 
        428.83, 
        1947.97, 
        1623.31, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0602B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        514.6, 
        428.83, 
        1947.97, 
        1623.31, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0802B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        514.6, 
        428.83, 
        1947.97, 
        1623.31, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1612-0A02B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        514.6, 
        428.83, 
        1947.97, 
        1623.31, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0402B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        616.0, 
        513.33, 
        2331.81, 
        1943.18, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0502B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        616.0, 
        513.33, 
        2331.81, 
        1943.18, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0602B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        616.0, 
        513.33, 
        2331.81, 
        1943.18, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0802B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        616.0, 
        513.33, 
        2331.81, 
        1943.18, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1614-0A02B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        616.0, 
        513.33, 
        2331.81, 
        1943.18, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        193.6, 
        161.33, 
        732.86, 
        610.71, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        193.6, 
        161.33, 
        732.86, 
        610.71, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        193.6, 
        161.33, 
        732.86, 
        610.71, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        193.6, 
        161.33, 
        732.86, 
        610.71, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1644-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        193.6, 
        161.33, 
        732.86, 
        610.71, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        255.2, 
        212.67, 
        966.04, 
        805.03, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        255.2, 
        212.67, 
        966.04, 
        805.03, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        255.2, 
        212.67, 
        966.04, 
        805.03, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        255.2, 
        212.67, 
        966.04, 
        805.03, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1658-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        255.2, 
        212.67, 
        966.04, 
        805.03, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        387.0, 
        322.5, 
        1464.95, 
        1220.8, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        387.0, 
        322.5, 
        1464.95, 
        1220.8, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        387.0, 
        322.5, 
        1464.95, 
        1220.8, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        387.0, 
        322.5, 
        1464.95, 
        1220.8, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1688-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        387.0, 
        322.5, 
        1464.95, 
        1220.8, 
        130.0, 
        9.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0402B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        651.0, 
        542.5, 
        2464.3, 
        2053.59, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0502B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        651.0, 
        542.5, 
        2464.3, 
        2053.59, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0602B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        651.0, 
        542.5, 
        2464.3, 
        2053.59, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0802B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        651.0, 
        542.5, 
        2464.3, 
        2053.59, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1812-0A02B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        651.0, 
        542.5, 
        2464.3, 
        2053.59, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0402C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        779.0, 
        649.17, 
        2948.84, 
        2457.36, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0502C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        779.0, 
        649.17, 
        2948.84, 
        2457.36, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0602C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        779.0, 
        649.17, 
        2948.84, 
        2457.36, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0802C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        779.0, 
        649.17, 
        2948.84, 
        2457.36, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1814-0A02C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        779.0, 
        649.17, 
        2948.84, 
        2457.36, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1844-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        244.8, 
        204.0, 
        926.67, 
        772.22, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        322.6, 
        268.83, 
        1221.17, 
        1017.64, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        322.6, 
        268.83, 
        1221.17, 
        1017.64, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        322.6, 
        268.83, 
        1221.17, 
        1017.64, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        322.6, 
        268.83, 
        1221.17, 
        1017.64, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1858-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        322.6, 
        268.83, 
        1221.17, 
        1017.64, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        489.6, 
        408.0, 
        1853.34, 
        1544.45, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        489.6, 
        408.0, 
        1853.34, 
        1544.45, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        489.6, 
        408.0, 
        1853.34, 
        1544.45, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        489.6, 
        408.0, 
        1853.34, 
        1544.45, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT1888-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        489.6, 
        408.0, 
        1853.34, 
        1544.45, 
        95.0, 
        7.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0402C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        774.2, 
        645.17, 
        2930.67, 
        2442.22, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0502C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        774.2, 
        645.17, 
        2930.67, 
        2442.22, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0602C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        774.2, 
        645.17, 
        2930.67, 
        2442.22, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0802C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        774.2, 
        645.17, 
        2930.67, 
        2442.22, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2012-0A02C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        774.2, 
        645.17, 
        2930.67, 
        2442.22, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0402C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        926.4, 
        772.0, 
        3506.81, 
        2922.34, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0502C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        926.4, 
        772.0, 
        3506.81, 
        2922.34, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0602C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        926.4, 
        772.0, 
        3506.81, 
        2922.34, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0802C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        926.4, 
        772.0, 
        3506.81, 
        2922.34, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2014-0A02C', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        926.4, 
        772.0, 
        3506.81, 
        2922.34, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-04028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-05028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-06028', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2044-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        291.2, 
        242.67, 
        1102.31, 
        918.59, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0402A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        383.8, 
        319.83, 
        1452.84, 
        1210.7, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0502A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        383.8, 
        319.83, 
        1452.84, 
        1210.7, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0602A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        383.8, 
        319.83, 
        1452.84, 
        1210.7, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0802A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        383.8, 
        319.83, 
        1452.84, 
        1210.7, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2058-0A02A', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        383.8, 
        319.83, 
        1452.84, 
        1210.7, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0402B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        582.4, 
        485.33, 
        2204.62, 
        1837.19, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0502B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        582.4, 
        485.33, 
        2204.62, 
        1837.19, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0602B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        582.4, 
        485.33, 
        2204.62, 
        1837.19, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0802B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        582.4, 
        485.33, 
        2204.62, 
        1837.19, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'CNIT2088-0A02B', 'Series 3000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        582.4, 
        485.33, 
        2204.62, 
        1837.19, 
        75.0, 
        5.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.6, 
        18.83, 
        85.55, 
        71.29, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.6, 
        18.83, 
        85.55, 
        71.29, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.6, 
        18.83, 
        85.55, 
        71.29, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.6, 
        18.83, 
        85.55, 
        71.29, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        22.6, 
        18.83, 
        85.55, 
        71.29, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        36.0, 
        30.0, 
        136.27, 
        113.56, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        36.0, 
        30.0, 
        136.27, 
        113.56, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        36.0, 
        30.0, 
        136.27, 
        113.56, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        36.0, 
        30.0, 
        136.27, 
        113.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        36.0, 
        30.0, 
        136.27, 
        113.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        45.0, 
        37.5, 
        170.34, 
        141.95, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        45.0, 
        37.5, 
        170.34, 
        141.95, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        45.0, 
        37.5, 
        170.34, 
        141.95, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        45.0, 
        37.5, 
        170.34, 
        141.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        45.0, 
        37.5, 
        170.34, 
        141.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        38.5, 
        32.08, 
        145.74, 
        121.45, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        38.5, 
        32.08, 
        145.74, 
        121.45, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        38.5, 
        32.08, 
        145.74, 
        121.45, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        38.5, 
        32.08, 
        145.74, 
        121.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        38.5, 
        32.08, 
        145.74, 
        121.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.5, 
        51.25, 
        232.8, 
        194.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.5, 
        51.25, 
        232.8, 
        194.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.5, 
        51.25, 
        232.8, 
        194.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.5, 
        51.25, 
        232.8, 
        194.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        61.5, 
        51.25, 
        232.8, 
        194.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0401A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0501A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0601A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0801A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0A01A', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        78.2, 
        65.17, 
        296.02, 
        246.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        78.2, 
        65.17, 
        296.02, 
        246.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        78.2, 
        65.17, 
        296.02, 
        246.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        78.2, 
        65.17, 
        296.02, 
        246.68, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        78.2, 
        65.17, 
        296.02, 
        246.68, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        124.5, 
        103.75, 
        471.28, 
        392.74, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        124.5, 
        103.75, 
        471.28, 
        392.74, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        124.5, 
        103.75, 
        471.28, 
        392.74, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        124.5, 
        103.75, 
        471.28, 
        392.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        124.5, 
        103.75, 
        471.28, 
        392.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        156.5, 
        130.42, 
        592.42, 
        493.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        156.5, 
        130.42, 
        592.42, 
        493.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        156.5, 
        130.42, 
        592.42, 
        493.68, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        156.5, 
        130.42, 
        592.42, 
        493.68, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        156.5, 
        130.42, 
        592.42, 
        493.68, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        202.0, 
        168.33, 
        764.65, 
        637.21, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        202.0, 
        168.33, 
        764.65, 
        637.21, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        202.0, 
        168.33, 
        764.65, 
        637.21, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        202.0, 
        168.33, 
        764.65, 
        637.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        202.0, 
        168.33, 
        764.65, 
        637.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        321.2, 
        267.67, 
        1215.87, 
        1013.23, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        321.2, 
        267.67, 
        1215.87, 
        1013.23, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        321.2, 
        267.67, 
        1215.87, 
        1013.23, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        321.2, 
        267.67, 
        1215.87, 
        1013.23, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        321.2, 
        267.67, 
        1215.87, 
        1013.23, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0401F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        421.0, 
        350.83, 
        1593.66, 
        1328.05, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0501F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        421.0, 
        350.83, 
        1593.66, 
        1328.05, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0601F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        421.0, 
        350.83, 
        1593.66, 
        1328.05, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0801F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        421.0, 
        350.83, 
        1593.66, 
        1328.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0A01F', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        421.0, 
        350.83, 
        1593.66, 
        1328.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        304.0, 
        253.33, 
        1150.77, 
        958.97, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        304.0, 
        253.33, 
        1150.77, 
        958.97, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        304.0, 
        253.33, 
        1150.77, 
        958.97, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        304.0, 
        253.33, 
        1150.77, 
        958.97, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        304.0, 
        253.33, 
        1150.77, 
        958.97, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        485.0, 
        404.17, 
        1835.92, 
        1529.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        485.0, 
        404.17, 
        1835.92, 
        1529.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        485.0, 
        404.17, 
        1835.92, 
        1529.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        485.0, 
        404.17, 
        1835.92, 
        1529.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        485.0, 
        404.17, 
        1835.92, 
        1529.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        609.0, 
        507.5, 
        2305.32, 
        1921.1, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        609.0, 
        507.5, 
        2305.32, 
        1921.1, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        609.0, 
        507.5, 
        2305.32, 
        1921.1, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        609.0, 
        507.5, 
        2305.32, 
        1921.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        609.0, 
        507.5, 
        2305.32, 
        1921.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1765.0, 
        1470.83, 
        6681.25, 
        5567.71, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1765.0, 
        1470.83, 
        6681.25, 
        5567.71, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1765.0, 
        1470.83, 
        6681.25, 
        5567.71, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1765.0, 
        1470.83, 
        6681.25, 
        5567.71, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1765.0, 
        1470.83, 
        6681.25, 
        5567.71, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        554.0, 
        461.67, 
        2097.12, 
        1747.6, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        554.0, 
        461.67, 
        2097.12, 
        1747.6, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        554.0, 
        461.67, 
        2097.12, 
        1747.6, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        554.0, 
        461.67, 
        2097.12, 
        1747.6, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        554.0, 
        461.67, 
        2097.12, 
        1747.6, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        882.0, 
        735.0, 
        3338.73, 
        2782.28, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        882.0, 
        735.0, 
        3338.73, 
        2782.28, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        882.0, 
        735.0, 
        3338.73, 
        2782.28, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        882.0, 
        735.0, 
        3338.73, 
        2782.28, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        882.0, 
        735.0, 
        3338.73, 
        2782.28, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0401H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1109.0, 
        924.17, 
        4198.02, 
        3498.35, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0501H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1109.0, 
        924.17, 
        4198.02, 
        3498.35, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0601H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1109.0, 
        924.17, 
        4198.02, 
        3498.35, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0801H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1109.0, 
        924.17, 
        4198.02, 
        3498.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0A01H', 'Series 4000', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1109.0, 
        924.17, 
        4198.02, 
        3498.35, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        144.0, 
        120.0, 
        545.1, 
        454.25, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        144.0, 
        120.0, 
        545.1, 
        454.25, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        144.0, 
        120.0, 
        545.1, 
        454.25, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        144.0, 
        120.0, 
        545.1, 
        454.25, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0714-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        144.0, 
        120.0, 
        545.1, 
        454.25, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.2, 
        37.67, 
        171.1, 
        142.58, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.2, 
        37.67, 
        171.1, 
        142.58, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.2, 
        37.67, 
        171.1, 
        142.58, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.2, 
        37.67, 
        171.1, 
        142.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0744-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        45.2, 
        37.67, 
        171.1, 
        142.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0770-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        72.0, 
        60.0, 
        272.55, 
        227.12, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        90.0, 
        75.0, 
        340.69, 
        283.91, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        90.0, 
        75.0, 
        340.69, 
        283.91, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        90.0, 
        75.0, 
        340.69, 
        283.91, 
        370.0, 
        26.0, 
        3500.0, 
        241.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        90.0, 
        75.0, 
        340.69, 
        283.91, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0788-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        90.0, 
        75.0, 
        340.69, 
        283.91, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        246.0, 
        205.0, 
        931.21, 
        776.01, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        246.0, 
        205.0, 
        931.21, 
        776.01, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        246.0, 
        205.0, 
        931.21, 
        776.01, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        246.0, 
        205.0, 
        931.21, 
        776.01, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0914-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        246.0, 
        205.0, 
        931.21, 
        776.01, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0944-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        77.0, 
        64.17, 
        291.48, 
        242.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0970-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        123.0, 
        102.5, 
        465.61, 
        388.0, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0402A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        154.0, 
        128.33, 
        582.95, 
        485.79, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0502A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        154.0, 
        128.33, 
        582.95, 
        485.79, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0602A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        154.0, 
        128.33, 
        582.95, 
        485.79, 
        370.0, 
        26.0, 
        2000.0, 
        138.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0802A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        154.0, 
        128.33, 
        582.95, 
        485.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT0988-0A02A', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        154.0, 
        128.33, 
        582.95, 
        485.79, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        498.0, 
        415.0, 
        1885.14, 
        1570.95, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        498.0, 
        415.0, 
        1885.14, 
        1570.95, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        498.0, 
        415.0, 
        1885.14, 
        1570.95, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        498.0, 
        415.0, 
        1885.14, 
        1570.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1314-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        498.0, 
        415.0, 
        1885.14, 
        1570.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        156.4, 
        130.33, 
        592.04, 
        493.37, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        156.4, 
        130.33, 
        592.04, 
        493.37, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        156.4, 
        130.33, 
        592.04, 
        493.37, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        156.4, 
        130.33, 
        592.04, 
        493.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1344-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        156.4, 
        130.33, 
        592.04, 
        493.37, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1370-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        249.0, 
        207.5, 
        942.57, 
        785.47, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        313.0, 
        260.83, 
        1184.83, 
        987.36, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        313.0, 
        260.83, 
        1184.83, 
        987.36, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        313.0, 
        260.83, 
        1184.83, 
        987.36, 
        370.0, 
        26.0, 
        1000.0, 
        69.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        313.0, 
        260.83, 
        1184.83, 
        987.36, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT1388-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        313.0, 
        260.83, 
        1184.83, 
        987.36, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1284.8, 
        1070.67, 
        4863.5, 
        4052.91, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1284.8, 
        1070.67, 
        4863.5, 
        4052.91, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1284.8, 
        1070.67, 
        4863.5, 
        4052.91, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1284.8, 
        1070.67, 
        4863.5, 
        4052.91, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2014-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1284.8, 
        1070.67, 
        4863.5, 
        4052.91, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        404.0, 
        336.67, 
        1529.31, 
        1274.42, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        404.0, 
        336.67, 
        1529.31, 
        1274.42, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        404.0, 
        336.67, 
        1529.31, 
        1274.42, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        404.0, 
        336.67, 
        1529.31, 
        1274.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2044-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        404.0, 
        336.67, 
        1529.31, 
        1274.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2070-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        642.4, 
        535.33, 
        2431.75, 
        2026.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0402F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        842.0, 
        701.67, 
        3187.32, 
        2656.1, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0502F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        842.0, 
        701.67, 
        3187.32, 
        2656.1, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0602F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        842.0, 
        701.67, 
        3187.32, 
        2656.1, 
        370.0, 
        26.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0802F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        842.0, 
        701.67, 
        3187.32, 
        2656.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2088-0A02F', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        842.0, 
        701.67, 
        3187.32, 
        2656.1, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1940.0, 
        1616.67, 
        7343.7, 
        6119.75, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1940.0, 
        1616.67, 
        7343.7, 
        6119.75, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1940.0, 
        1616.67, 
        7343.7, 
        6119.75, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1940.0, 
        1616.67, 
        7343.7, 
        6119.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2414-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1940.0, 
        1616.67, 
        7343.7, 
        6119.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        608.0, 
        506.67, 
        2301.53, 
        1917.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        608.0, 
        506.67, 
        2301.53, 
        1917.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        608.0, 
        506.67, 
        2301.53, 
        1917.94, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        608.0, 
        506.67, 
        2301.53, 
        1917.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2444-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        608.0, 
        506.67, 
        2301.53, 
        1917.94, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT 2470-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2470-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        970.0, 
        808.33, 
        3671.85, 
        3059.87, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1218.0, 
        1015.0, 
        4610.63, 
        3842.19, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1218.0, 
        1015.0, 
        4610.63, 
        3842.19, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1218.0, 
        1015.0, 
        4610.63, 
        3842.19, 
        295.0, 
        20.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1218.0, 
        1015.0, 
        4610.63, 
        3842.19, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT2488-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1218.0, 
        1015.0, 
        4610.63, 
        3842.19, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3530.0, 
        2941.67, 
        13362.5, 
        11135.42, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3530.0, 
        2941.67, 
        13362.5, 
        11135.42, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3530.0, 
        2941.67, 
        13362.5, 
        11135.42, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3530.0, 
        2941.67, 
        13362.5, 
        11135.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3214-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3530.0, 
        2941.67, 
        13362.5, 
        11135.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1108.0, 
        923.33, 
        4194.24, 
        3495.2, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1108.0, 
        923.33, 
        4194.24, 
        3495.2, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1108.0, 
        923.33, 
        4194.24, 
        3495.2, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1108.0, 
        923.33, 
        4194.24, 
        3495.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3244-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1108.0, 
        923.33, 
        4194.24, 
        3495.2, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1764.0, 
        1470.0, 
        6677.47, 
        5564.56, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1764.0, 
        1470.0, 
        6677.47, 
        5564.56, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1764.0, 
        1470.0, 
        6677.47, 
        5564.56, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1764.0, 
        1470.0, 
        6677.47, 
        5564.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3270-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1764.0, 
        1470.0, 
        6677.47, 
        5564.56, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0402H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2218.0, 
        1848.33, 
        8396.04, 
        6996.7, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0502H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2218.0, 
        1848.33, 
        8396.04, 
        6996.7, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0602H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2218.0, 
        1848.33, 
        8396.04, 
        6996.7, 
        160.0, 
        11.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0802H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2218.0, 
        1848.33, 
        8396.04, 
        6996.7, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'GNIT3288-0A02H', 'Series 4000', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2218.0, 
        1848.33, 
        8396.04, 
        6996.7, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.67, 
        0.5561, 
        2.54, 
        2.11, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.67, 
        0.5561, 
        2.54, 
        2.11, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.67, 
        0.5561, 
        2.54, 
        2.11, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.67, 
        0.5561, 
        2.54, 
        2.11, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.67, 
        0.5561, 
        2.54, 
        2.11, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.14, 
        0.1162, 
        0.53, 
        0.44, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.14, 
        0.1162, 
        0.53, 
        0.44, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.14, 
        0.1162, 
        0.53, 
        0.44, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.14, 
        0.1162, 
        0.53, 
        0.44, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.14, 
        0.1162, 
        0.53, 
        0.44, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.47, 
        0.3901, 
        1.78, 
        1.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.47, 
        0.3901, 
        1.78, 
        1.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.47, 
        0.3901, 
        1.78, 
        1.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.47, 
        0.3901, 
        1.78, 
        1.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.47, 
        0.3901, 
        1.78, 
        1.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.0, 
        0.83, 
        3.79, 
        3.14, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.0, 
        0.83, 
        3.79, 
        3.14, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.0, 
        0.83, 
        3.79, 
        3.14, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.0, 
        0.83, 
        3.79, 
        3.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.0, 
        0.83, 
        3.79, 
        3.14, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.19, 
        0.9877, 
        4.5, 
        3.74, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.19, 
        0.9877, 
        4.5, 
        3.74, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.19, 
        0.9877, 
        4.5, 
        3.74, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.19, 
        0.9877, 
        4.5, 
        3.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.19, 
        0.9877, 
        4.5, 
        3.74, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.44, 
        1.1952, 
        5.45, 
        4.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.44, 
        1.1952, 
        5.45, 
        4.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.44, 
        1.1952, 
        5.45, 
        4.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.44, 
        1.1952, 
        5.45, 
        4.52, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.44, 
        1.1952, 
        5.45, 
        4.52, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.24, 
        0.1992, 
        0.91, 
        0.75, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.24, 
        0.1992, 
        0.91, 
        0.75, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.24, 
        0.1992, 
        0.91, 
        0.75, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.24, 
        0.1992, 
        0.91, 
        0.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.24, 
        0.1992, 
        0.91, 
        0.75, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.49, 
        0.4067, 
        1.85, 
        1.54, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.49, 
        0.4067, 
        1.85, 
        1.54, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.49, 
        0.4067, 
        1.85, 
        1.54, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.49, 
        0.4067, 
        1.85, 
        1.54, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.49, 
        0.4067, 
        1.85, 
        1.54, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.82, 
        0.6806, 
        3.1, 
        2.58, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.24, 
        1.8592, 
        8.48, 
        7.04, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.24, 
        1.8592, 
        8.48, 
        7.04, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.24, 
        1.8592, 
        8.48, 
        7.04, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.24, 
        1.8592, 
        8.48, 
        7.04, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.24, 
        1.8592, 
        8.48, 
        7.04, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.69, 
        2.2327, 
        10.18, 
        8.45, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.69, 
        2.2327, 
        10.18, 
        8.45, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.69, 
        2.2327, 
        10.18, 
        8.45, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.69, 
        2.2327, 
        10.18, 
        8.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        2.69, 
        2.2327, 
        10.18, 
        8.45, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.25, 
        2.6975, 
        12.3, 
        10.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.25, 
        2.6975, 
        12.3, 
        10.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.25, 
        2.6975, 
        12.3, 
        10.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.25, 
        2.6975, 
        12.3, 
        10.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        3.25, 
        2.6975, 
        12.3, 
        10.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.4565, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.4565, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.4565, 
        2.08, 
        1.73, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.4565, 
        2.08, 
        1.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        0.55, 
        0.4565, 
        2.08, 
        1.73, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.11, 
        0.9213, 
        4.2, 
        3.49, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.11, 
        0.9213, 
        4.2, 
        3.49, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.11, 
        0.9213, 
        4.2, 
        3.49, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.11, 
        0.9213, 
        4.2, 
        3.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.11, 
        0.9213, 
        4.2, 
        3.49, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-04013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.86, 
        1.5438, 
        7.04, 
        5.84, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-05013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.86, 
        1.5438, 
        7.04, 
        5.84, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-06013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.86, 
        1.5438, 
        7.04, 
        5.84, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-08013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.86, 
        1.5438, 
        7.04, 
        5.84, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-0A013', 'Series 900', 'Simplex', 
        NULL, 
        NULL, 
        NULL, 
        1.86, 
        1.5438, 
        7.04, 
        5.84, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.12, 
        0.9296, 
        4.24, 
        3.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.12, 
        0.9296, 
        4.24, 
        3.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.12, 
        0.9296, 
        4.24, 
        3.52, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.12, 
        0.9296, 
        4.24, 
        3.52, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1912-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.12, 
        0.9296, 
        4.24, 
        3.52, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.34, 
        1.1122, 
        5.07, 
        4.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.34, 
        1.1122, 
        5.07, 
        4.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.34, 
        1.1122, 
        5.07, 
        4.21, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.34, 
        1.1122, 
        5.07, 
        4.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1914-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.34, 
        1.1122, 
        5.07, 
        4.21, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1917-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1929-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.28, 
        0.2324, 
        1.06, 
        0.88, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1958-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.56, 
        0.4648, 
        2.12, 
        1.76, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.94, 
        0.7802, 
        3.56, 
        2.95, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.94, 
        0.7802, 
        3.56, 
        2.95, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.94, 
        0.7802, 
        3.56, 
        2.95, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.94, 
        0.7802, 
        3.56, 
        2.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T1997-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.94, 
        0.7802, 
        3.56, 
        2.95, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.0, 
        1.66, 
        7.57, 
        6.28, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.0, 
        1.66, 
        7.57, 
        6.28, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.0, 
        1.66, 
        7.57, 
        6.28, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.0, 
        1.66, 
        7.57, 
        6.28, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2512-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.0, 
        1.66, 
        7.57, 
        6.28, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.38, 
        1.9754, 
        9.01, 
        7.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.38, 
        1.9754, 
        9.01, 
        7.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.38, 
        1.9754, 
        9.01, 
        7.48, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.38, 
        1.9754, 
        9.01, 
        7.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2514-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.38, 
        1.9754, 
        9.01, 
        7.48, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.88, 
        2.3904, 
        10.9, 
        9.05, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.88, 
        2.3904, 
        10.9, 
        9.05, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.88, 
        2.3904, 
        10.9, 
        9.05, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.88, 
        2.3904, 
        10.9, 
        9.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2517-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.88, 
        2.3904, 
        10.9, 
        9.05, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.48, 
        0.3984, 
        1.82, 
        1.51, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.48, 
        0.3984, 
        1.82, 
        1.51, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.48, 
        0.3984, 
        1.82, 
        1.51, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.48, 
        0.3984, 
        1.82, 
        1.51, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2529-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.48, 
        0.3984, 
        1.82, 
        1.51, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.98, 
        0.8134, 
        3.71, 
        3.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.98, 
        0.8134, 
        3.71, 
        3.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.98, 
        0.8134, 
        3.71, 
        3.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.98, 
        0.8134, 
        3.71, 
        3.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2558-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        0.98, 
        0.8134, 
        3.71, 
        3.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T2597-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.64, 
        1.3612, 
        6.21, 
        5.15, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.48, 
        3.7184, 
        16.96, 
        14.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.48, 
        3.7184, 
        16.96, 
        14.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.48, 
        3.7184, 
        16.96, 
        14.08, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.48, 
        3.7184, 
        16.96, 
        14.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3812-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        4.48, 
        3.7184, 
        16.96, 
        14.08, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.38, 
        4.4654, 
        20.37, 
        16.9, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.38, 
        4.4654, 
        20.37, 
        16.9, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.38, 
        4.4654, 
        20.37, 
        16.9, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.38, 
        4.4654, 
        20.37, 
        16.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3814-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        5.38, 
        4.4654, 
        20.37, 
        16.9, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.5, 
        5.395, 
        24.61, 
        20.42, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.5, 
        5.395, 
        24.61, 
        20.42, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.5, 
        5.395, 
        24.61, 
        20.42, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.5, 
        5.395, 
        24.61, 
        20.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3817-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        6.5, 
        5.395, 
        24.61, 
        20.42, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.913, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.913, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.913, 
        4.16, 
        3.46, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.913, 
        4.16, 
        3.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3829-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        1.1, 
        0.913, 
        4.16, 
        3.46, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.22, 
        1.8426, 
        8.4, 
        6.98, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.22, 
        1.8426, 
        8.4, 
        6.98, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.22, 
        1.8426, 
        8.4, 
        6.98, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.22, 
        1.8426, 
        8.4, 
        6.98, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3858-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        2.22, 
        1.8426, 
        8.4, 
        6.98, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-04023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.72, 
        3.0876, 
        14.08, 
        11.69, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-05023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.72, 
        3.0876, 
        14.08, 
        11.69, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-06023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.72, 
        3.0876, 
        14.08, 
        11.69, 
        500.0, 
        34.0, 
        3000.0, 
        207.0, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-08023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.72, 
        3.0876, 
        14.08, 
        11.69, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    
    INSERT INTO `pumps` (
        `Model`, `Series`, `Simplex_Duplex`, `pump_price`, `tefc_price`, `xpfc_price`,
        `gph_60hz`, `gph_50hz`, `lph_60hz`, `lph_50hz`, `max_pressure_psi`, `max_pressure_bar`,
        `max_pressure_psi_hp`, `max_pressure_bar_hp`, `hp_adder_price`
    ) VALUES (
        'DM3T3897-0A023', 'Series 900', 'Duplex', 
        NULL, 
        NULL, 
        NULL, 
        3.72, 
        3.0876, 
        14.08, 
        11.69, 
        150.0, 
        10.0, 
        NULL, 
        NULL, 
        NULL
    );
    