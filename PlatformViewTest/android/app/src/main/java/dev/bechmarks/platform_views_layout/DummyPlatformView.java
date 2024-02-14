// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.benchmarks.platform_views_layout;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import io.flutter.plugin.platform.PlatformView;

import java.util.Map;

public class DummyPlatformView implements PlatformView {
    private final TextView textView;

    @SuppressWarnings("unchecked")
    DummyPlatformView(final Context context, int id, Map<String, Object> creationParams) {
        textView = new TextView(context);
        textView.setTextSize(48);
        textView.setBackgroundColor(Color.rgb(255, 255, 255));

        if (creationParams != null && creationParams.size() > 0) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, Object> entry : creationParams.entrySet()) {
                sb.append(entry.getKey() + ": " + entry.getValue().toString()).append("\n");
            }
            textView.setText(sb.toString());
        } else {
            textView.setText("DummyPlatformView");
        }
    }

    @Override
    public View getView() {
        return textView;
    }

    @Override
    public void dispose() {}
}
