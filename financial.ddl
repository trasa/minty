
-- CREATE TABLE "mint_transactions" ----------------------------
CREATE TABLE "public"."mint_transactions" ( 
	"transaction_id" Bigint DEFAULT nextval('mint_transactions_sampleid_seq'::regclass) NOT NULL,
	"transaction_date" Date NOT NULL,
	"description" Character Varying( 300 ) NOT NULL,
	"original_description" Character Varying( 300 ) NOT NULL,
	"amount" Numeric( 8, 2 ) NOT NULL,
	"transaction_type" Character Varying( 50 ) NOT NULL,
	"category" Character Varying( 200 ) NOT NULL,
	"account_name" Character Varying( 200 ) NOT NULL,
	"labels" Character Varying( 300 ) DEFAULT NULL::character varying,
	"notes" Character Varying( 300 ) DEFAULT NULL::character varying,
	PRIMARY KEY ( "transaction_id" ) );
 ;

