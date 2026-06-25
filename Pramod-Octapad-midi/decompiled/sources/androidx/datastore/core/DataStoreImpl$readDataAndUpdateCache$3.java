package androidx.datastore.core;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardViewHelper;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", ""}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", i = {}, l = {298, MaterialCardViewHelper.DEFAULT_FADE_ANIM_DURATION}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataAndUpdateCache$3 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl<T> dataStoreImpl, Continuation<? super DataStoreImpl$readDataAndUpdateCache$3> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public final Object mo2027invoke(Continuation<? super Pair<? extends State<T>, Boolean>> continuation) {
        return ((DataStoreImpl$readDataAndUpdateCache$3) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        ReadException $result3;
        DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$3;
        DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$32;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$33 = this.label;
        try {
        } catch (Throwable th) {
            ex = th;
        }
        switch (dataStoreImpl$readDataAndUpdateCache$33) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                Object readDataOrHandleCorruption = this.this$0.readDataOrHandleCorruption(true, this);
                if (readDataOrHandleCorruption == coroutine_suspended) {
                    return coroutine_suspended;
                }
                dataStoreImpl$readDataAndUpdateCache$33 = $result;
                $result = readDataOrHandleCorruption;
                dataStoreImpl$readDataAndUpdateCache$32 = this;
                try {
                    $result3 = (State) $result;
                } catch (Throwable th2) {
                    DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$34 = dataStoreImpl$readDataAndUpdateCache$32;
                    ex = th2;
                    $result = dataStoreImpl$readDataAndUpdateCache$33;
                    dataStoreImpl$readDataAndUpdateCache$33 = dataStoreImpl$readDataAndUpdateCache$34;
                    dataStoreImpl$readDataAndUpdateCache$33.L$0 = ex;
                    dataStoreImpl$readDataAndUpdateCache$33.label = 2;
                    Object version = dataStoreImpl$readDataAndUpdateCache$33.this$0.getCoordinator().getVersion(dataStoreImpl$readDataAndUpdateCache$33);
                    if (version == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result2 = $result;
                    $result = version;
                    dataStoreImpl$readDataAndUpdateCache$3 = dataStoreImpl$readDataAndUpdateCache$33;
                    $result3 = new ReadException(ex, ((Number) $result).intValue());
                    return TuplesKt.to($result3, Boxing.boxBoolean(true));
                }
                return TuplesKt.to($result3, Boxing.boxBoolean(true));
            case 1:
                ResultKt.throwOnFailure($result);
                dataStoreImpl$readDataAndUpdateCache$32 = this;
                dataStoreImpl$readDataAndUpdateCache$33 = $result;
                $result3 = (State) $result;
                return TuplesKt.to($result3, Boxing.boxBoolean(true));
            case 2:
                ResultKt.throwOnFailure($result);
                ex = (Throwable) this.L$0;
                dataStoreImpl$readDataAndUpdateCache$3 = this;
                $result2 = $result;
                $result3 = new ReadException(ex, ((Number) $result).intValue());
                return TuplesKt.to($result3, Boxing.boxBoolean(true));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
