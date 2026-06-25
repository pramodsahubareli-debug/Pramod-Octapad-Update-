package androidx.startup;

import android.content.Context;
import java.util.List;
/* loaded from: classes.dex */
public interface Initializer<T> {
    /* renamed from: create */
    T mo305create(Context context);

    List<Class<? extends Initializer<?>>> dependencies();
}
