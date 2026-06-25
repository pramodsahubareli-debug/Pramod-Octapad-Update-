package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;
/* loaded from: classes4.dex */
public abstract class PropertyReference0 extends PropertyReference implements KProperty0 {
    public PropertyReference0() {
    }

    public PropertyReference0(Object receiver) {
        super(receiver);
    }

    public PropertyReference0(Object receiver, Class owner, String name, String signature, int flags) {
        super(receiver, owner, name, signature, flags);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.property0(this);
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public Object mo2400invoke() {
        return get();
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    /* renamed from: getGetter  reason: collision with other method in class */
    public KProperty0.Getter mo1921getGetter() {
        return ((KProperty0) mo1918getReflected()).mo1921getGetter();
    }

    @Override // kotlin.reflect.KProperty0
    public Object getDelegate() {
        return ((KProperty0) mo1918getReflected()).getDelegate();
    }
}
