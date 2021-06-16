package com.example.iotbasedsmartgrid;


import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

public class Activity5 extends AppCompatActivity {

    Button buttonSub, buttonMul, buttonEqual;
    EditText crunchifyEditText;

    float mValueOne, mValueTwo;

    boolean mSubtract, crunchifyMultiplication;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        buttonSub = (Button) findViewById(R.id.buttonsub);
        buttonMul = (Button) findViewById(R.id.buttonmul);
        buttonEqual = (Button) findViewById(R.id.buttoneql);
        crunchifyEditText = (EditText) findViewById(R.id.edt1);

        buttonSub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueOne = Float.parseFloat(crunchifyEditText.getText() + "");
                mSubtract = true;
                crunchifyEditText.setText(null);
            }
        });

        buttonMul.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueOne = Float.parseFloat(crunchifyEditText.getText() + "");
                crunchifyMultiplication = true;
                crunchifyEditText.setText(null);
            }
        });

        buttonEqual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mValueTwo = Float.parseFloat(crunchifyEditText.getText() + "");

                if (mSubtract == true) {
                    crunchifyEditText.setText(mValueOne - mValueTwo + "");
                    mSubtract = false;
                }

                if (crunchifyMultiplication == true) {
                    crunchifyEditText.setText(mValueOne * mValueTwo + "");
                    crunchifyMultiplication = false;
                }
            }
        });}

}