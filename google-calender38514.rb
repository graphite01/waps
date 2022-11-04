require "google/apis/calendar_v3"
require "googleauth"
require "googleauth/stores/file_token_store"
require "date"
require "fileutils"

class GoogleCalendar
  def initialize
    @calendar = Google::Apis::CalendarV3::CalendarService.new
    @calendar.client_options.application_name = ENV.fetch['GOOGLE_CALENDAR_APPLICATION_NAME']
    @calendar.authorization = credential
    @calendar_id = ENV.fetch['GOOGLE_CALENDAR_ID']
  end

  def authorize
     credential = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: File.open(ENV.fetch['GOOGLE_CALENDAR_SECRET_PATH']),
      scope: Google::Apis::CalendarV3::AUTH_CALENDAR)

    credential.fetch_access_token!

    credential
  end

  def build_event(summary:, description:, location:, start:, end:)
    Google::Apis::CalendarV3::Event.new(
        summary: summary,
        description: description,
        location: location,
        start: Google::Apis::CalendarV3::EventDateTime.new(date_time: start_time),
        end: Google::Apis::CalendarV3::EventDateTime.new(date_time: end_time)
    )
  end

  
  def create(summary:, description:, location:, start:, end:)
    event = build_event(
      summary: summary, #String
      description: description, #String
      location: location, #String
      start: start_time, # DateTime.now
      end: end_time # DateTime.now + 1.hour
    )

    response = @calendar.insert_event(
      @calendar_id,
      event
    )
  end

  def read(time_min:, time_max:)
    events = @calendar.list_events(@calendar_id,
                                   time_min: time_min, # Time.now
                                   time_max: time_max, #Time.now + 1.day
                                  )
    events.items.each do |event|
      Rails.logger.debug '----------------------------'
      Rails.logger.debug "-#{event.id} "
      Rails.logger.debug "-#{event.summary} "
      Rails.logger.debug "-#{event.location} "
      Rails.logger.debug "-#{event.start.date_time} "
      Rails.logger.debug "-#{event.end.date_time} "
    end
  end

  def update(event_id:)
    event = build_event(
      summary: 'updated event',
      description: 'updated event',
      location: 'Chiba',
      start: DateTime.now + 1.hour,
      end: DateTime.now + 2.hour
    )

    res = @calendar.update_event(
      @calendar_id,
      event_id,
      event
    )

    Rails.logger.debug '----------------------------'
    Rails.logger.debug "-#{res.id} "
    Rails.logger.debug "-#{res.summary} "
    Rails.logger.debug "-#{res.location} "
    Rails.logger.debug "-#{res.start.date_time} "
    Rails.logger.debug "-#{res.end.date_time} "
  end

  def delete(event_id:)
    @calendar.delete_event(
      @calendar_id,
      event_id
    )
  end
end