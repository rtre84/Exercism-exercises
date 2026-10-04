public class LogLevels {
    
    public static String message(String logLine) {
        String[] errMsg = logLine.split(": ");
        String sanitizedErrMsg = errMsg[1].strip();
        
        return sanitizedErrMsg;
    }

    public static String logLevel(String logLine) {
        String[] errMsg = logLine.split(": ");
        String level = errMsg[0].replaceAll("[\\[\\]]", "").toLowerCase();

        return level;
    }

    public static String reformat(String logLine) {
        String[] errMsg = logLine.split(": ");
        String errLogMsg = message(logLine);
        String reformattedLogLevel = errMsg[0].replace("[", "(")
                                              .replace("]", ")")
                                              .toLowerCase();

        return String.format("%s %s", errLogMsg, reformattedLogLevel);
    }
}
