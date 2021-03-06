--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: chiphi_usp(date, date); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION chiphi_usp(date1 date, date2 date) RETURNS TABLE(ngaychiphi timestamp without time zone, tienchiphitheongay numeric)
    LANGUAGE plpgsql
    AS $$
          BEGIN
          RETURN QUERY SELECT c.ngaychiphi,c.tienchiphitheongay
              FROM chiphi_matview  c WHERE c.ngaychiphi between date1 and date2;
      END;
      $$;


--
-- Name: doanhthu_usp(date, date); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION doanhthu_usp(date1 date, date2 date) RETURNS TABLE(ngaythu timestamp without time zone, tienthutheongay numeric)
    LANGUAGE plpgsql
    AS $$
          BEGIN
          RETURN QUERY SELECT c.ngaythu,c.tienthutheongay
              FROM doanhthu_matview  c WHERE c.ngaythu between date1 and date2;
      END;
      $$;


--
-- Name: nhap_usp(date, date); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION nhap_usp(date1 date, date2 date) RETURNS TABLE(ngaynhap timestamp without time zone, tiennhaptheongay numeric)
    LANGUAGE plpgsql
    AS $$
          BEGIN
          RETURN QUERY SELECT c.ngaynhap,c.tiennhaptheongay
              FROM nhap_matview  c WHERE c.ngaynhap between date1 and date2;
      END;
      $$;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chiphi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE chiphi (
    id integer NOT NULL,
    tenhang character varying(100) NOT NULL,
    donvitinh character varying(50),
    dongia numeric(38,0),
    soluong integer,
    create_at timestamp without time zone,
    update_at timestamp without time zone
);


--
-- Name: chiphi_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE chiphi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chiphi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE chiphi_id_seq OWNED BY chiphi.id;


--
-- Name: chiphi_matview; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW chiphi_matview AS
 SELECT s.ngaychiphi,
    sum(s.thanhtien) AS tienchiphitheongay
   FROM ( SELECT chiphi.id,
            chiphi.tenhang,
            chiphi.donvitinh,
            chiphi.dongia,
            chiphi.soluong,
            ((chiphi.soluong)::numeric * chiphi.dongia) AS thanhtien,
            date_trunc('day'::text, chiphi.create_at) AS ngaychiphi,
            chiphi.update_at
           FROM chiphi) s
  GROUP BY s.ngaychiphi
  ORDER BY s.ngaychiphi
  WITH NO DATA;


--
-- Name: doanhthu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doanhthu (
    id integer NOT NULL,
    masoban character varying(50),
    khoanmucthu character varying(100),
    donvitinh character varying(50),
    dongia numeric(38,0),
    soluong integer,
    create_at timestamp without time zone,
    update_at timestamp without time zone
);


--
-- Name: doanhthu_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doanhthu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: doanhthu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doanhthu_id_seq OWNED BY doanhthu.id;


--
-- Name: doanhthu_matview; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW doanhthu_matview AS
 SELECT s.ngaythu,
    sum(s.thanhtien) AS tienthutheongay
   FROM ( SELECT doanhthu.id,
            doanhthu.masoban,
            doanhthu.khoanmucthu,
            doanhthu.donvitinh,
            doanhthu.dongia,
            doanhthu.soluong,
            ((doanhthu.soluong)::numeric * doanhthu.dongia) AS thanhtien,
            date_trunc('day'::text, doanhthu.create_at) AS ngaythu,
            doanhthu.update_at
           FROM doanhthu) s
  GROUP BY s.ngaythu
  ORDER BY s.ngaythu
  WITH NO DATA;


--
-- Name: nhap; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE nhap (
    id integer NOT NULL,
    tenhang character varying(100) NOT NULL,
    donvitinh character varying(50),
    dongia numeric(38,0),
    soluong integer,
    create_at timestamp without time zone,
    update_at timestamp without time zone
);


--
-- Name: nhap_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE nhap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nhap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE nhap_id_seq OWNED BY nhap.id;


--
-- Name: nhap_matview; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW nhap_matview AS
 SELECT s.ngaynhap,
    sum(s.thanhtien) AS tiennhaptheongay
   FROM ( SELECT nhap.id,
            nhap.tenhang,
            nhap.donvitinh,
            nhap.dongia,
            nhap.soluong,
            ((nhap.soluong)::numeric * nhap.dongia) AS thanhtien,
            date_trunc('day'::text, nhap.create_at) AS ngaynhap,
            nhap.update_at
           FROM nhap) s
  GROUP BY s.ngaynhap
  ORDER BY s.ngaynhap
  WITH NO DATA;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: tonghoptheongay_matview; Type: MATERIALIZED VIEW; Schema: public; Owner: -
