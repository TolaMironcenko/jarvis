public class Jarvis.Window : Gtk.ApplicationWindow {
	public Window (Application app) {
		Object (
			application: app
		);
	}

	construct {
		title = "vala test"; 
		window_position = Gtk.WindowPosition.CENTER;
		set_default_size (250, 250);

		var settings = new GLib.Settings ("com.github.TolaMironcenko.jarvis");
		
		move (settings.get_int ("pos-x"), settings.get_int ("post-y"));
		
		show_all ();
	}
}