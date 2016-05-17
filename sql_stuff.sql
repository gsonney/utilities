
# Delete reservation

SET @res_id = 9;
delete from guest where `RESERVATION_ID`= @res_id;
delete from profile where `RESERVATION_ID`=@res_id;
delete from `reservation_document` where `RESERVATION_ID`=@res_id;
delete from room_rate where `ROOM_STAY_ID` in (select id from `room_stay` where `RESERVATION_ID`=@res_id);
delete from `room_stay` where `RESERVATION_ID`= @res_id;
delete from reservation where id=@res_id;

	