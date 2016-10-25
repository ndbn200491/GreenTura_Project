package com.carlfg.wl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.LinearLayout;

public class MainActivity extends Activity {
	static LinearLayout parent;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		parent = (LinearLayout) findViewById(R.id.parentLayout);
	}

	// Start the  service
	public void startNewService(View view) {
		
		startService(new Intent(this, MyService.class));
	}

	// Stop the  service
	public void stopNewService(View view) {
		
		stopService(new Intent(this, MyService.class));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
