-- Dimension: BNF (Cardiovascular focus)
CREATE TABLE IF NOT EXISTS dim_bnf (
  bnf_code VARCHAR(20) PRIMARY KEY,
  bnf_name VARCHAR(500),
  bnf_chapter INT,
  bnf_chapter_name VARCHAR(200),
  is_cardiovascular BIT
);
