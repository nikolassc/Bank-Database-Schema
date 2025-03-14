--
-- File generated with SQLiteStudio v3.4.4 on Fri Mar 14 17:44:53 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: e_Banking
CREATE TABLE IF NOT EXISTS e_Banking (
  KodikosBank INTEGER  NOT NULL,
  Pelatis_KodikosPel INTEGER  NOT NULL,
  Username VARCHAR(45),
  Password  VARCHAR(45),
  Email VARCHAR(60),
  PRIMARY KEY(KodikosBank),
  FOREIGN KEY(Pelatis_KodikosPel)
    REFERENCES Pelatis(KodikosPel)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Eksipiretei
CREATE TABLE IF NOT EXISTS Eksipiretei (
  Ipallilos_KodikosIpal INTEGER  NOT NULL,
  Pelatis_KodikosPel INTEGER  NOT NULL,
  Hmerominia DATE  NOT NULL,
  [Wra] TIME  NOT NULL,
  PRIMARY KEY(Ipallilos_KodikosIpal, Pelatis_KodikosPel, Hmerominia, [Wra]),
  FOREIGN KEY(Ipallilos_KodikosIpal)
    REFERENCES Ipallilos(KodikosIpal)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(Pelatis_KodikosPel)
    REFERENCES Pelatis(KodikosPel)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Ipallilos
CREATE TABLE IF NOT EXISTS Ipallilos (
  KodikosIpal INTEGER  NOT NULL,
  Onoma VARCHAR(20)  NOT NULL,
  Eponimo VARCHAR(45)  NOT NULL,
  Dieuthinsi VARCHAR(60),
  Tilephono VARCHAR(45),
  PRIMARY KEY(KodikosIpal)
);

-- Table: Karta
CREATE TABLE IF NOT EXISTS Karta (
  KodikosKartas INTEGER  NOT NULL,
  Logariasmos_KodikosLog INTEGER  NOT NULL,
  PIN INTEGER,
  Hm_Liksis DATE,
  PRIMARY KEY(KodikosKartas),
  FOREIGN KEY(Logariasmos_KodikosLog)
    REFERENCES Logariasmos(KodikosLog)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Kinisi
CREATE TABLE IF NOT EXISTS Kinisi (
  KodikosKin INTEGER  NOT NULL,
  Logariasmos_KodikosLog INTEGER  NOT NULL,
  Poso INTEGER,
  Eidos VARCHAR(20),
  Hmerominia DATE,
  PRIMARY KEY(KodikosKin),
  FOREIGN KEY(Logariasmos_KodikosLog)
    REFERENCES Logariasmos(KodikosLog)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Logariasmos
CREATE TABLE IF NOT EXISTS Logariasmos (
  KodikosLog INTEGER  NOT NULL,
  Pelatis_KodikosPel INTEGER  NOT NULL,
  Eidos VARCHAR(20),
  Ypolipo INTEGER,
  PRIMARY KEY(KodikosLog),
  FOREIGN KEY(Pelatis_KodikosPel)
    REFERENCES Pelatis(KodikosPel)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: Pelatis
CREATE TABLE IF NOT EXISTS Pelatis (
  KodikosPel INTEGER  NOT NULL,
  Onoma VARCHAR(20)  NOT NULL,
  Epitheto VARCHAR(45),
  Patronimo VARCHAR(20),
  AFM INTEGER,
  AT INTEGER,
  Poli VARCHAR(20),
  Odos VARCHAR(45),
  Arithmos INTEGER,
  TK INTEGER,
  [Wra] TIME,
  Hmerominia DATE,
  PRIMARY KEY(KodikosPel)
);

-- Table: Tilephona
CREATE TABLE IF NOT EXISTS Tilephona (
  Pelatis_KodikosPel INTEGER  NOT NULL,
  Tilephono VARCHAR(45)  NOT NULL,
  PRIMARY KEY(Pelatis_KodikosPel, Tilephono),
  FOREIGN KEY(Pelatis_KodikosPel)
    REFERENCES Pelatis(KodikosPel)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Index: e_Banking_FKIndex1
CREATE INDEX IF NOT EXISTS e_Banking_FKIndex1 ON e_Banking (Pelatis_KodikosPel);

-- Index: Ipallilos_has_Pelatis_FKIndex1
CREATE INDEX IF NOT EXISTS Ipallilos_has_Pelatis_FKIndex1 ON Eksipiretei (Ipallilos_KodikosIpal);

-- Index: Ipallilos_has_Pelatis_FKIndex2
CREATE INDEX IF NOT EXISTS Ipallilos_has_Pelatis_FKIndex2 ON Eksipiretei (Pelatis_KodikosPel);

-- Index: Karta_FKIndex1
CREATE INDEX IF NOT EXISTS Karta_FKIndex1 ON Karta (Logariasmos_KodikosLog);

-- Index: Kinisi_FKIndex1
CREATE INDEX IF NOT EXISTS Kinisi_FKIndex1 ON Kinisi (Logariasmos_KodikosLog);

-- Index: Logariasmos_FKIndex1
CREATE INDEX IF NOT EXISTS Logariasmos_FKIndex1 ON Logariasmos (Pelatis_KodikosPel);

-- Index: Tilephona_FKIndex1
CREATE INDEX IF NOT EXISTS Tilephona_FKIndex1 ON Tilephona (Pelatis_KodikosPel);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
