

CREATE TABLE posts (
  post_id BIGINT PRIMARY KEY,
  platform VARCHAR(20),
  post_dt TIMESTAMP,
  author VARCHAR(120),
  text TEXT,
  likes INT,
  comments INT,
  shares INT,
  hashtag_main VARCHAR(100)
);
CREATE TABLE brands (
  brand_id INT PRIMARY KEY,
  brand_name VARCHAR(80) UNIQUE,
  keywords_csv TEXT
);

CREATE TABLE post_brand_map (
  post_id BIGINT,
  brand_id BIGINT,
  FOREIGN KEY (post_id) REFERENCES posts(post_id),
  FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);

CREATE TABLE sentiment (
  post_id BIGINT PRIMARY KEY,
  polarity_score NUMERIC(4,3), 
  label VARCHAR(10)             
);

