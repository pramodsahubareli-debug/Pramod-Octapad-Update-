package kotlinx.coroutines.flow;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
/* compiled from: SafeCollector.common.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@¢\u0006\u0002\u0010\u0006¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes4.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements Flow<T> {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_onCompletion$inlined;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 1, 2}, l = {110, 117, 124}, m = "collect", n = {"this", "$this$onCompletion_u24lambda_u242", "e", "sc"}, s = {"L$0", "L$1", "L$0", "L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.$this_onCompletion$inlined = flow;
        this.$action$inlined = function3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r12
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r1 = r0.label
            int r1 = r1 - r2
            r0.label = r1
            goto L19
        L14:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1
            r0.<init>(r12)
        L19:
            java.lang.Object r1 = r0.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r0.label
            r4 = 0
            switch(r3) {
                case 0: goto L4f;
                case 1: goto L42;
                case 2: goto L38;
                case 3: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L2d:
            r11 = 0
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.internal.SafeCollector r2 = (kotlinx.coroutines.flow.internal.SafeCollector) r2
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L36
            goto L8f
        L36:
            r3 = move-exception
            goto L9b
        L38:
            r11 = 0
            java.lang.Object r2 = r0.L$0
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            kotlin.ResultKt.throwOnFailure(r1)
            goto Lb8
        L42:
            r11 = 0
            java.lang.Object r3 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r5 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) r5
            kotlin.ResultKt.throwOnFailure(r1)     // Catch: java.lang.Throwable -> L9f
            goto L69
        L4f:
            kotlin.ResultKt.throwOnFailure(r1)
            r5 = r10
            r3 = r0
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r3 = r11
            r11 = 0
            kotlinx.coroutines.flow.Flow r6 = r5.$this_onCompletion$inlined     // Catch: java.lang.Throwable -> L9f
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L9f
            r0.L$1 = r3     // Catch: java.lang.Throwable -> L9f
            r7 = 1
            r0.label = r7     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r6 = r6.collect(r3, r0)     // Catch: java.lang.Throwable -> L9f
            if (r6 != r2) goto L69
            return r2
        L69:
            kotlinx.coroutines.flow.internal.SafeCollector r6 = new kotlinx.coroutines.flow.internal.SafeCollector
            r7 = 0
            kotlin.coroutines.CoroutineContext r8 = r0.getContext()
            r6.<init>(r3, r8)
            r3 = r6
            kotlin.jvm.functions.Function3 r6 = r5.$action$inlined     // Catch: java.lang.Throwable -> L97
            r0.L$0 = r3     // Catch: java.lang.Throwable -> L97
            r0.L$1 = r4     // Catch: java.lang.Throwable -> L97
            r7 = 3
            r0.label = r7     // Catch: java.lang.Throwable -> L97
            r7 = 6
            kotlin.jvm.internal.InlineMarker.mark(r7)     // Catch: java.lang.Throwable -> L97
            java.lang.Object r4 = r6.mo2351invoke(r3, r4, r0)     // Catch: java.lang.Throwable -> L97
            r6 = 7
            kotlin.jvm.internal.InlineMarker.mark(r6)     // Catch: java.lang.Throwable -> L97
            if (r4 != r2) goto L8e
            return r2
        L8e:
            r2 = r3
        L8f:
            r2.releaseIntercepted()
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L97:
            r2 = move-exception
            r9 = r3
            r3 = r2
            r2 = r9
        L9b:
            r2.releaseIntercepted()
            throw r3
        L9f:
            r3 = move-exception
            kotlinx.coroutines.flow.ThrowingCollector r6 = new kotlinx.coroutines.flow.ThrowingCollector
            r6.<init>(r3)
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.jvm.functions.Function3 r7 = r5.$action$inlined
            r0.L$0 = r3
            r0.L$1 = r4
            r4 = 2
            r0.label = r4
            java.lang.Object r4 = kotlinx.coroutines.flow.FlowKt__EmittersKt.access$invokeSafely$FlowKt__EmittersKt(r6, r7, r3, r0)
            if (r4 != r2) goto Lb7
            return r2
        Lb7:
            r2 = r3
        Lb8:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
