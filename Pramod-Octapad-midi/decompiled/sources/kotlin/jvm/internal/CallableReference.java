package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
/* loaded from: classes4.dex */
public abstract class CallableReference implements KCallable, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.INSTANCE;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient KCallable reflected;
    private final String signature;

    protected abstract KCallable computeReflected();

    /* loaded from: classes4.dex */
    private static class NoReceiver implements Serializable {
        private static final NoReceiver INSTANCE = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() throws ObjectStreamException {
            return INSTANCE;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CallableReference(Object receiver) {
        this(receiver, null, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CallableReference(Object receiver, Class owner, String name, String signature, boolean isTopLevel) {
        this.receiver = receiver;
        this.owner = owner;
        this.name = name;
        this.signature = signature;
        this.isTopLevel = isTopLevel;
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public KCallable compute() {
        KCallable result = this.reflected;
        if (result == null) {
            KCallable result2 = computeReflected();
            this.reflected = result2;
            return result2;
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: getReflected */
    public KCallable mo1918getReflected() {
        KCallable result = compute();
        if (result == this) {
            throw new KotlinReflectionNotSupportedError();
        }
        return result;
    }

    public KDeclarationContainer getOwner() {
        if (this.owner == null) {
            return null;
        }
        return this.isTopLevel ? Reflection.getOrCreateKotlinPackage(this.owner) : Reflection.getOrCreateKotlinClass(this.owner);
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.name;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        return mo1918getReflected().getParameters();
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        return mo1918getReflected().getReturnType();
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return mo1918getReflected().getAnnotations();
    }

    @Override // kotlin.reflect.KCallable
    public List<KTypeParameter> getTypeParameters() {
        return mo1918getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... args) {
        return mo1918getReflected().call(args);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map args) {
        return mo1918getReflected().callBy(args);
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        return mo1918getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return mo1918getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return mo1918getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return mo1918getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return mo1918getReflected().isSuspend();
    }
}
