package androidx.datastore.core;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.datastore.core.Message;
import androidx.datastore.core.UpdatingDataContextElement;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
/* compiled from: DataStoreImpl.kt */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 V*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002VWBn\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012?\b\u0002\u0010\u0005\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00070\u0006\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u000e\u00103\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104JG\u00105\u001a\u0002H6\"\u0004\b\u0001\u001062\u0006\u00107\u001a\u0002082\u001c\u00109\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H60\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0:H\u0082@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010;J\u001c\u0010<\u001a\u00020\r2\f\u0010=\u001a\b\u0012\u0004\u0012\u00028\u000002H\u0082@¢\u0006\u0002\u0010>J\u000e\u0010?\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u000e\u0010@\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u001c\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u000e\u0010E\u001a\u00028\u0000H\u0082@¢\u0006\u0002\u00104J\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000G2\u0006\u00107\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u001c\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJI\u0010I\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00072\u0006\u0010L\u001a\u00020MH\u0082@¢\u0006\u0002\u0010NJA\u0010O\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007H\u0096@¢\u0006\u0002\u0010PJ \u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00028\u00002\u0006\u0010S\u001a\u000208H\u0080@¢\u0006\u0004\bT\u0010UR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010&\u001a\f0'R\b\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000)8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\b,\u0010-*\u0004\b*\u0010+R\u001a\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000)0/X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000201X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Landroidx/datastore/core/DataStoreImpl;", "T", "Landroidx/datastore/core/DataStore;", "storage", "Landroidx/datastore/core/Storage;", "initTasksList", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "corruptionHandler", "Landroidx/datastore/core/CorruptionHandler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V", "collectorCounter", "", "collectorJob", "Lkotlinx/coroutines/Job;", "collectorMutex", "Lkotlinx/coroutines/sync/Mutex;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "coordinator$delegate", "Lkotlin/Lazy;", "data", "Lkotlinx/coroutines/flow/Flow;", "getData", "()Lkotlinx/coroutines/flow/Flow;", "inMemoryCache", "Landroidx/datastore/core/DataStoreInMemoryCache;", "readAndInit", "Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "storageConnection", "Landroidx/datastore/core/StorageConnection;", "getStorageConnection$datastore_core_release$delegate", "(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;", "getStorageConnection$datastore_core_release", "()Landroidx/datastore/core/StorageConnection;", "storageConnectionDelegate", "Lkotlin/Lazy;", "writeActor", "Landroidx/datastore/core/SimpleActor;", "Landroidx/datastore/core/Message$Update;", "decrementCollector", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doWithWriteFileLock", "R", "hasWriteFileLock", "", "block", "Lkotlin/Function1;", "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleUpdate", "update", "(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementCollector", "readAndInitOrPropagateAndThrowFailure", "readDataAndUpdateCache", "Landroidx/datastore/core/State;", "requireLock", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readDataFromFileOrDefault", "readDataOrHandleCorruption", "Landroidx/datastore/core/Data;", "readState", "transformAndWrite", "transform", "t", "callerContext", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateData", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeData", "newData", "updateCache", "writeData$datastore_core_release", "(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "InitDataStore", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes.dex */
public final class DataStoreImpl<T> implements DataStore<T> {
    private static final String BUG_MESSAGE = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542";
    public static final Companion Companion = new Companion(null);
    private int collectorCounter;
    private Job collectorJob;
    private final Mutex collectorMutex;
    private final Lazy coordinator$delegate;
    private final CorruptionHandler<T> corruptionHandler;
    private final Flow<T> data;
    private final DataStoreInMemoryCache<T> inMemoryCache;
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    private final CoroutineScope scope;
    private final Storage<T> storage;
    private final Lazy<StorageConnection<T>> storageConnectionDelegate;
    private final SimpleActor<Message.Update<T>> writeActor;

    public DataStoreImpl(Storage<T> storage, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasksList, CorruptionHandler<T> corruptionHandler, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = scope;
        this.data = FlowKt.flow(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = MutexKt.Mutex$default(false, 1, null);
        this.inMemoryCache = new DataStoreInMemoryCache<>();
        this.readAndInit = new InitDataStore(this, initTasksList);
        this.storageConnectionDelegate = LazyKt.lazy(new DataStoreImpl$storageConnectionDelegate$1(this));
        this.coordinator$delegate = LazyKt.lazy(new DataStoreImpl$coordinator$2(this));
        this.writeActor = new SimpleActor<>(this.scope, new DataStoreImpl$writeActor$1(this), DataStoreImpl$writeActor$2.INSTANCE, new DataStoreImpl$writeActor$3(this, null));
    }

    public /* synthetic */ DataStoreImpl(Storage storage, List list, NoOpCorruptionHandler noOpCorruptionHandler, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(storage, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? new NoOpCorruptionHandler() : noOpCorruptionHandler, (i & 8) != 0 ? CoroutineScopeKt.CoroutineScope(Actual_jvmKt.ioDispatcher().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))) : coroutineScope);
    }

    @Override // androidx.datastore.core.DataStore
    public Flow<T> getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:18:0x0055, B:20:0x005f, B:21:0x0074), top: B:27:0x0055 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object incrementCollector(kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof androidx.datastore.core.DataStoreImpl$incrementCollector$1
            if (r0 == 0) goto L14
            r0 = r15
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$incrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r15 = r0.label
            int r15 = r15 - r2
            r0.label = r15
            goto L19
        L14:
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$incrementCollector$1
            r0.<init>(r14, r15)
        L19:
            r15 = r0
            java.lang.Object r0 = r15.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r15.label
            r3 = 1
            switch(r2) {
                case 0: goto L3c;
                case 1: goto L2e;
                default: goto L26;
            }
        L26:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L2e:
            r1 = 0
            r2 = 0
            java.lang.Object r4 = r15.L$1
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            java.lang.Object r5 = r15.L$0
            androidx.datastore.core.DataStoreImpl r5 = (androidx.datastore.core.DataStoreImpl) r5
            kotlin.ResultKt.throwOnFailure(r0)
            goto L53
        L3c:
            kotlin.ResultKt.throwOnFailure(r0)
            r5 = r14
            kotlinx.coroutines.sync.Mutex r4 = r5.collectorMutex
            r2 = 0
            r6 = 0
            r15.L$0 = r5
            r15.L$1 = r4
            r15.label = r3
            java.lang.Object r7 = r4.lock(r2, r15)
            if (r7 != r1) goto L52
            return r1
        L52:
            r1 = r6
        L53:
            r6 = 0
            int r7 = r5.collectorCounter     // Catch: java.lang.Throwable -> L7f
            int r7 = r7 + r3
            r5.collectorCounter = r7     // Catch: java.lang.Throwable -> L7f
            int r7 = r5.collectorCounter     // Catch: java.lang.Throwable -> L7f
            if (r7 != r3) goto L74
        L5f:
            kotlinx.coroutines.CoroutineScope r8 = r5.scope     // Catch: java.lang.Throwable -> L7f
            androidx.datastore.core.DataStoreImpl$incrementCollector$2$1 r3 = new androidx.datastore.core.DataStoreImpl$incrementCollector$2$1     // Catch: java.lang.Throwable -> L7f
            r7 = 0
            r3.<init>(r5, r7)     // Catch: java.lang.Throwable -> L7f
            r11 = r3
            kotlin.jvm.functions.Function2 r11 = (kotlin.jvm.functions.Function2) r11     // Catch: java.lang.Throwable -> L7f
            r12 = 3
            r13 = 0
            r9 = 0
            r10 = 0
            kotlinx.coroutines.Job r3 = kotlinx.coroutines.BuildersKt.launch$default(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L7f
            r5.collectorJob = r3     // Catch: java.lang.Throwable -> L7f
        L74:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7f
            r4.unlock(r2)
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        L7f:
            r3 = move-exception
            r4.unlock(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.incrementCollector(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[Catch: all -> 0x0074, TryCatch #0 {all -> 0x0074, blocks: (B:18:0x0055, B:20:0x005f, B:22:0x0064, B:23:0x0067, B:24:0x0069), top: B:30:0x0055 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object decrementCollector(kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof androidx.datastore.core.DataStoreImpl$decrementCollector$1
            if (r0 == 0) goto L14
            r0 = r10
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$decrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$decrementCollector$1
            r0.<init>(r9, r10)
        L19:
            r10 = r0
            java.lang.Object r0 = r10.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r10.label
            r3 = 1
            switch(r2) {
                case 0: goto L3c;
                case 1: goto L2e;
                default: goto L26;
            }
        L26:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L2e:
            r1 = 0
            r2 = 0
            java.lang.Object r4 = r10.L$1
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            java.lang.Object r5 = r10.L$0
            androidx.datastore.core.DataStoreImpl r5 = (androidx.datastore.core.DataStoreImpl) r5
            kotlin.ResultKt.throwOnFailure(r0)
            goto L53
        L3c:
            kotlin.ResultKt.throwOnFailure(r0)
            r5 = r9
            kotlinx.coroutines.sync.Mutex r4 = r5.collectorMutex
            r2 = 0
            r6 = 0
            r10.L$0 = r5
            r10.L$1 = r4
            r10.label = r3
            java.lang.Object r7 = r4.lock(r2, r10)
            if (r7 != r1) goto L52
            return r1
        L52:
            r1 = r6
        L53:
            r6 = 0
            int r7 = r5.collectorCounter     // Catch: java.lang.Throwable -> L74
            int r7 = r7 + (-1)
            r5.collectorCounter = r7     // Catch: java.lang.Throwable -> L74
            int r7 = r5.collectorCounter     // Catch: java.lang.Throwable -> L74
            if (r7 != 0) goto L69
            kotlinx.coroutines.Job r7 = r5.collectorJob     // Catch: java.lang.Throwable -> L74
            r8 = 0
            if (r7 == 0) goto L67
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r7, r8, r3, r8)     // Catch: java.lang.Throwable -> L74
        L67:
            r5.collectorJob = r8     // Catch: java.lang.Throwable -> L74
        L69:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L74
            r4.unlock(r2)
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        L74:
            r3 = move-exception
            r4.unlock(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.decrementCollector(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.datastore.core.DataStore
    public Object updateData(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        UpdatingDataContextElement parentContextElement = (UpdatingDataContextElement) continuation.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (parentContextElement != null) {
            parentContextElement.checkNotUpdating(this);
        }
        UpdatingDataContextElement childContextElement = new UpdatingDataContextElement(parentContextElement, this);
        return BuildersKt.withContext(childContextElement, new DataStoreImpl$updateData$2(this, function2, null), continuation);
    }

    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return this.storageConnectionDelegate.mo300getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator$delegate.mo300getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readState(boolean requireLock, Continuation<? super State<T>> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new DataStoreImpl$readState$2(this, requireLock, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|65|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
        r10 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleUpdate(androidx.datastore.core.Message.Update<T> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.handleUpdate(androidx.datastore.core.Message$Update, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L14
            r0 = r8
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r7, r8)
        L19:
            r8 = r0
            java.lang.Object r0 = r8.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r8.label
            switch(r2) {
                case 0: goto L42;
                case 1: goto L39;
                case 2: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L2d:
            int r1 = r8.I$0
            java.lang.Object r2 = r8.L$0
            androidx.datastore.core.DataStoreImpl r2 = (androidx.datastore.core.DataStoreImpl) r2
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L37
            goto L6e
        L37:
            r3 = move-exception
            goto L76
        L39:
            java.lang.Object r2 = r8.L$0
            androidx.datastore.core.DataStoreImpl r2 = (androidx.datastore.core.DataStoreImpl) r2
            kotlin.ResultKt.throwOnFailure(r0)
            r3 = r0
            goto L56
        L42:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r7
            androidx.datastore.core.InterProcessCoordinator r3 = r2.getCoordinator()
            r8.L$0 = r2
            r4 = 1
            r8.label = r4
            java.lang.Object r3 = r3.getVersion(r8)
            if (r3 != r1) goto L56
            return r1
        L56:
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            androidx.datastore.core.DataStoreImpl<T>$InitDataStore r4 = r2.readAndInit     // Catch: java.lang.Throwable -> L72
            r8.L$0 = r2     // Catch: java.lang.Throwable -> L72
            r8.I$0 = r3     // Catch: java.lang.Throwable -> L72
            r5 = 2
            r8.label = r5     // Catch: java.lang.Throwable -> L72
            java.lang.Object r4 = r4.runIfNeeded(r8)     // Catch: java.lang.Throwable -> L72
            if (r4 != r1) goto L6d
            return r1
        L6d:
            r1 = r3
        L6e:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        L72:
            r1 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
        L76:
            androidx.datastore.core.DataStoreInMemoryCache<T> r4 = r2.inMemoryCache
            androidx.datastore.core.ReadException r5 = new androidx.datastore.core.ReadException
            r5.<init>(r3, r1)
            androidx.datastore.core.State r5 = (androidx.datastore.core.State) r5
            r4.tryUpdate(r5)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDataAndUpdateCache(boolean r9, kotlin.coroutines.Continuation<? super androidx.datastore.core.State<T>> r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readDataAndUpdateCache(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readDataFromFileOrDefault(Continuation<? super T> continuation) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object transformAndWrite(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, CoroutineContext callerContext, Continuation<? super T> continuation) {
        return getCoordinator().lock(new DataStoreImpl$transformAndWrite$2(this, callerContext, function2, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData$datastore_core_release(T r12, boolean r13, kotlin.coroutines.Continuation<? super java.lang.Integer> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof androidx.datastore.core.DataStoreImpl$writeData$1
            if (r0 == 0) goto L14
            r0 = r14
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = (androidx.datastore.core.DataStoreImpl$writeData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = new androidx.datastore.core.DataStoreImpl$writeData$1
            r0.<init>(r11, r14)
        L19:
            r14 = r0
            java.lang.Object r0 = r14.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r14.label
            switch(r2) {
                case 0: goto L35;
                case 1: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L2d:
            java.lang.Object r12 = r14.L$0
            kotlin.jvm.internal.Ref$IntRef r12 = (kotlin.jvm.internal.Ref.IntRef) r12
            kotlin.ResultKt.throwOnFailure(r0)
            goto L5f
        L35:
            kotlin.ResultKt.throwOnFailure(r0)
            r4 = r11
            r5 = r12
            kotlin.jvm.internal.Ref$IntRef r12 = new kotlin.jvm.internal.Ref$IntRef
            r12.<init>()
            androidx.datastore.core.StorageConnection r8 = r4.getStorageConnection$datastore_core_release()
            androidx.datastore.core.DataStoreImpl$writeData$2 r9 = new androidx.datastore.core.DataStoreImpl$writeData$2
            r10 = 1
            if (r13 == 0) goto L4a
            r6 = r10
            goto L4c
        L4a:
            r13 = 0
            r6 = r13
        L4c:
            r7 = 0
            r2 = r9
            r3 = r12
            r2.<init>(r3, r4, r5, r6, r7)
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            r14.L$0 = r12
            r14.label = r10
            java.lang.Object r13 = r8.writeScope(r9, r14)
            if (r13 != r1) goto L5f
            return r1
        L5f:
            int r13 = r12.element
            java.lang.Integer r13 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.writeData$datastore_core_release(java.lang.Object, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|80|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
        r6 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        r11 = r2;
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0096, code lost:
        r6 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        r8 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0112, code lost:
        r2 = r6;
        r6 = new kotlin.jvm.internal.Ref.ObjectRef();
        r7 = r8.corruptionHandler;
        r12.L$0 = r8;
        r12.L$1 = r2;
        r12.L$2 = r6;
        r12.L$3 = r6;
        r12.Z$0 = r11;
        r12.label = 5;
        r7 = r7.handleCorruption(r2, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012b, code lost:
        if (r7 != r1) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012d, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012e, code lost:
        r9 = r8;
        r8 = (T) r7;
        r7 = r2;
        r2 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3 A[Catch: CorruptionException -> 0x0084, TRY_ENTER, TryCatch #2 {CorruptionException -> 0x0084, blocks: (B:25:0x007f, B:47:0x00cf, B:42:0x00b3, B:44:0x00b9), top: B:81:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ce A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0156 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0163  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDataOrHandleCorruption(boolean r11, kotlin.coroutines.Continuation<? super androidx.datastore.core.Data<T>> r12) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readDataOrHandleCorruption(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> Object doWithWriteFileLock(boolean hasWriteFileLock, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        if (hasWriteFileLock) {
            return function1.mo2027invoke(continuation);
        }
        return getCoordinator().lock(new DataStoreImpl$doWithWriteFileLock$3(function1, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DataStoreImpl.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001BD\u0012=\u0010\u0002\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u0003¢\u0006\u0002\u0010\fJ\u000e\u0010\u000e\u001a\u00020\nH\u0094@¢\u0006\u0002\u0010\u000fRG\u0010\r\u001a;\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Landroidx/datastore/core/RunOnce;", "initTasksList", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V", "initTasks", "doRun", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes.dex */
    public final class InitDataStore extends RunOnce {
        private List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasks;
        final /* synthetic */ DataStoreImpl<T> this$0;

        public InitDataStore(DataStoreImpl this$0, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasksList) {
            Intrinsics.checkNotNullParameter(initTasksList, "initTasksList");
            this.this$0 = this$0;
            this.initTasks = CollectionsKt.toList(initTasksList);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doRun(kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
            /*
                r7 = this;
                boolean r0 = r8 instanceof androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                if (r0 == 0) goto L14
                r0 = r8
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = (androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r1 = r1 & r2
                if (r1 == 0) goto L14
                int r8 = r0.label
                int r8 = r8 - r2
                r0.label = r8
                goto L19
            L14:
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                r0.<init>(r7, r8)
            L19:
                r8 = r0
                java.lang.Object r0 = r8.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r8.label
                switch(r2) {
                    case 0: goto L3f;
                    case 1: goto L36;
                    case 2: goto L2d;
                    default: goto L25;
                }
            L25:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L2d:
                java.lang.Object r1 = r8.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r1 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r1
                kotlin.ResultKt.throwOnFailure(r0)
                r3 = r0
                goto L70
            L36:
                java.lang.Object r1 = r8.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r1 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r1
                kotlin.ResultKt.throwOnFailure(r0)
                r3 = r0
                goto L83
            L3f:
                kotlin.ResultKt.throwOnFailure(r0)
                r2 = r7
                java.util.List<? extends kotlin.jvm.functions.Function2<? super androidx.datastore.core.InitializerApi<T>, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>> r3 = r2.initTasks
                if (r3 == 0) goto L73
                java.util.List<? extends kotlin.jvm.functions.Function2<? super androidx.datastore.core.InitializerApi<T>, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>> r3 = r2.initTasks
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                boolean r3 = r3.isEmpty()
                if (r3 == 0) goto L53
                goto L73
            L53:
                androidx.datastore.core.DataStoreImpl<T> r3 = r2.this$0
                androidx.datastore.core.InterProcessCoordinator r3 = androidx.datastore.core.DataStoreImpl.access$getCoordinator(r3)
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1 r4 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1
                androidx.datastore.core.DataStoreImpl<T> r5 = r2.this$0
                r6 = 0
                r4.<init>(r5, r2, r6)
                kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
                r8.L$0 = r2
                r5 = 2
                r8.label = r5
                java.lang.Object r3 = r3.lock(r4, r8)
                if (r3 != r1) goto L6f
                return r1
            L6f:
                r1 = r2
            L70:
                androidx.datastore.core.Data r3 = (androidx.datastore.core.Data) r3
                goto L85
            L73:
                androidx.datastore.core.DataStoreImpl<T> r3 = r2.this$0
                r8.L$0 = r2
                r4 = 1
                r8.label = r4
                r4 = 0
                java.lang.Object r3 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r3, r4, r8)
                if (r3 != r1) goto L82
                return r1
            L82:
                r1 = r2
            L83:
                androidx.datastore.core.Data r3 = (androidx.datastore.core.Data) r3
            L85:
                r2 = r3
                androidx.datastore.core.DataStoreImpl<T> r3 = r1.this$0
                androidx.datastore.core.DataStoreInMemoryCache r3 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r3)
                r4 = r2
                androidx.datastore.core.State r4 = (androidx.datastore.core.State) r4
                r3.tryUpdate(r4)
                kotlin.Unit r3 = kotlin.Unit.INSTANCE
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.InitDataStore.doRun(kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: DataStoreImpl.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$Companion;", "", "()V", "BUG_MESSAGE", "", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
