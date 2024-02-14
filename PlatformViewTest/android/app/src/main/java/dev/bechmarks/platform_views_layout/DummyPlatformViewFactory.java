// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.benchmarks.platform_views_layout;

import android.content.Context;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.nio.ByteBuffer;
import java.util.Map;

public final class DummyPlatformViewFactory extends PlatformViewFactory {
    DummyPlatformViewFactory() {
        super(StandardMessageCodec.INSTANCE);
    }

    @SuppressWarnings("unchecked")
    @Override
    public PlatformView create(Context context, int id, Object args) {
        return new DummyPlatformView(context, id, (Map<String, Object>) args);
    }
}
