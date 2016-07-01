# tinylualogger
Simple single file Lua logging module. Could have been a gist really, but that would have been harder for me to find again.

##Usage
Just `require("logging")` in all files that require logging.

To change the default logging level from `INFO` to something else, call `logging.set_default_loglevel(loglevel)` directly after `require("logging")`, where `loglevel` is one of `logging.loglevels`.

To log, you must first create a logger:

    local logger = logging.logger.new(loggername)
    
Where `loggername` is the name of the logger. To use the name of the current module as a name (recommended), pass `...`. If not given, the logger name defaults to `root`

After that, you can use the logger as expected:

    logger.debug("debug message") -- DEBUG:root: debug message
    logger.info("info message") -- INFO:root: info message
    logger.warn("warning message") -- WARN:root: warning message
    logger.error("error message") -- ERROR:root: error message
    logger.critical("critical error message") -- CRITICAL:root: critical error message
    
To change the logging level for this file only, use `logger.set_loglevel(loglevel)` in similar fashion to `logging.set_default_loglevel(loglevel)`
    
see `tests/` for an example project (it's a bit preposterous of me to call them tests)
