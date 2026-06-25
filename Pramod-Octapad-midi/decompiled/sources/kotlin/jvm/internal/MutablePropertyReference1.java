package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty1;
/* loaded from: classes4.dex */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements KMutableProperty1 {
    public MutablePropertyReference1() {
    }

    public MutablePropertyReference1(Object receiver) {
        super(receiver);
    }

    public MutablePropertyReference1(Object receiver, Class owner, String name, String signature, int flags) {
        super(receiver, owner, name, signature, flags);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        return Reflection.mutableProperty1(this);
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public Object mo2027invoke(Object receiver) {
        return get(receiver);
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    /* renamed from: getGetter  reason: collision with other method in class */
    public KProperty1.Getter mo1921getGetter() {
        return ((KMutableProperty1) mo1918getReflected()).mo1921getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    /* renamed from: getSetter  reason: collision with other method in class */
    public KMutableProperty1.Setter mo1917getSetter() {
        return ((KMutableProperty1) mo1918getReflected()).mo1917getSetter();
    }

    @Override // kotlin.reflect.KProperty1
    public Object getDelegate(Object receiver) {
        return ((KMutableProperty1) mo1918getReflected()).getDelegate(receiver);
    }
}
