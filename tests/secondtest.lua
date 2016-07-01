logging = require("logging")
local logger = logging.logger.new(...)
logger.set_loglevel(logging.loglevels.DEBUG)

logger.debug("debug")
logger.info("info")
logger.warn("warn")
logger.error("warn")
logger.critical("critical")
