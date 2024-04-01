CREATE TABLE IF NOT EXISTS project (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    budget double
);

CREATE TABLE IF NOT EXISTS researcher (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    specialization varchar(255)
);

CREATE TABLE IF NOT EXISTS researcher_project(
    projectId int ,
    researcherId int ,
    PRIMARY KEY (projectId , researcherId),
    FOREIGN KEY(projectId ) REFERENCES project(id),
    FOREIGN KEY(researcherId) REFERENCES researcher(id)
);