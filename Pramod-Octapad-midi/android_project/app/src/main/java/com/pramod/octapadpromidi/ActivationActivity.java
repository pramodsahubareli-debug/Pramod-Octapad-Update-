package com.pramod.octapadpromidi;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class ActivationActivity extends AppCompatActivity {

    private static final String PREFS_NAME = "OctapadPrefs";
    private static final String PREF_KEY_ACTIVATED = "is_activated";

    private EditText editActivationKey;
    private Button btnActivate;
    private ProgressBar progressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        if (prefs.getBoolean(PREF_KEY_ACTIVATED, false)) {
            startMainActivity();
            return;
        }

        setContentView(R.layout.activity_activation);

        editActivationKey = findViewById(R.id.editActivationKey);
        btnActivate = findViewById(R.id.btnActivate);
        progressBar = findViewById(R.id.progressBar);
        progressBar.setVisibility(View.GONE);

        btnActivate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String activationKey = editActivationKey.getText().toString().trim();
                if (activationKey.isEmpty()) {
                    Toast.makeText(ActivationActivity.this, "Please enter activation key", Toast.LENGTH_SHORT).show();
                    return;
                }
                validateActivationKey(activationKey);
            }
        });
    }

    private void validateActivationKey(String key) {
        progressBar.setVisibility(View.VISIBLE);
        DatabaseReference reference = FirebaseDatabase.getInstance()
                .getReference("activation_keys")
                .child(key);

        reference.addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                progressBar.setVisibility(View.GONE);
                if (snapshot.exists()) {
                    SharedPreferences.Editor editor = getSharedPreferences(PREFS_NAME, MODE_PRIVATE).edit();
                    editor.putBoolean(PREF_KEY_ACTIVATED, true);
                    editor.apply();
                    startMainActivity();
                } else {
                    Toast.makeText(ActivationActivity.this, "Invalid Key", Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {
                progressBar.setVisibility(View.GONE);
                Toast.makeText(ActivationActivity.this, "Network error: " + error.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void startMainActivity() {
        Intent intent = new Intent(ActivationActivity.this, MainActivity.class);
        startActivity(intent);
        finish();
    }
}
