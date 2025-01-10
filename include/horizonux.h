#ifndef HORIZONUX_H
#define HORIZONUX_H

#include <iostream>
#include <fstream>
#include <string>
#include <cstdio>
#include <array>
#include <sstream>
#include <ctime>
#include <algorithm>

class HorizonUX {
private:
    std::string command;
    explicit HorizonUX(const std::string& commandInput) : command(commandInput) {}

public:
    static std::pair<std::string, int> ExecuteCommandsInTheHorizonUXSystemConsole(const std::string& command) {
        FILE* pipe = popen(command.c_str(), "r");
        if (!pipe) {
            std::cerr << "Error opening pipe for command: " << command << std::endl;
            return {"", -1};
        }
        std::array<char, 128> buffer;
        std::string result;
        while (fgets(buffer.data(), buffer.size(), pipe) != nullptr) {
            result += buffer.data();
        }
        int exitCode = pclose(pipe);
        return {result, exitCode};
    }

    bool DoesThisFileEvenExist(const std::string& fileName) const {
        std::ifstream file(fileName);
        return file.is_open();
    }

    bool iHaveIdentityCrisisManWTF() const {
        return DoesThisFileEvenExist("/system/bin/resetprop");
    }

    bool setSystemProperty(const std::string& propertyVariableName, const std::string& propertyVariableValue) {
        std::ostringstream baseArgumentStream;
        if (iHaveIdentityCrisisManWTF()) {
            baseArgumentStream << "resetprop " << propertyVariableName << " " << propertyVariableValue;
        }
        else {
            baseArgumentStream << "setprop " << propertyVariableName << " " << propertyVariableValue;
        }
        auto [output, exitCode] = ExecuteCommandsInTheHorizonUXSystemConsole(baseArgumentStream.str());
        return exitCode == 0;
    }
    std::string getSystemProperty(const std::string& propertyVariableName) {
        std::ostringstream baseArgumentStream;
        baseArgumentStream << "getprop " << propertyVariableName;
        auto [output, exitCode] = ExecuteCommandsInTheHorizonUXSystemConsole(baseArgumentStream.str());
        return output;
    }
    std::pair<std::string, int> getSystemSettingsValues(const std::string& SystemTable, const std::string& propertyVariableName) {
        std::ostringstream baseArgumentStream;
        if (SystemTable == "system" || SystemTable == "global" || SystemTable == "secure") {
            baseArgumentStream << "settings get " << SystemTable << " " << propertyVariableName;
        }
        auto [output, exitCode] = ExecuteCommandsInTheHorizonUXSystemConsole(baseArgumentStream.str());
        return {output, exitCode};
    }
    bool setSystemSettingsProperty(const std::string& SystemTable, const std::string& propertyVariableName, const std::string& propertyVariableValue) {
        if (SystemTable != "system" && SystemTable != "global" && SystemTable != "secure") {
            std::cerr << "Invalid SystemTable: " << SystemTable << std::endl;
            return false;
        }
        std::ostringstream baseArgumentStream;
        baseArgumentStream << "settings put " << SystemTable << " " << propertyVariableName << " " << propertyVariableValue;
        auto [output, exitCode] = ExecuteCommandsInTheHorizonUXSystemConsole(baseArgumentStream.str());
        return exitCode == 0;
    }
    void ThrowLogsToATextFile(const std::string& service, const std::string& message, const std::string& the_logfile) {
        std::string logService = service;
        std::transform(logService.begin(), logService.end(), logService.begin(), ::toupper);

        if (message.empty()) {
            std::cerr << " - missing arguments, can't process anything..." << std::endl;
        }
        else {
            std::time_t currentTime = std::time(nullptr);
            char dateTimeStr[100], timeStr[100];
            std::strftime(dateTimeStr, sizeof(dateTimeStr), "%d-%m-%Y", std::localtime(&currentTime));
            std::strftime(timeStr, sizeof(timeStr), "%H:%M%p", std::localtime(&currentTime));

            std::ofstream logFile(the_logfile, std::ios_base::app);
            if (logFile.is_open()) {
                logFile << "/ [" << timeStr << "]-[" << dateTimeStr << "] / " << logService << " / " << message << " /" << std::endl;
            }
            else {
                std::cerr << "Unable to open log file: " << the_logfile << std::endl;
            }
        }
    }
    void HorizonUXLoggerService(const std::string& service, const std::string& message, const std::string& the_logfile) {
        if (DoesThisFileEvenExist("/data/horizonux/logs/horizon_ishiimi_logfile.log")) {
            ThrowLogsToATextFile(service, message, "/data/horizonux/logs/horizon_ishiimi_logfile.log");
        }
        else {
            std::cerr << "Can't find logfile, skipping logging..." << std::endl;
        }
    }
    static HorizonUX parseTheArguments(const std::ostringstream& argumentStream) {
        return HorizonUX(argumentStream.str());
    }
};

#endif
