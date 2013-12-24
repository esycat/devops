import java.io.ByteArrayOutputStream;

import org.gradle.api.logging.Logger;
import org.gradle.api.logging.LogLevel;

public class LogOutputStream extends ByteArrayOutputStream {

    private final Logger logger;
    private final LogLevel level;

    public LogOutputStream(Logger logger, LogLevel level) {
        this.logger = logger;
        this.level  = level;
    }

    public Logger getLogger() {
        return logger;
    }

    public LogLevel getLevel() {
        return level;
    }

    @Override
    public void flush() {
        logger.log(level, toString());
        reset();
    }

}
