USE ThietBiStore;
GO

CREATE TABLE tbl_User
(
    UserID INT IDENTITY(1,1) PRIMARY KEY,

    Username VARCHAR(50) NOT NULL UNIQUE,

    Password VARCHAR(100) NOT NULL,

    FullName NVARCHAR(100) NOT NULL,

    Role VARCHAR(20) NOT NULL
);
GO

INSERT INTO tbl_User
(
    Username,
    Password,
    FullName,
    Role
)
VALUES
(
    'admin',
    '123',
    N'Quản trị viên',
    'Admin'
),
(
    'user1',
    '123',
    N'Nguyễn Thị Mỹ Hân',
    'User'
),
(
    'user2',
    '123',
    N'Vũ Trọng Minh Châu',
    'User'
),
(
    'user3',
    '123',
    N'Võ Thị Hoang Yến',
    'User'
);
GO

SELECT * FROM tbl_User;
GO