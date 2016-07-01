local logging = {}

logging.loglevels = {
    ["DEBUG"] = 10,
    ["INFO"] = 20,
    ["WARN"] = 30,
    ["ERROR"] = 40,
    ["CRITICAL"] = 50
}

logging.default_loglevel = logging.loglevels.INFO

logging.set_default_loglevel = function(loglevel)
    logging.default_loglevel = loglevel
end

logging.logger = {}
logging.logger.new = function(fileargs)
    local this = {}

    this.loggername = select(1, fileargs) or "root"

    this.loglevel = logging.default_loglevel

    for loglevel_str, loglevel in pairs(logging.loglevels) do
        this[string.lower(loglevel_str)] = function(str)
            this.log(loglevel, loglevel_str, str)
        end
    end

    this.log = function(loglevel, loglevel_str, str)
        if loglevel >= this.loglevel then
            print(loglevel_str .. ":" .. this.loggername .. ": "  .. str)
        end
    end

    this.set_loglevel = function(loglevel)
        this.loglevel = loglevel
    end

    return this
end

return logging
