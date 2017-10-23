import {
  GoogleAnalyticsTracker,
} from 'react-native-google-analytics-bridge';

let google_analytics_id = '';

let tracker = new GoogleAnalyticsTracker(google_analytics_id);

let track = screen => tracker.trackScreenView(screen);

export default track;