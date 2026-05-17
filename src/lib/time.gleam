import gleam/int
import gleam/string
import gleam/time/calendar
import gleam/time/timestamp

pub fn to_string(timestamp: timestamp.Timestamp) -> String {
  let #(date, time_of_day) =
    timestamp.to_calendar(timestamp, calendar.local_offset())

  let year = date.year |> int.to_string
  let month =
    date.month
    |> calendar.month_to_int
    |> int.to_string
    |> string.pad_start(2, "0")
  let day = date.day |> int.to_string |> string.pad_start(2, "0")

  let hours = time_of_day.hours |> int.to_string |> string.pad_start(2, "0")
  let minutes = time_of_day.minutes |> int.to_string |> string.pad_start(2, "0")

  "" <> year <> "-" <> month <> "-" <> day <> " " <> hours <> ":" <> minutes
}
