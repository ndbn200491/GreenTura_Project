package org.eclipse.paho.android.sample.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import org.eclipse.paho.android.sample.R;

/**
 * Created by VSKYLINE on 10/21/2016.
 */
public class channel2Fragment extends Fragment {
    public channel2Fragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.channel2_fragment, container, false);
        // Inflate the layout for this fragment
        TextView textView2 = (TextView)rootView.findViewById(R.id.txtChan2);
        // Inflate the layout for this fragment
        textView2.setText("Channel2 ok");
        return rootView;
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }



}
