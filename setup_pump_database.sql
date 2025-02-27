-- Drop existing table if it exists
DROP TABLE IF EXISTS pumps;

-- Create the pumps table with correct column types
CREATE TABLE pumps (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Model VARCHAR(255),
    Series VARCHAR(255),
    Simplex_Duplex VARCHAR(50),
    pump_price DECIMAL(10,2) NULL,
    tefc_price DECIMAL(10,2) NULL,
    xpfc_price DECIMAL(10,2) NULL,
    gph_60hz DECIMAL(10,2) NULL,
    gph_50hz DECIMAL(10,2) NULL,
    lph_60hz DECIMAL(10,2) NULL,
    lph_50hz DECIMAL(10,2) NULL,
    max_pressure_psi DECIMAL(10,2) NULL,
    max_pressure_bar DECIMAL(10,2) NULL,
    max_pressure_psi_hp DECIMAL(10,2) NULL,
    max_pressure_bar_hp DECIMAL(10,2) NULL,
    hp_adder_price DECIMAL(10,2) NULL
);
