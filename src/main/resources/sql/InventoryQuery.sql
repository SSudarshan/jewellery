CREATE TABLE tbluser
(
  cid serial NOT NULL,
  uerName character varying(200),
  password character varying(200),
  email character varying(200),
  firstname character varying(200),
  lastname character varying(200),
  role integer,
  companyId integer,
  CONSTRAINT pk_tbluser PRIMARY KEY (cid ),
  CONSTRAINT tbluser_company_fkey FOREIGN KEY (companyId)
      REFERENCES tblcompany (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbluser_role_fkey FOREIGN KEY (role)
      REFERENCES tblrole (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE tblrole
(
  cid serial NOT NULL,
  description character varying(200),
  companyid integer,
  CONSTRAINT pk_tblrole PRIMARY KEY (cid ),
  CONSTRAINT tbluser_company_fkey FOREIGN KEY (companyid)
      REFERENCES tblcompany (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
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
  description character varying(255),
  CONSTRAINT tbldeliverymethod_pkey PRIMARY KEY (cid )
)
CREATE TABLE tblordertype
(
  cid serial not null,
  description character varying(255),
  CONSTRAINT tbltblordertype_pkey PRIMARY KEY (cid )
)

CREATE TABLE tblbrand
(
  cid serial not null,
  description character varying(255),
  companyid integer,
  CONSTRAINT tblbrand_pkey PRIMARY KEY (cid ),
   CONSTRAINT tblbrand_company_fkey FOREIGN KEY (companyid)
      REFERENCES tblcompany (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE tbldiscount
(
 cid serial not null,
 productgroup integer,
 product integer,
 scheme character varying(255), 
 discountpercent integer,
  CONSTRAINT tbldiscount_pkey PRIMARY KEY (cid ),
   CONSTRAINT tbldiscount_productgroup_fkey FOREIGN KEY (productgroup)
      REFERENCES tblproductgroup (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
       CONSTRAINT tbldiscount_product_fkey FOREIGN KEY (product)
      REFERENCES tblproduct (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
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
  description character varying(255),
  CONSTRAINT tblproductgroup_pkey PRIMARY KEY (cid )
)

CREATE TABLE tbluom
(
 cid serial not null,
  description character varying(255),
  CONSTRAINT tbluom_pkey PRIMARY KEY (cid )
)

CREATE TABLE tblwarehouse
(
  cid serial not null,
  description character varying(255),
  companyid integer,
  CONSTRAINT tblwarehouse_pkey PRIMARY KEY (cid  ),
  CONSTRAINT tblwarehouse_company_fkey FOREIGN KEY (companyid)
      REFERENCES tblcompany (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)



create table tblcustomertype(
	cid serial not null,
	description varchar,
	constraint tblcustomertype_pk_cid primary key (cid)
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
	gender varchar,
	age integer,
	designation varchar,
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
	extno character varying (200) NULL ,
	constraint pk_tblAddress primary key (cid)
)

CREATE TABLE tblcustomeraddress
(
  cid serial NOT NULL,
  customerid integer,
  contactaddress integer,
  presentaddress integer,
  permanentaddress integer,
  deliveryaddress integer,
  CONSTRAINT tblcustomeraddress_pk_cid PRIMARY KEY (cid ),
  CONSTRAINT fk_contact_address FOREIGN KEY (contactaddress)
      REFERENCES tbladdress (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_delivery_ddress FOREIGN KEY (deliveryaddress)
      REFERENCES tbladdress (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_permanent_address FOREIGN KEY (permanentaddress)
      REFERENCES tbladdress (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_present_address FOREIGN KEY (presentaddress)
      REFERENCES tbladdress (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
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
quantity int,
price numeric(18,4),
comments varchar(1000),
constraint tblPurchase_pk_cid primary key (cid)

)

create table tblproduct(
cid serial not null,
uom  integer references tbluom(cid),
productgroup integer references tblproductgroup(cid),
supplierid  integer references tblVendorSupplier(cid),
brandid  integer references tblbrand(cid),
product_code varchar(50),
description varchar(200),
binlocation varchar(100),
avglandcost integer,
lastcost integer,
default_purchase_price integer,
default_sell_price integer,
weight varchar(50),
modelno varchar(50),
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

create table tblmodule(
 cid serial primary key,
 description varchar,
 helptext varchar
)


insert into tblmodule(description) values('Purchase');
insert into tblmodule(description) values('Sales');
insert into tblmodule(description) values('Inventory');
insert into tblmodule(description) values('Settings');


create table tblpageurls(
   cid serial primary key,
   url varchar,
   description varchar,
   helptext varchar,
   module integer,
   constraint fk_module foreign key (module) references tblmodule(cid)
)

insert into tblpageurls(url,description,module) values('/inventory/addProductEnquiry.html','Product Enquiry',2);
insert into tblpageurls(url,description,module) values('/inventory/addCustomer.html','New Customer',2);
insert into tblpageurls(url,description,module) values('/inventory/viewCustomer.html','View Customer',2);
insert into tblpageurls(url,description,module) values('/inventory/addSalesOrder.html','New Sales Order',2);
insert into tblpageurls(url,description,module) values('/inventory/addPayment.html','Add Payment',2);
insert into tblpageurls(url,description,module) values('/inventory/addChequeClearance.html','Cheque Clearance',2);


create table tblaccessrights(
  cid serial primary key,
  role integer,
  pages integer,
  constraint fk_role foreign key (role) references tblrole(cid),
  constraint fk_pages foreign key (pages) references tblpageurls(cid)
)

create table tblSupplierVendor(
 cid serial primary key,
 companyId integer,
 supplierCode varchar,
 suplierName varchar,
 supplierType varchar,
 specialization varchar,
 regNo varchar,
 cstVatNumber varchar,
 notes varchar,
 UNIQUE (companyId,supplierCode),
 CONSTRAINT tblSupplierVendor_companyId_fkey FOREIGN KEY (companyId)
      REFERENCES tblcompany (cid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
 
)

create table tblproduct(
	cid serial primary key,
	productgroup integer,
	code varchar,
	description varchar,
	barcode varchar,
	modelno varchar,
	brand integer,
	uom integer,
	weight numeric(18,4),
	avglandcost numeric(18,4),
	lastcost numeric(18,4),
	purchaseprice numeric(18,4),
	sellprice numeric(18,4),
	filename varchar,
	attachment bytea,
	notes varchar,
	CONSTRAINT tblproduct_uom_fk FOREIGN KEY (uom)
	REFERENCES tbluom (cid) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT tblproduct_productgroup_fk FOREIGN KEY (productgroup)
	REFERENCES tblproductgroup (cid) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT tblproduct_brand_fk FOREIGN KEY (brand)
	REFERENCES tblbrand (cid) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION

)
