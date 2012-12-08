
CREATE TABLE tblrole
(
  cid serial not null,
  description character varying(255),
  constraint tblrole_pkey primary key (cid)
  
)

CREATE TABLE tblboardrate
(
  cid serial not null,
  boardrate character varying(255),
  categoryname character varying(255),
  quantity character varying(255),
  CONSTRAINT tblboardrate_pkey PRIMARY KEY (cid )
)

CREATE TABLE tbldeliverymethod
(
 cid serial not null,
  deliverymehtod character varying(255),
  CONSTRAINT tbldeliverymethod_pkey PRIMARY KEY (cid )
)
CREATE TABLE tblordertype
(
 cid serial not null,
  ordertype character varying(255),
  CONSTRAINT tbltblordertype_pkey PRIMARY KEY (cid )
)

CREATE TABLE tblbrand
(
 cid serial not null,
  brandname character varying(255),
  CONSTRAINT tblbrand_pkey PRIMARY KEY (cid )
)

CREATE TABLE tbldiscount
(
 cid serial not null,
 scheme character varying(255), 
 discountpercent integer,
  CONSTRAINT tbldiscount_pkey PRIMARY KEY (cid )
)
CREATE TABLE tbltax
(
 cid serial not null,
 taxname character varying(255), 
 taxrate integer,
  CONSTRAINT tbldiscount_pkey PRIMARY KEY (cid )
)


CREATE TABLE tblproductgroup
(
  cid serial not null,
  groupname character varying(255),
  CONSTRAINT tblproductgroup_pkey PRIMARY KEY (cid )
)

CREATE TABLE tbluom
(
 cid serial not null,
  unitofmeasure character varying(255),
  CONSTRAINT tbluom_pkey PRIMARY KEY (cid )
)

CREATE TABLE tblwarehouse
(
  cid serial not null,
  warehouse character varying(255),
  CONSTRAINT tblwarehouse_pkey PRIMARY KEY (cid  )
)



create table tblcustomertype(
	cid serial not null,
	description varchar,
	constraint tblcustomertype_pk_cid primary key (cid)
)


create table tblcompany(
	cid serial primary key,
	companyname varchar(100),
	tradingname varchar(100),
	companyid varchar(20),
	regdnumber varchar(25),
	website varchar,
	salesemail varchar(100),
	purchaseemail varchar(100),
	address1 varchar(500),
	address2 varchar(500),
	city varchar(100),
	phone1 varchar,
	phone2 varchar,
	mobile varchar,
	state integer references tblstate (cid), 
	country integer references tblcountry (cid),
	constraint unique_tblcompany unique(companyid)	
)
create table tblfinancialmonth(
	cid serial NOT NULL primary key,
	companyId integer references tblcompany (cid), 
	FromDate timestamp NULL ,
	ToDate timestamp NULL ,
	Name varchar (50)  ,
	CreatedDate timestamp NULL DEFAULT (current_timestamp),
	ModifiedDate timestamp NULL ,
	IsReleased boolean NULL  DEFAULT (false),
	processLock boolean
)

create table tblcustomer(
	cid serial not null,
	monthId integer references tblfinancialmonth (cid),
	companyId integer references tblcompany (cid),
	customertype integer references tblcustomertype (cid),
	firstname varchar,
	lastname varchar,
	customerImage varchar,
	constraint tblcustomer_pk_cid primary key (cid)
	
)
CREATE TABLE tblAddress (
	CID serial not null,
	ADDRESS1 character varying (200) NULL ,
	ADDRESS2 character varying (200) NULL ,
	ADDRESS3 character varying (200) NULL ,
	CITY character varying (200) NULL ,
	STATE integer references tblstate (cid), 
	COUNTRY integer references tblcountry (cid),
	PIN character varying (200) NULL ,
	PHONE1 character varying (200) NULL ,
	PHONE2 character varying (200) NULL ,
	FAX character varying (200) NULL ,
	mobile character varying (200) NULL ,
	EMAIL character varying (200) NULL ,
	NAME character varying (200) NULL ,
	extnno character varying (200) NULL ,
	constraint pk_tblAddress primary key (cid)
)

create table tblcountry(
	cid serial primary key,
	description varchar
)

