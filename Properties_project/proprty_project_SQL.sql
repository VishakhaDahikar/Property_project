create database property;
use property;
create table property_details as(
select * from properties
union all
select * from property_details_3
union all 
select * from property_details_5
union all
select * from property_details_6
union all
select * from property_details_bgnl_3
union all
select * from property_details_bngl_2
union all
select * from property_details_bngl_4
union all
select * from property_details_bngl_5
union all
select * from property_details_bngl_6
union all
select * from property_details_bngl_7
union all
select * from property_details_bngl_9
union all
select * from property_details_bnglr 
union all
select * from property_details_mumbai
union all
select * from property_details_mumbai_2
union all
select * from property_details_mumbai_4
union all
select * from property_details_page_2);

select * from property_details;
