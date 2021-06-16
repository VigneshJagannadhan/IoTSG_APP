package com.example.iotbasedsmartgrid;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.net.Uri;
import android.widget.Button;
public class MainActivity extends AppCompatActivity {
    private Button button;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);




        button = (Button) findViewById(R.id.button2);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActibity3();
            }
        });
    }

    public void openActibity3() {
        Intent intent =new Intent(this, Activity3.class);
        startActivity(intent);

        button = (Button) findViewById(R.id.button5);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActibity4();
            }
        });
    }

    public void openActibity4() {
        Intent intent =new Intent(this, Activity4.class);
        startActivity(intent);

        button = (Button) findViewById(R.id.button3);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String url = "https://wss.kseb.in/selfservices/quickpay";

                Intent i = new Intent(Intent.ACTION_VIEW);
                i.setData(Uri.parse(url));
                startActivity(i);

                button = (Button) findViewById(R.id.button1);
                button.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        String url = "https://play.grafana.org/d/000000012/grafana-play-home?orgId=1";

                        Intent i = new Intent(Intent.ACTION_VIEW);
                        i.setData(Uri.parse(url));
                        startActivity(i);










                    }});
            }});}}





















