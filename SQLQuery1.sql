DECLARE @json NVARCHAR(max);
SET @json =  N'{"id":14,"created_username":"adarsh ittigi adarsh.ittigi@gmail.com, 1","created_ago":"3 weeks, 4 days","completed_by":1,"result":[{"original_width":259,"original_height":194,"image_rotation":0,"value":{"x":45.559845559845556,"y":26.28865979381444,"width":25.482625482625483,"height":35.56701030927835,"rotation":0,"rectanglelabels":["moon"]},"id":"UPJJKvWusx","from_name":"label","to_name":"image","type":"rectanglelabels"}],"was_cancelled":false,"ground_truth":false,"created_at":"2021-08-25T12:51:22.913818Z","updated_at":"2021-08-25T12:51:22.913818Z","lead_time":7.956,"task":6}';
					
 select * from OPENJSON(@json,'$.result')
 with(
 label varchar(50) '$.value.rectanglelabels[0]'
 );



 



 
 
