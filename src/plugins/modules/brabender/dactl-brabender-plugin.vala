/*
 * This file is a modified version taken from Rygel.
 */

public void module_init (Dactl.PluginLoader loader) {
    try {
        // Instantiate the plugin object
        var plugin = new Dactl.Brabender.Plugin ();
        plugin.active = true;

        loader.add_plugin (plugin);
    } catch (Error error) {
        warning ("Failed to load %s: %s",
                 Dactl.Brabender.Plugin.NAME,
                 error.message);
    }
}

public class Dactl.Brabender.Plugin : Dactl.Plugin {

    public const string NAME = "brabender";

    private bool _has_factory = false;
    public override bool has_factory { get { return _has_factory; } }

    /**
     * Instantiate the plugin.
     */
    public Plugin () {
        // Call the base constructor,
        base (NAME, null, null, Dactl.PluginCapabilities.CLD_OBJECT);
        //factory = new Dactl.Brabender.Factory ();
    }
}