create table tblstate(
	cid serial primary key,
	country integer references tblcountry (cid), 
	description varchar
)

create table tblCustomerAddress(
	cid serial not null,
	customerid integer references tblcustomer (cid),
	contactaddress int,
	presentaddress int,
	permanentaddress int,
	deliveryddress int,
	constraint tblCustomerAddress_pk_cid primary key (cid),
	constraint fk_contact_address foreign key (contactaddress)
		references tblAddress(cid),
	constraint fk_present_address foreign key (presentaddress)
		references tblAddress(cid),
	constraint fk_permanent_address foreign key (permanentaddress)
		references tblAddress(cid),
	constraint fk_delivery_ddress foreign key (deliveryddress)
		references tblAddress(cid)
)

create table tblVendorSupplier(
cid serial not null,
supplierCode character varying(25),
supliername character varying(50),
suppliertype character varying(25),
specialization character varying(100),
regno character varying(25),
cstvatnumber integer,
notes varchar(1000),
constraint tblVendorSupplier_pk_cid primary key (cid)
)

create table tblSupplierAddress(
	cid serial not null,
	supplierid int,
	contactaddress int,
	presentaddress int,
	constraint tblSupplierAddress_pk_cid primary key (cid),
	constraint fk_contact_address foreign key (contactaddress)
		references tblAddress(cid),
	constraint fk_present_address foreign key (presentaddress)
		references tblAddress(cid)
	
)

create table tblpurchase(
cid serial not null,
empid integer references tbluser(cid),
productid integer references tblproduct(cid),
supplierid integer references tblVendorSupplier(cid),
monthId integer references tblfinancialmonth (cid),
companyId integer references tblcompany (cid),
 refference varchar(100),
warehouseid integer references tblwarehouse(cid),
orderdate date,
deliverydate date,
deliveryaddress int,
quantity int,
price double,
comments varchar(1000),
constraint tblPurchase_pk_cid primary key (cid)

)

create table tblproduct(
cid serial not null,
uom  integer references tbluom(cid),
productgroup integer references tblproductgroup(cid),
supplierid  integer references tblVendorSupplier(cid),
brandid  integer references tblbrand(cid),
product_code varhcar(50),
description varchar(200),
binlocation varchar(100),
avglandcost integer,
lastcost integer,
default_purchase_price integer,
default_sell_price integer,
weight varchar(50),
modelno varchar(50)
notes varchar(1000),
barcode varchar(50),
constraint tblproduct_pk_cid primary key (cid)
)

create table tblsalesorder(
cid serial not null,
monthId integer references tblfinancialmonth (cid),
userid integer references tbluser(cid),
enqid integer references tblenquiry(cid),
custid integer references tblcustomer(cid),
vendorid integer references tblVendorSupplier(cid),
productid integer references tblproduct(cid),
ordertypeid integer references tblordertype(cid),
ordercode character varying(100),
orderdescription character varying(100),
comments character varying(100),
weight character varying(100),
quantity integer,
orderdate date,
furnisheddate date,
deliverydate date,
deliverymethod integer references tbldeliverymethod(cid),
discountid integer references tbldiscount(cid),
taxid integer references tbltax(cid),
price integer,
constraint tblsalesorder_pk_cid primary key (cid)
)

create table tblenquiry(
cid serial not null,
enqcode character varying(100),
monthId integer references tblfinancialmonth (cid),
custid integer references tblcustomer(cid),
userid integer references tbluser(cid),
referal character varying(100),
enqdate date,
ordertypeid integer references tblordertype(cid),
apptdate date,
appttime character varying(100),
status boolean,
enqdetails character varying(1000),
productid integer references tblproduct(cid),
constraint tblenquiry_pk_cid primary key (cid)
)

create table tblpayment
(
cid serial not null,
userid integer references tbluser(cid),
monthId integer references tblfinancialmonth (cid),
orderid integer references tblsalesorder(cid),
custid integer references tblcustomer(cid),
productid integer references tblproduct(cid),
paymode character varying(100),
amtpaid decimal,
paymentdate date,
chqdate date,
chqdetail character varying(1000),
chqstatus character varying(1000),
creditdebitno character varying(1000),
paymentstatus character varying(1000),
comments character varying(1000),
constraint tblpayment_pk_cid primary key (cid)
)


