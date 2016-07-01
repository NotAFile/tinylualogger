logging = require("logging")
logging.set_default_loglevel(logging.loglevels.ERROR)
local logger = logging.logger.new(...)

secondtest = require("secondtest")

logger.debug("debug")
logger.info("info")
logger.warn("warn")
logger.error("warn")
logger.critical("critical")