--

CREATE MATERIALIZED VIEW tonghoptheongay_matview AS
 SELECT a.ngay,
    COALESCE(b.tiennhaptheongay, '0'::numeric) AS tiennhap,
    COALESCE(c.tienchiphitheongay, '0'::numeric) AS tienchiphi,
    COALESCE(d.tienthutheongay, '0'::numeric) AS tienthutheongay,
    ((COALESCE(d.tienthutheongay, '0'::numeric) - COALESCE(b.tiennhaptheongay, '0'::numeric)) - COALESCE(c.tienchiphitheongay, '0'::numeric)) AS loinhuan
   FROM (((( SELECT DISTINCT date_trunc('day'::text, nhap.create_at) AS ngay
           FROM nhap
        UNION
         SELECT DISTINCT date_trunc('day'::text, chiphi.create_at) AS ngay
           FROM chiphi
        UNION
         SELECT DISTINCT date_trunc('day'::text, doanhthu.create_at) AS ngay
           FROM doanhthu) a
     LEFT JOIN ( SELECT s.ngaynhap,
            sum(s.thanhtien) AS tiennhaptheongay
           FROM ( SELECT nhap.id,
                    nhap.tenhang,
                    nhap.donvitinh,
                    nhap.dongia,
                    nhap.soluong,
                    ((nhap.soluong)::numeric * nhap.dongia) AS thanhtien,
                    date_trunc('day'::text, nhap.create_at) AS ngaynhap,
                    nhap.update_at
                   FROM nhap) s
          GROUP BY s.ngaynhap) b ON ((a.ngay = b.ngaynhap)))
     LEFT JOIN ( SELECT s.ngaychiphi,
            sum(s.thanhtien) AS tienchiphitheongay
           FROM ( SELECT chiphi.id,
                    chiphi.tenhang,
                    chiphi.donvitinh,
                    chiphi.dongia,
                    chiphi.soluong,
                    ((chiphi.soluong)::numeric * chiphi.dongia) AS thanhtien,
                    date_trunc('day'::text, chiphi.create_at) AS ngaychiphi,
                    chiphi.update_at
                   FROM chiphi) s
          GROUP BY s.ngaychiphi) c ON ((a.ngay = c.ngaychiphi)))
     LEFT JOIN ( SELECT s.ngaythu,
            sum(s.thanhtien) AS tienthutheongay
           FROM ( SELECT doanhthu.id,
                    doanhthu.masoban,
                    doanhthu.khoanmucthu,
                    doanhthu.donvitinh,
                    doanhthu.dongia,
                    doanhthu.soluong,
                    ((doanhthu.soluong)::numeric * doanhthu.dongia) AS thanhtien,
                    date_trunc('day'::text, doanhthu.create_at) AS ngaythu,
                    doanhthu.update_at
                   FROM doanhthu) s
          GROUP BY s.ngaythu) d ON ((a.ngay = d.ngaythu)))
  ORDER BY a.ngay
  WITH NO DATA;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY chiphi ALTER COLUMN id SET DEFAULT nextval('chiphi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doanhthu ALTER COLUMN id SET DEFAULT nextval('doanhthu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY nhap ALTER COLUMN id SET DEFAULT nextval('nhap_id_seq'::regclass);


--
-- Name: chiphi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY chiphi
    ADD CONSTRAINT chiphi_pkey PRIMARY KEY (id);


--
-- Name: doanhthu_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doanhthu
    ADD CONSTRAINT doanhthu_pkey PRIMARY KEY (id);


--
-- Name: nhap_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY nhap
    ADD CONSTRAINT nhap_pkey PRIMARY KEY (id);


--
-- Name: index_chiphi_matview_on_ngaychiphi; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_chiphi_matview_on_ngaychiphi ON chiphi_matview USING btree (ngaychiphi);


--
-- Name: index_doanhthu_matview_on_ngaythu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_doanhthu_matview_on_ngaythu ON doanhthu_matview USING btree (ngaythu);


--
-- Name: index_nhap_matview_on_ngaynhap; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_nhap_matview_on_ngaynhap ON nhap_matview USING btree (ngaynhap);


--
-- Name: index_tonghoptheongay_matview_on_ngay; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_tonghoptheongay_matview_on_ngay ON tonghoptheongay_matview USING btree (ngay);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO schema_migrations (version) VALUES ('20160126121245');

INSERT INTO schema_migrations (version) VALUES ('20160126150032');

