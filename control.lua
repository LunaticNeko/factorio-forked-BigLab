local updateDiscoScience = function()
    if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setLabScale"] then
        remote.call("DiscoScience", "setLabScale", "big-lab", 6)
    end
end

script.on_configuration_changed(
    function ()
        updateDiscoScience()
    end
)

script.on_init(
    function ()
        updateDiscoScience()
    end
)