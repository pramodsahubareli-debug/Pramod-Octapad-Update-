package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;
/* loaded from: classes4.dex */
public abstract class PropertyReference1 extends PropertyReference implements KProperty1 {
    public PropertyReference1() {
    }

    public PropertyReference1(Object receiver) {
        super(receiver);
    }

    public PropertyReference1(Object receiver, Class owner, String name, String signature, int flags) {
        super(receiver, owner, name, signature, flags);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.property1(this);
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public Object mo2027invoke(Object receiver) {
        return get(receiver);
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    /* renamed from: getGetter  reason: collision with other method in class */
    public KProperty1.Getter mo1921getGetter() {
        return ((KProperty1) mo1918getReflected()).mo1921getGetter();
    }

    @Override // kotlin.reflect.KProperty1
    public Object getDelegate(Object receiver) {
        return ((KProperty1) mo1918getReflected()).getDelegate(receiver);
    }
}
