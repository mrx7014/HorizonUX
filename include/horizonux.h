#ifndef HORIZONUX_H 
#define HORIZONUX_H

#include <iostream>
#include <fstream>
#include <string>
#include <cstdio>
#include <array>
#include <utility>
#include <sstream>
#include <algorithm>
#include <ctime>

using namespace std;

class HorizonUX {
    private:
        std::string command;
        HorizonUX(std::string commandInput) : command(commandInput) {}

    public:
        // Executes the command in the system console and captures output and exit code
        static std::pair<std::string, int> ExecuteCommandsInTheHorizonUXSystemConsole(const std::string& command) {
            // Open the process using popen to capture its output
            FILE* pipe = popen(command.c_str(), "r");

            // Check for errors
            if (!pipe) {
                cerr << "Error opening pipe!" << endl;
                return {"", -1};  // Return error code -1 if pipe could not be opened
            }

            // Read the output line by line
            array<char, 128> buffer;
            string result;
            while (fgets(buffer.data(), buffer.size(), pipe) != nullptr) {
                result += buffer.data();
            }

            // Get the exit status of the command using pclose()
            int exitCode = pclose(pipe);
            return {result, exitCode};
        }

        // Check if a file exists
        bool DoesThisFileEvenExist(const std::string& fileName) {
            std::ifstream file(fileName);
            return file.is_open() == 0;
        }

        // yayyyyyy - signed long long int;
        bool iHaveIdentityCrisisManWTF() {
            return DoesThisFileEvenExist("/system/bin/resetprop");
        }

        // sets the given property with a value frfrfr.
        bool setSystemProperty(const std::string& propertyVariableName, const std::string& propertyVariableValue) {
            std::ostringstream baseArgumentStream;
            if(iHaveIdentityCrisisManWTF()) {
                baseArgumentStream << "resetprop " << propertyVariableName << " " << propertyVariableValue;
            }
            else {
                baseArgumentStream << "setprop " << propertyVariableName << " " << propertyVariableValue;
            }
            std::string baseArgument = baseArgumentStream.str();
            HorizonUX console = HorizonUX::parseTheArguments(baseArgumentStream);
            auto [output, exitCode] = HorizonUX::ExecuteCommandsInTheHorizonUXSystemConsole(console.command);
            return exitCode == 0;
        }

        // fetches the given property.
        std::string getSystemProperty(const std::string& propertyVariableName) {
            std::ostringstream baseArgumentStream;
            baseArgumentStream << "getprop " << propertyVariableName;
            HorizonUX console = HorizonUX::parseTheArguments(baseArgumentStream);
            auto [output, exitCode] = HorizonUX::ExecuteCommandsInTheHorizonUXSystemConsole(console.command);
            return output;
        }

    void ThrowLogsToATextFile(const std::string& service, const std::string& message, const std::string& the_logfile) {
        std::string logService = service;
        // Convert service to uppercase (equivalent to string_case -u)
        std::transform(logService.begin(), logService.end(), logService.begin(), ::toupper);
        // Check if the message is empty
        if (message.empty()) {
            std::cout << " - missing arguments, can't process anything..." << std::endl;
        } 
        else {
            // Get current date and time
            std::time_t currentTime = std::time(nullptr);
            char dateTimeStr[100];
            std::strftime(dateTimeStr, sizeof(dateTimeStr), "%d-%m-%Y", std::localtime(&currentTime));
            char timeStr[100];
            std::strftime(timeStr, sizeof(timeStr), "%H:%M%p", std::localtime(&currentTime));

            // Open the log file in append mode
            std::ofstream logFile(the_logfile, std::ios_base::app);

            // Check if the file was opened successfully
            if (logFile.is_open()) {
                logFile << "/ [" << timeStr << "]-[" << dateTimeStr << "] / " << logService << " / " << message << " /" << std::endl;
                logFile.close();
            }
            else {
                std::cerr << "Unable to open log file: " << the_logfile << std::endl;
            }
        }
    }

    void HorizonUXLoggerService(const std::string& service, const std::string& message, const std::string& the_logfile) {
        if(DoesThisFileEvenExist("/data/horizonux/logs/horizon_ishiimi_logfile.log")) {
            ThrowLogsToATextFile(service, message, "/data/horizonux/logs/horizon_ishiimi_logfile.log");
        }
        else {
            std::cerr << "Can't find logfile, skipping logging...";
        }
    }

};

#endif