IF NOT EXISTS (
    SELECT *
    FROM sys.databases
    WHERE
        name = 'TestDB'
) CREATE
DATABASE TestDB
COLLATE Korean_100_CI_AS_SC_UTF8;

SELECT name, collation_name
FROM sys.databases
WHERE
    name = 'TestDB';

USE TestDB;

DROP TABLE test_collation;

CREATE TABLE test_collation (
    id INT IDENTITY(1, 1) PRIMARY KEY,
    default_col VARCHAR(50),
    wansung_col VARCHAR(50)
    COLLATE Korean_Wansung_CI_AS,
    latin1_Ncol NVARCHAR(50)
    COLLATE SQL_Latin1_General_CP1_CI_AS
);

INSERT INTO
    test_collation (
        default_col,
        wansung_col,
        latin1_Ncol
    )
VALUES
    -- with N prefix
    (
        N'with N',
        N'with N',
        N'with N'
    ), -- 영문
    (N'가나다', N'가나다', N'가나다'), -- 기본 한글
    (N'썛씠덂쒗뙑', N'썛씠덂쒗뙑', N'썛씠덂쒗뙑'), -- 확장 한글
    (N'뀕ㅏaㅗ', N'뀕ㅏaㅗ', N'뀕ㅏaㅗ'), -- 자음/모음 조합
    (N'ｶﾀｶﾅ', N'ｶﾀｶﾅ', N'ｶﾀｶﾅ'), -- 반각 카타카나
    (N'カタカナ', N'カタカナ', N'カタカナ'), -- 전각 카타카나
    (N'🇰🇷', N'🇰🇷', N'🇰🇷'), -- 이모지
    -- without N prefix
    (
        'without N',
        'without N',
        'without N'
    ), -- 영문
    ('가나다', '가나다', '가나다'), -- 기본 한글
    ('썛씠덂쒗뙑', '썛씠덂쒗뙑', '썛씠덂쒗뙑'), -- 확장 한글
    ('뀕ㅏaㅗ', '뀕ㅏaㅗ', '뀕ㅏaㅗ'), -- 자음/모음 조합
    ('ｶﾀｶﾅ', 'ｶﾀｶﾅ', 'ｶﾀｶﾅ'), -- 반각 카타카나
    ('カタカナ', 'カタカナ', 'カタカナ'), -- 전각 카타카나
    ('🇰🇷', '🇰🇷', '🇰🇷') -- 이모지
;

SELECT
    COLUMN_NAME,
    DATA_TYPE,
    COLLATION_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_NAME = 'test_collation';

SELECT * FROM test_collation;