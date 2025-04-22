create database jaismeen;
use jaismeen;

CREATE TABLE Courts (
    court_id INT PRIMARY KEY AUTO_INCREMENT,
    court_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
CREATE TABLE Judges (
    judge_id INT PRIMARY KEY AUTO_INCREMENT,
    judge_name VARCHAR(100) NOT NULL,
    court_id INT,
    FOREIGN KEY (court_id) REFERENCES Courts(court_id)
);
CREATE TABLE Parties (
    party_id INT PRIMARY KEY AUTO_INCREMENT,
    party_name VARCHAR(100) NOT NULL,
    party_type ENUM('Plaintiff', 'Defendant', 'Lawyer', 'Other') NOT NULL
);
CREATE TABLE Cases (
    case_id INT PRIMARY KEY AUTO_INCREMENT,
    case_number VARCHAR(50) NOT NULL UNIQUE,
    case_type VARCHAR(50) NOT NULL,
    filing_date DATE NOT NULL,
    status ENUM('Open', 'In Progress', 'Closed', 'Appealed') NOT NULL,
    judge_id INT,
    FOREIGN KEY (judge_id) REFERENCES Judges(judge_id)
);
CREATE TABLE Case_Parties (
    case_id INT,
    party_id INT,
    role_in_case VARCHAR(50),
    PRIMARY KEY (case_id, party_id),
    FOREIGN KEY (case_id) REFERENCES Cases(case_id) ON DELETE CASCADE,
    FOREIGN KEY (party_id) REFERENCES Parties(party_id) ON DELETE CASCADE
);
CREATE TABLE Hearings (
    hearing_id INT PRIMARY KEY AUTO_INCREMENT,
    case_id INT,
    hearing_date DATE NOT NULL,
    remarks TEXT,
    FOREIGN KEY (case_id) REFERENCES Cases(case_id) ON DELETE CASCADE
);
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Clerk', 'Judge') NOT NULL
);
INSERT INTO Courts (court_name, location) VALUES
('High Court of City A', 'City A'),
('District Court of City B', 'City B');

INSERT INTO Judges (judge_name, court_id) VALUES
('Justice Maria Clark', 1),
('Justice Kevin Smith', 2);

INSERT INTO Parties (party_name, party_type) VALUES
('John Doe', 'Plaintiff'),
('Acme Corporation', 'Defendant'),
('Laura Stone', 'Lawyer'),
('Michael Chen', 'Plaintiff'),
('United Holdings Ltd.', 'Defendant'),
('Rachel Green', 'Lawyer');

INSERT INTO Cases (case_number, case_type, filing_date, status, judge_id) VALUES
('2025-CIV-001', 'Civil', '2025-01-10', 'Open', 1),
('2025-CIV-002', 'Civil', '2025-02-15', 'In Progress', 2),
('2025-CRIM-003', 'Criminal', '2025-03-20', 'Closed', 1);

INSERT INTO Case_Parties (case_id, party_id, role_in_case) VALUES
(1, 1, 'Plaintiff'),
(1, 2, 'Defendant'),
(1, 3, 'Lawyer'),
(2, 4, 'Plaintiff'),
(2, 5, 'Defendant'),
(2, 6, 'Lawyer');

INSERT INTO Hearings (case_id, hearing_date, remarks) VALUES
(1, '2025-02-01', 'Initial hearing held, next date scheduled.'),
(1, '2025-03-01', 'Document submission pending.'),
(2, '2025-04-01', 'Evidence review ongoing.'),
(3, '2025-03-25', 'Final verdict delivered.');

INSERT INTO Users (username, password_hash, role) VALUES
('admin1', 'hashed_password_123', 'Admin'),
('clerk1', 'hashed_password_456', 'Clerk'),
('judge_maria', 'hashed_password_789', 'Judge');

