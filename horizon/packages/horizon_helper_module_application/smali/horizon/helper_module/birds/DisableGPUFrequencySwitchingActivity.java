package horizon.helper_module.birds;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class DisableGPUFrequencySwitchingActivity extends Activity {
    private static final String TAG = "DisableGPUFrequencySwitching";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_disable_gpu_frequency_switching);
        disableGPUFrequencySwitching();
    }

    private void disableGPUFrequencySwitching() {
        String[] files = {"/sys/devices/platform/11500000.mali/dvfs", "/sys/devices/platform/11500000.mali/dvfs_min_lock"};
        for (String file : files) {
            runChmodCommand(file);
        }
    }

    private void runChmodCommand(String filePath) {
        try {
            // Create the command
            String[] command = {"su", "-c", "chmod 000 " + filePath};

            // Execute the command
            Process process = Runtime.getRuntime().exec(command);
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                Log.d(TAG, line);
            }

            // Wait for the command to complete
            int exitCode = process.waitFor();
            if (exitCode == 0) {
                Log.d(TAG, "Successfully changed permissions for " + filePath);
            } else {
                Log.e(TAG, "Failed to change permissions for " + filePath + ". Exit code: " + exitCode);
            }

        } catch (IOException | InterruptedException e) {
            Log.e(TAG, "Error executing chmod command for " + filePath, e);
        }
    }
}
