import 'package:frontend/front_office/models/room.dart';
import 'package:frontend/front_office/models/room_booking.dart';
import 'package:frontend/front_office/models/create_room_booking_request.dart';

abstract class RoomBookingRepository {

  Future<List<Room>> getAvailability({required DateTime from, required DateTime to});

  Future<List<RoomBooking>> createNewBooking({required CreateRoomBookingRequest createRoomBookingRequest});

  Future<RoomBooking> getRoomBooking({required int id});
  Future<List<RoomBooking>> getRoomBookingByDate({required DateTime from, required DateTime to});
}