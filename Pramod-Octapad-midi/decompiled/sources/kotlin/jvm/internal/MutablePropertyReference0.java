package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty0;
/* loaded from: classes4.dex */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements KMutableProperty0 {
    public MutablePropertyReference0() {
    }

    public MutablePropertyReference0(Object receiver) {
        super(receiver);
    }

    public MutablePropertyReference0(Object receiver, Class owner, String name, String signature, int flags) {
        super(receiver, owner, name, signature, flags);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.mutableProperty0(this);
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public Object mo2400invoke() {
        return get();
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    /* renamed from: getGetter  reason: collision with other method in class */
    public KProperty0.Getter mo1921getGetter() {
        return ((KMutableProperty0) mo1918getReflected()).mo1921getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    /* renamed from: getSetter  reason: collision with other method in class */
    public KMutableProperty0.Setter mo1917getSetter() {
        return ((KMutableProperty0) mo1918getReflected()).mo1917getSetter();
    }

    @Override // kotlin.reflect.KProperty0
    public Object getDelegate() {
        return ((KMutableProperty0) mo1918getReflected()).getDelegate();
    }
}
