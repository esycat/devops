import java.io.ByteArrayOutputStream;

import org.gradle.api.logging.Logger;
import org.gradle.api.logging.LogLevel;

/**
 * A simplistic OutputStream based on ByteArrayOutputStream that helps
 * to redirect output of Gradle's Exec task directly to Gradle's Logger
 * with the given log level.
 *
 * @author Eugene Janusov <esycat@gmail.com>
 * @link https://github.com/esycat/devops
 * @license http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 *
 * @example:
 * task date (type: Exec) {
 *     executable 'date'
 *     standardOutput = new LogOutputStream(logger, LogLevel.INFO)
 *     errorOutput = new LogOutputStream(logger, LogLevel.WARN)
 * }
 */
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
