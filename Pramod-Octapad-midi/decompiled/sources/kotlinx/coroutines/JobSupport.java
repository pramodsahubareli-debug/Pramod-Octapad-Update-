package kotlinx.coroutines;

import androidx.concurrent.futures.AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause0Impl;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectInstance;
/* compiled from: JobSupport.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(d1 = {"\u0000ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\f\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n¹\u0001º\u0001»\u0001¼\u0001½\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0004J\u001f\u0010\u001f\u001a\u00020 2\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u001b0\"H\u0082\bJ\u001c\u0010'\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001c\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0002J \u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u001c\u001a\u00020(2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0-H\u0002J\u001e\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0-H\u0002J\u001a\u00100\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u000eH\u0002J\u001a\u00103\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u000eH\u0002J\u0018\u00104\u001a\u00020\u001b2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020+H\u0002J\u0010\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u00020+H\u0002J\u0016\u00109\u001a\u00020\u001b*\u0002062\b\u00107\u001a\u0004\u0018\u00010+H\u0002J/\u0010:\u001a\u00020\u001b2\u0006\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010+2\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00050\"H\u0082\bJ\u0006\u0010=\u001a\u00020\u0005J\u0012\u0010>\u001a\u00020?2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010@\u001a\u00020\u001bH\u0014J\u000f\u0010A\u001a\u00060Cj\u0002`B¢\u0006\u0002\u0010DJ!\u0010E\u001a\u00060Cj\u0002`B*\u00020+2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010GH\u0004¢\u0006\u0002\u0010HJ4\u0010N\u001a\u00020O2'\u0010P\u001a#\u0012\u0015\u0012\u0013\u0018\u00010+¢\u0006\f\bR\u0012\b\bS\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u001b0\"j\u0002`Q¢\u0006\u0002\u0010TJD\u0010N\u001a\u00020O2\u0006\u0010U\u001a\u00020\u00052\u0006\u0010V\u001a\u00020\u00052'\u0010P\u001a#\u0012\u0015\u0012\u0013\u0018\u00010+¢\u0006\f\bR\u0012\b\bS\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u001b0\"j\u0002`Q¢\u0006\u0002\u0010WJ\u001d\u0010X\u001a\u00020O2\u0006\u0010V\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020<H\u0000¢\u0006\u0002\bZJ+\u0010[\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020<2\u0018\u0010\\\u001a\u0014\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00050]H\u0082\bJ\u0010\u0010^\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020_H\u0002J\u0010\u0010`\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020<H\u0002J\u000e\u0010a\u001a\u00020\u001bH\u0086@¢\u0006\u0002\u0010bJ\b\u0010c\u001a\u00020\u0005H\u0002J\u000e\u0010d\u001a\u00020\u001bH\u0082@¢\u0006\u0002\u0010bJ\u001e\u0010k\u001a\u00020\u001b2\n\u0010l\u001a\u0006\u0012\u0002\b\u00030m2\b\u0010n\u001a\u0004\u0018\u00010\u000eH\u0002J\u0015\u0010o\u001a\u00020\u001b2\u0006\u0010Y\u001a\u00020<H\u0000¢\u0006\u0002\bpJ\u001d\u0010s\u001a\u00020\u001b2\u000e\u00107\u001a\n\u0018\u00010Cj\u0004\u0018\u0001`BH\u0016¢\u0006\u0002\u0010tJ\b\u0010u\u001a\u00020GH\u0014J\u0012\u0010s\u001a\u00020\u00052\b\u00107\u001a\u0004\u0018\u00010+H\u0017J\u0010\u0010v\u001a\u00020\u001b2\u0006\u00107\u001a\u00020+H\u0016J\u000e\u0010w\u001a\u00020\u001b2\u0006\u0010x\u001a\u00020\u0003J\u0010\u0010y\u001a\u00020\u00052\u0006\u00107\u001a\u00020+H\u0016J\u0010\u0010z\u001a\u00020\u00052\b\u00107\u001a\u0004\u0018\u00010+J\u0017\u0010{\u001a\u00020\u00052\b\u00107\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0002\b|J\u0014\u0010}\u001a\u0004\u0018\u00010\u000e2\b\u00107\u001a\u0004\u0018\u00010\u000eH\u0002J'\u0010~\u001a\u00020\u007f2\n\b\u0002\u0010F\u001a\u0004\u0018\u00010G2\n\b\u0002\u00107\u001a\u0004\u0018\u00010+H\u0080\b¢\u0006\u0003\b\u0080\u0001J\u0012\u0010\u0081\u0001\u001a\u00060Cj\u0002`BH\u0016¢\u0006\u0002\u0010DJ\u0013\u0010\u0082\u0001\u001a\u00020+2\b\u00107\u001a\u0004\u0018\u00010\u000eH\u0002J\u0015\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000e2\b\u00107\u001a\u0004\u0018\u00010\u000eH\u0002J\u0013\u0010\u0084\u0001\u001a\u0004\u0018\u0001062\u0006\u0010\u001c\u001a\u000201H\u0002J\u0019\u0010\u0085\u0001\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u0002012\u0006\u0010/\u001a\u00020+H\u0002J\u0019\u0010\u0086\u0001\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0003\b\u0087\u0001J\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000e2\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0003\b\u0089\u0001J\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0002J\u001d\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001c\u001a\u0002012\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0002J&\u0010\u008f\u0001\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020(2\b\u0010\u0090\u0001\u001a\u00030\u0091\u00012\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0082\u0010J%\u0010\u0092\u0001\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020(2\b\u0010\u0093\u0001\u001a\u00030\u0091\u00012\b\u0010)\u001a\u0004\u0018\u00010\u000eH\u0002J\u0011\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0091\u0001*\u00030\u0095\u0001H\u0002J\u0010\u0010\u009a\u0001\u001a\u00020\u00102\u0007\u0010\u0090\u0001\u001a\u00020\u0002J\u0018\u0010\u009b\u0001\u001a\u00020\u001b2\u0007\u0010\u009c\u0001\u001a\u00020+H\u0010¢\u0006\u0003\b\u009d\u0001J\u0012\u0010U\u001a\u00020\u001b2\b\u00107\u001a\u0004\u0018\u00010+H\u0014J\u0012\u0010¡\u0001\u001a\u00020\u00052\u0007\u0010\u009c\u0001\u001a\u00020+H\u0014J\u0013\u0010¢\u0001\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0014J\u0013\u0010£\u0001\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0014J\t\u0010¤\u0001\u001a\u00020GH\u0016J\t\u0010¥\u0001\u001a\u00020GH\u0007J\u000f\u0010¦\u0001\u001a\u00020GH\u0010¢\u0006\u0003\b§\u0001J\u0013\u0010¨\u0001\u001a\u00020G2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0002J\t\u0010¬\u0001\u001a\u0004\u0018\u00010+J\u0011\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0003\b®\u0001J\u0011\u0010¯\u0001\u001a\u0004\u0018\u00010\u000eH\u0084@¢\u0006\u0002\u0010bJ\u0011\u0010°\u0001\u001a\u0004\u0018\u00010\u000eH\u0082@¢\u0006\u0002\u0010bJ\u001f\u0010¶\u0001\u001a\u00020\u001b2\n\u0010l\u001a\u0006\u0012\u0002\b\u00030m2\b\u0010n\u001a\u0004\u0018\u00010\u000eH\u0002J \u0010·\u0001\u001a\u0004\u0018\u00010\u000e2\b\u0010n\u001a\u0004\u0018\u00010\u000e2\t\u0010¸\u0001\u001a\u0004\u0018\u00010\u000eH\u0002R\u0015\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u0004R\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\rX\u0082\u0004R(\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00108@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0011\u0010&\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b&\u0010$R\u0016\u0010I\u001a\u0004\u0018\u00010+8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020\u00058DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bM\u0010$R\u0017\u0010e\u001a\u00020f8F¢\u0006\f\u0012\u0004\bg\u0010h\u001a\u0004\bi\u0010jR\u0014\u0010q\u001a\u00020\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\br\u0010$R\u001f\u0010\u008c\u0001\u001a\u0004\u0018\u00010+*\u0004\u0018\u00010\u000e8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001b\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010\u0097\u00018F¢\u0006\b\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0016\u0010\u009e\u0001\u001a\u00020\u00058TX\u0094\u0004¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010$R\u0016\u0010\u009f\u0001\u001a\u00020\u00058PX\u0090\u0004¢\u0006\u0007\u001a\u0005\b \u0001\u0010$R\u001b\u0010©\u0001\u001a\u00020\u0005*\u0002018BX\u0082\u0004¢\u0006\b\u001a\u0006\b©\u0001\u0010ª\u0001R\u0013\u0010«\u0001\u001a\u00020\u00058F¢\u0006\u0007\u001a\u0005\b«\u0001\u0010$R#\u0010±\u0001\u001a\u0007\u0012\u0002\b\u00030²\u00018DX\u0084\u0004¢\u0006\u000f\u0012\u0005\b³\u0001\u0010h\u001a\u0006\b´\u0001\u0010µ\u0001¨\u0006¾\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", "active", "", "<init>", "(Z)V", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "_state", "Lkotlinx/atomicfu/AtomicRef;", "", "_parentHandle", "Lkotlinx/coroutines/ChildHandle;", "value", "parentHandle", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "parent", "getParent", "()Lkotlinx/coroutines/Job;", "initParentJob", "", "state", "getState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "loopOnState", "", "block", "Lkotlin/Function1;", "isActive", "()Z", "isCompleted", "isCancelled", "finalizeFinishingState", "Lkotlinx/coroutines/JobSupport$Finishing;", "proposedUpdate", "getFinalRootCause", "", "exceptions", "", "addSuppressedExceptions", "rootCause", "tryFinalizeSimpleState", "Lkotlinx/coroutines/Incomplete;", "update", "completeStateFinalization", "notifyCancelling", "list", "Lkotlinx/coroutines/NodeList;", "cause", "cancelParent", "notifyCompletion", "notifyHandlers", "predicate", "Lkotlinx/coroutines/JobNode;", "start", "startInternal", "", "onStart", "getCancellationException", "Lkotlinx/coroutines/CancellationException;", "Ljava/util/concurrent/CancellationException;", "()Ljava/util/concurrent/CancellationException;", "toCancellationException", "message", "", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "completionCause", "getCompletionCause", "()Ljava/lang/Throwable;", "completionCauseHandled", "getCompletionCauseHandled", "invokeOnCompletion", "Lkotlinx/coroutines/DisposableHandle;", "handler", "Lkotlinx/coroutines/CompletionHandler;", "Lkotlin/ParameterName;", "name", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;", "invokeOnCompletionInternal", "node", "invokeOnCompletionInternal$kotlinx_coroutines_core", "tryPutNodeIntoList", "tryAdd", "Lkotlin/Function2;", "promoteEmptyToNodeList", "Lkotlinx/coroutines/Empty;", "promoteSingleToNodeList", "join", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinInternal", "joinSuspend", "onJoin", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "()V", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "registerSelectForOnJoin", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "ignoredParam", "removeNode", "removeNode$kotlinx_coroutines_core", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", "cancel", "(Ljava/util/concurrent/CancellationException;)V", "cancellationExceptionMessage", "cancelInternal", "parentCancelled", "parentJob", "childCancelled", "cancelCoroutine", "cancelImpl", "cancelImpl$kotlinx_coroutines_core", "cancelMakeCompleting", "defaultCancellationException", "Lkotlinx/coroutines/JobCancellationException;", "defaultCancellationException$kotlinx_coroutines_core", "getChildJobCancellationCause", "createCauseException", "makeCancelling", "getOrPromoteCancellingList", "tryMakeCancelling", "makeCompleting", "makeCompleting$kotlinx_coroutines_core", "makeCompletingOnce", "makeCompletingOnce$kotlinx_coroutines_core", "tryMakeCompleting", "tryMakeCompletingSlowPath", "exceptionOrNull", "getExceptionOrNull", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "tryWaitForChild", "child", "Lkotlinx/coroutines/ChildHandleNode;", "continueCompleting", "lastChild", "nextChild", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "children", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "attachChild", "handleOnCompletionException", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "isScopedCoroutine", "handlesException", "getHandlesException$kotlinx_coroutines_core", "handleJobException", "onCompletionInternal", "afterCompletion", "toString", "toDebugString", "nameString", "nameString$kotlinx_coroutines_core", "stateString", "isCancelling", "(Lkotlinx/coroutines/Incomplete;)Z", "isCompletedExceptionally", "getCompletionExceptionOrNull", "getCompletedInternal", "getCompletedInternal$kotlinx_coroutines_core", "awaitInternal", "awaitSuspend", "onAwaitInternal", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "onAwaitInternalRegFunc", "onAwaitInternalProcessResFunc", "result", "SelectOnJoinCompletionHandler", "Finishing", "ChildCompletion", "AwaitContinuation", "SelectOnAwaitCompletionHandler", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes4.dex */
public class JobSupport implements Job, ChildJob, ParentJob {
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");

    protected static /* synthetic */ void getOnAwaitInternal$annotations() {
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    private final /* synthetic */ Object get_parentHandle$volatile() {
        return this._parentHandle$volatile;
    }

    private final /* synthetic */ Object get_state$volatile() {
        return this._state$volatile;
    }

    private final /* synthetic */ void set_parentHandle$volatile(Object obj) {
        this._parentHandle$volatile = obj;
    }

    private final /* synthetic */ void set_state$volatile(Object obj) {
        this._state$volatile = obj;
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        Job.DefaultImpls.cancel(this);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) Job.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return Job.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext context) {
        return Job.DefaultImpls.plus(this, context);
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    public Job plus(Job other) {
        return Job.DefaultImpls.plus((Job) this, other);
    }

    public JobSupport(boolean active) {
        this._state$volatile = active ? JobSupportKt.EMPTY_ACTIVE : JobSupportKt.EMPTY_NEW;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key<?> getKey() {
        return Job.Key;
    }

    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) _parentHandle$volatile$FU.get(this);
    }

    public final void setParentHandle$kotlinx_coroutines_core(ChildHandle value) {
        _parentHandle$volatile$FU.set(this, value);
    }

    @Override // kotlinx.coroutines.Job
    public Job getParent() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            return parentHandle$kotlinx_coroutines_core.getParent();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void initParentJob(Job parent) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getParentHandle$kotlinx_coroutines_core() == null)) {
                throw new AssertionError();
            }
        }
        if (parent == null) {
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
            return;
        }
        parent.start();
        ChildHandle handle = parent.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(handle);
        if (isCompleted()) {
            handle.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    private final Void loopOnState(Function1<Object, Unit> function1) {
        while (true) {
            function1.mo2027invoke(getState$kotlinx_coroutines_core());
        }
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state = getState$kotlinx_coroutines_core();
        return (state instanceof Incomplete) && ((Incomplete) state).isActive();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state = getState$kotlinx_coroutines_core();
        return (state instanceof CompletedExceptionally) || ((state instanceof Finishing) && ((Finishing) state).isCancelling());
    }

    private final Object finalizeFinishingState(Finishing state, Object proposedUpdate) {
        boolean wasCancelling;
        Throwable finalCause;
        boolean handled = true;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((getState$kotlinx_coroutines_core() == state ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        if (!DebugKt.getASSERTIONS_ENABLED() || (!state.isSealed()) != 0) {
            if (DebugKt.getASSERTIONS_ENABLED() && !state.isCompleting()) {
                throw new AssertionError();
            }
            CompletedExceptionally completedExceptionally = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
            Throwable proposedException = completedExceptionally != null ? completedExceptionally.cause : null;
            synchronized (state) {
                wasCancelling = state.isCancelling();
                List exceptions = state.sealLocked(proposedException);
                finalCause = getFinalRootCause(state, exceptions);
                if (finalCause != null) {
                    addSuppressedExceptions(finalCause, exceptions);
                }
            }
            Object finalState = (finalCause == null || finalCause == proposedException) ? proposedUpdate : new CompletedExceptionally(finalCause, false, 2, null);
            if (finalCause != null) {
                if (!cancelParent(finalCause) && !handleJobException(finalCause)) {
                    handled = false;
                }
                if (handled) {
                    Intrinsics.checkNotNull(finalState, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                    ((CompletedExceptionally) finalState).makeHandled();
                }
            }
            if (!wasCancelling) {
                onCancelling(finalCause);
            }
            onCompletionInternal(finalState);
            boolean casSuccess = AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, JobSupportKt.boxIncomplete(finalState));
            if (DebugKt.getASSERTIONS_ENABLED() && !casSuccess) {
                throw new AssertionError();
            }
            completeStateFinalization(state, finalState);
            return finalState;
        }
        throw new AssertionError();
    }

    private final Throwable getFinalRootCause(Finishing state, List<? extends Throwable> list) {
        Object element$iv;
        Throwable it;
        Object obj = null;
        if (list.isEmpty()) {
            if (!state.isCancelling()) {
                return null;
            }
            return new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        List<? extends Throwable> $this$firstOrNull$iv = list;
        Iterator<T> it2 = $this$firstOrNull$iv.iterator();
        while (true) {
            if (it2.hasNext()) {
                element$iv = it2.next();
                if (!(((Throwable) element$iv) instanceof CancellationException)) {
                    break;
                }
            } else {
                element$iv = null;
                break;
            }
        }
        Throwable firstNonCancellation = (Throwable) element$iv;
        if (firstNonCancellation != null) {
            return firstNonCancellation;
        }
        Throwable first = list.get(0);
        if (first instanceof TimeoutCancellationException) {
            List<? extends Throwable> $this$firstOrNull$iv2 = list;
            Iterator<T> it3 = $this$firstOrNull$iv2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object element$iv2 = it3.next();
                Throwable it4 = (Throwable) element$iv2;
                if (it4 == first || !(it4 instanceof TimeoutCancellationException)) {
                    it = null;
                    continue;
                } else {
                    it = 1;
                    continue;
                }
                if (it != null) {
                    obj = element$iv2;
                    break;
                }
            }
            Throwable detailedTimeoutException = (Throwable) obj;
            if (detailedTimeoutException != null) {
                return detailedTimeoutException;
            }
        }
        return first;
    }

    private final void addSuppressedExceptions(Throwable rootCause, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        int expectedSize$iv = list.size();
        Set seenExceptions = Collections.newSetFromMap(new IdentityHashMap(expectedSize$iv));
        Throwable unwrappedCause = !DebugKt.getRECOVER_STACK_TRACES() ? rootCause : StackTraceRecoveryKt.unwrapImpl(rootCause);
        for (Throwable exception : list) {
            Throwable unwrapped = !DebugKt.getRECOVER_STACK_TRACES() ? exception : StackTraceRecoveryKt.unwrapImpl(exception);
            if (unwrapped != rootCause && unwrapped != unwrappedCause && !(unwrapped instanceof CancellationException) && seenExceptions.add(unwrapped)) {
                kotlin.ExceptionsKt.addSuppressed(rootCause, unwrapped);
            }
        }
    }

    private final boolean tryFinalizeSimpleState(Incomplete state, Object update) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((((state instanceof Empty) || (state instanceof JobNode)) ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(update instanceof CompletedExceptionally)) != 0) {
            if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, JobSupportKt.boxIncomplete(update))) {
                return false;
            }
            onCancelling(null);
            onCompletionInternal(update);
            completeStateFinalization(state, update);
            return true;
        }
        throw new AssertionError();
    }

    private final void completeStateFinalization(Incomplete state, Object update) {
        ChildHandle it = getParentHandle$kotlinx_coroutines_core();
        if (it != null) {
            it.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        Throwable th = null;
        CompletedExceptionally completedExceptionally = update instanceof CompletedExceptionally ? (CompletedExceptionally) update : null;
        if (completedExceptionally != null) {
            th = completedExceptionally.cause;
        }
        Throwable cause = th;
        if (state instanceof JobNode) {
            try {
                ((JobNode) state).invoke(cause);
                return;
            } catch (Throwable ex) {
                handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + state + " for " + this, ex));
                return;
            }
        }
        NodeList list = state.getList();
        if (list != null) {
            notifyCompletion(list, cause);
        }
    }

    private final void notifyCancelling(NodeList list, Throwable cause) {
        onCancelling(cause);
        list.close(4);
        NodeList this_$iv$iv = list;
        Object next = this_$iv$iv.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        Object exception$iv = null;
        for (LockFreeLinkedListNode cur$iv$iv = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(cur$iv$iv, this_$iv$iv); cur$iv$iv = cur$iv$iv.getNextNode()) {
            LockFreeLinkedListNode node$iv = cur$iv$iv;
            if (node$iv instanceof JobNode) {
                JobNode it = (JobNode) node$iv;
                if (it.getOnCancelling()) {
                    try {
                        ((JobNode) node$iv).invoke(cause);
                    } catch (Throwable ex$iv) {
                        Throwable $this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv = (Throwable) exception$iv;
                        if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv != null) {
                            kotlin.ExceptionsKt.addSuppressed($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv, ex$iv);
                            if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv != null) {
                            }
                        }
                        exception$iv = new CompletionHandlerException("Exception in completion handler " + node$iv + " for " + this, ex$iv);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        Throwable it$iv = (Throwable) exception$iv;
        if (it$iv != null) {
            handleOnCompletionException$kotlinx_coroutines_core(it$iv);
        }
        cancelParent(cause);
    }

    private final boolean cancelParent(Throwable cause) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean isCancellation = cause instanceof CancellationException;
        ChildHandle parent = getParentHandle$kotlinx_coroutines_core();
        if (parent == null || parent == NonDisposableHandle.INSTANCE) {
            return isCancellation;
        }
        return parent.childCancelled(cause) || isCancellation;
    }

    private final void notifyCompletion(NodeList $this$notifyCompletion, Throwable cause) {
        $this$notifyCompletion.close(1);
        NodeList this_$iv$iv = $this$notifyCompletion;
        Object next = this_$iv$iv.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        Object exception$iv = null;
        for (LockFreeLinkedListNode cur$iv$iv = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(cur$iv$iv, this_$iv$iv); cur$iv$iv = cur$iv$iv.getNextNode()) {
            LockFreeLinkedListNode node$iv = cur$iv$iv;
            if (node$iv instanceof JobNode) {
                JobNode jobNode = (JobNode) node$iv;
                try {
                    try {
                        ((JobNode) node$iv).invoke(cause);
                    } catch (Throwable th) {
                        ex$iv = th;
                        Throwable $this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv = (Throwable) exception$iv;
                        if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv != null) {
                            kotlin.ExceptionsKt.addSuppressed($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv, ex$iv);
                            if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413$iv != null) {
                            }
                        }
                        exception$iv = new CompletionHandlerException("Exception in completion handler " + node$iv + " for " + this, ex$iv);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th2) {
                    ex$iv = th2;
                }
            }
        }
        Throwable it$iv = (Throwable) exception$iv;
        if (it$iv == null) {
            return;
        }
        handleOnCompletionException$kotlinx_coroutines_core(it$iv);
    }

    private final void notifyHandlers(NodeList list, Throwable cause, Function1<? super JobNode, Boolean> function1) {
        NodeList this_$iv = list;
        Object next = this_$iv.getNext();
        Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        Object exception = null;
        for (LockFreeLinkedListNode cur$iv = (LockFreeLinkedListNode) next; !Intrinsics.areEqual(cur$iv, this_$iv); cur$iv = cur$iv.getNextNode()) {
            LockFreeLinkedListNode node = cur$iv;
            if ((node instanceof JobNode) && function1.mo2027invoke(node).booleanValue()) {
                try {
                    try {
                        ((JobNode) node).invoke(cause);
                    } catch (Throwable th) {
                        ex = th;
                        Throwable $this$notifyHandlers_u24lambda_u2415_u24lambda_u2413 = (Throwable) exception;
                        if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413 != null) {
                            kotlin.ExceptionsKt.addSuppressed($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413, ex);
                            if ($this$notifyHandlers_u24lambda_u2415_u24lambda_u2413 != null) {
                            }
                        }
                        exception = new CompletionHandlerException("Exception in completion handler " + node + " for " + this, ex);
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th2) {
                    ex = th2;
                }
            }
        }
        Throwable it = (Throwable) exception;
        if (it != null) {
            handleOnCompletionException$kotlinx_coroutines_core(it);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        while (true) {
            Object state = getState$kotlinx_coroutines_core();
            switch (startInternal(state)) {
                case 0:
                    return false;
                case 1:
                    return true;
            }
        }
    }

    private final int startInternal(Object state) {
        Empty empty;
        if (state instanceof Empty) {
            if (((Empty) state).isActive()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
            empty = JobSupportKt.EMPTY_ACTIVE;
            if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, state, empty)) {
                return -1;
            }
            onStart();
            return 1;
        } else if (!(state instanceof InactiveNodeList)) {
            return 0;
        } else {
            if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, ((InactiveNodeList) state).getList())) {
                return -1;
            }
            onStart();
            return 1;
        }
    }

    protected void onStart() {
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException getCancellationException() {
        CancellationException cancellationException;
        Object state = getState$kotlinx_coroutines_core();
        if (!(state instanceof Finishing)) {
            if (state instanceof Incomplete) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            return state instanceof CompletedExceptionally ? toCancellationException$default(this, ((CompletedExceptionally) state).cause, null, 1, null) : new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
        }
        Throwable rootCause = ((Finishing) state).getRootCause();
        if (rootCause == null || (cancellationException = toCancellationException(rootCause, DebugStringsKt.getClassSimpleName(this) + " is cancelling")) == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        return cancellationException;
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                str = null;
            }
            return jobSupport.toCancellationException(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    protected final CancellationException toCancellationException(Throwable $this$toCancellationException, String message) {
        CancellationException cancellationException = $this$toCancellationException instanceof CancellationException ? (CancellationException) $this$toCancellationException : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException(message == null ? cancellationExceptionMessage() : message, $this$toCancellationException, this);
    }

    protected final Throwable getCompletionCause() {
        Object state = getState$kotlinx_coroutines_core();
        if (state instanceof Finishing) {
            Throwable rootCause = ((Finishing) state).getRootCause();
            if (rootCause == null) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            return rootCause;
        } else if (state instanceof Incomplete) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        } else {
            if (!(state instanceof CompletedExceptionally)) {
                return null;
            }
            return ((CompletedExceptionally) state).cause;
        }
    }

    protected final boolean getCompletionCauseHandled() {
        Object it = getState$kotlinx_coroutines_core();
        return (it instanceof CompletedExceptionally) && ((CompletedExceptionally) it).getHandled();
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(Function1<? super Throwable, Unit> function1) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new InvokeOnCompletion(function1));
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, Function1<? super Throwable, Unit> function1) {
        InvokeOnCompletion invokeOnCompletion;
        if (onCancelling) {
            invokeOnCompletion = new InvokeOnCancelling(function1);
        } else {
            invokeOnCompletion = new InvokeOnCompletion(function1);
        }
        return invokeOnCompletionInternal$kotlinx_coroutines_core(invokeImmediately, invokeOnCompletion);
    }

    public final DisposableHandle invokeOnCompletionInternal$kotlinx_coroutines_core(boolean invokeImmediately, JobNode node) {
        boolean z;
        boolean addLast;
        node.setJob(this);
        while (true) {
            Object state$iv = getState$kotlinx_coroutines_core();
            z = true;
            if (state$iv instanceof Empty) {
                if (((Empty) state$iv).isActive()) {
                    if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state$iv, node)) {
                        break;
                    }
                } else {
                    promoteEmptyToNodeList((Empty) state$iv);
                }
            } else if (state$iv instanceof Incomplete) {
                NodeList list$iv = ((Incomplete) state$iv).getList();
                if (list$iv == null) {
                    Intrinsics.checkNotNull(state$iv, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    promoteSingleToNodeList((JobNode) state$iv);
                } else {
                    Incomplete state = (Incomplete) state$iv;
                    if (node.getOnCancelling()) {
                        Finishing finishing = state instanceof Finishing ? (Finishing) state : null;
                        Throwable rootCause = finishing != null ? finishing.getRootCause() : null;
                        if (rootCause == null) {
                            addLast = list$iv.addLast(node, 5);
                        } else {
                            if (invokeImmediately) {
                                node.invoke(rootCause);
                            }
                            return NonDisposableHandle.INSTANCE;
                        }
                    } else {
                        addLast = list$iv.addLast(node, 1);
                    }
                    if (addLast) {
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
        }
        boolean added = z;
        if (added) {
            return node;
        }
        if (invokeImmediately) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
            node.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
        }
        return NonDisposableHandle.INSTANCE;
    }

    private final boolean tryPutNodeIntoList(JobNode node, Function2<? super Incomplete, ? super NodeList, Boolean> function2) {
        while (true) {
            Object state = getState$kotlinx_coroutines_core();
            if (state instanceof Empty) {
                if (((Empty) state).isActive()) {
                    if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, node)) {
                        return true;
                    }
                } else {
                    promoteEmptyToNodeList((Empty) state);
                }
            } else if (state instanceof Incomplete) {
                NodeList list = ((Incomplete) state).getList();
                if (list == null) {
                    Intrinsics.checkNotNull(state, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    promoteSingleToNodeList((JobNode) state);
                } else if (function2.mo2029invoke(state, list).booleanValue()) {
                    return true;
                }
            } else {
                return false;
            }
        }
    }

    private final void promoteEmptyToNodeList(Empty state) {
        NodeList list = new NodeList();
        Incomplete update = state.isActive() ? list : new InactiveNodeList(list);
        AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, update);
    }

    private final void promoteSingleToNodeList(JobNode state) {
        state.addOneIfEmpty(new NodeList());
        LockFreeLinkedListNode list = state.getNextNode();
        AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, list);
    }

    @Override // kotlinx.coroutines.Job
    public final Object join(Continuation<? super Unit> continuation) {
        if (!joinInternal()) {
            JobKt.ensureActive(continuation.getContext());
            return Unit.INSTANCE;
        }
        Object joinSuspend = joinSuspend(continuation);
        return joinSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? joinSuspend : Unit.INSTANCE;
    }

    private final boolean joinInternal() {
        Object state;
        do {
            state = getState$kotlinx_coroutines_core();
            if (!(state instanceof Incomplete)) {
                return false;
            }
        } while (startInternal(state) < 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object joinSuspend(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellable$iv.initCancellability();
        CancellableContinuationImpl cont = cancellable$iv;
        CancellableContinuationKt.disposeOnCancellation(cont, JobKt.invokeOnCompletion$default(this, false, new ResumeOnCompletion(cont), 1, null));
        Object result = cancellable$iv.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    public final SelectClause0 getOnJoin() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onJoin$1, 3), null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerSelectForOnJoin(SelectInstance<?> selectInstance, Object ignoredParam) {
        if (!joinInternal()) {
            selectInstance.selectInRegistrationPhase(Unit.INSTANCE);
            return;
        }
        DisposableHandle disposableHandle = JobKt.invokeOnCompletion$default(this, false, new SelectOnJoinCompletionHandler(selectInstance), 1, null);
        selectInstance.disposeOnCompletion(disposableHandle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "onCancelling", "", "getOnCancelling", "()Z", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public final class SelectOnJoinCompletionHandler extends JobNode {
        private final SelectInstance<?> select;

        public SelectOnJoinCompletionHandler(SelectInstance<?> selectInstance) {
            this.select = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(Throwable cause) {
            this.select.trySelect(JobSupport.this, Unit.INSTANCE);
        }
    }

    public final void removeNode$kotlinx_coroutines_core(JobNode node) {
        Object state;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Empty empty;
        do {
            state = getState$kotlinx_coroutines_core();
            if (state instanceof JobNode) {
                if (state != node) {
                    return;
                }
                atomicReferenceFieldUpdater = _state$volatile$FU;
                empty = JobSupportKt.EMPTY_ACTIVE;
            } else if (!(state instanceof Incomplete) || ((Incomplete) state).getList() == null) {
                return;
            } else {
                node.mo2335remove();
                return;
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, state, empty));
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cause) {
        JobCancellationException jobCancellationException;
        if (cause != null) {
            jobCancellationException = cause;
        } else {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    @Override // kotlinx.coroutines.Job
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean cancel(Throwable cause) {
        JobCancellationException jobCancellationException;
        if (cause == null || (jobCancellationException = toCancellationException$default(this, cause, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(jobCancellationException);
        return true;
    }

    public void cancelInternal(Throwable cause) {
        cancelImpl$kotlinx_coroutines_core(cause);
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(ParentJob parentJob) {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    public boolean childCancelled(Throwable cause) {
        if (cause instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(cause) && getHandlesException$kotlinx_coroutines_core();
    }

    public final boolean cancelCoroutine(Throwable cause) {
        return cancelImpl$kotlinx_coroutines_core(cause);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(Object cause) {
        Object finalState;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        finalState = JobSupportKt.COMPLETING_ALREADY;
        if (!getOnCancelComplete$kotlinx_coroutines_core() || (finalState = cancelMakeCompleting(cause)) != JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            symbol = JobSupportKt.COMPLETING_ALREADY;
            if (finalState == symbol) {
                finalState = makeCancelling(cause);
            }
            symbol2 = JobSupportKt.COMPLETING_ALREADY;
            if (finalState == symbol2 || finalState == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
            symbol3 = JobSupportKt.TOO_LATE_TO_CANCEL;
            if (finalState == symbol3) {
                return false;
            }
            afterCompletion(finalState);
            return true;
        }
        return true;
    }

    private final Object cancelMakeCompleting(Object cause) {
        Symbol symbol;
        Object finalState;
        Symbol symbol2;
        do {
            Object state = getState$kotlinx_coroutines_core();
            if (!(state instanceof Incomplete) || ((state instanceof Finishing) && ((Finishing) state).isCompleting())) {
                symbol = JobSupportKt.COMPLETING_ALREADY;
                return symbol;
            }
            CompletedExceptionally proposedUpdate = new CompletedExceptionally(createCauseException(cause), false, 2, null);
            finalState = tryMakeCompleting(state, proposedUpdate);
            symbol2 = JobSupportKt.COMPLETING_RETRY;
        } while (finalState == symbol2);
        return finalState;
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport $this, String message, Throwable cause, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                message = null;
            }
            if ((i & 2) != 0) {
                cause = null;
            }
            return new JobCancellationException(message == null ? $this.cancellationExceptionMessage() : message, cause, $this);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
    }

    public final JobCancellationException defaultCancellationException$kotlinx_coroutines_core(String message, Throwable cause) {
        return new JobCancellationException(message == null ? cancellationExceptionMessage() : message, cause, this);
    }

    @Override // kotlinx.coroutines.ParentJob
    public CancellationException getChildJobCancellationCause() {
        Throwable rootCause;
        Object state = getState$kotlinx_coroutines_core();
        CancellationException cancellationException = null;
        if (state instanceof Finishing) {
            rootCause = ((Finishing) state).getRootCause();
        } else if (state instanceof CompletedExceptionally) {
            rootCause = ((CompletedExceptionally) state).cause;
        } else if (state instanceof Incomplete) {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + state).toString());
        } else {
            rootCause = null;
        }
        if (rootCause instanceof CancellationException) {
            cancellationException = rootCause;
        }
        return cancellationException == null ? new JobCancellationException("Parent job is " + stateString(state), rootCause, this) : cancellationException;
    }

    private final Throwable createCauseException(Object cause) {
        if (!(cause == null ? true : cause instanceof Throwable)) {
            Intrinsics.checkNotNull(cause, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
            return ((ParentJob) cause).getChildJobCancellationCause();
        }
        Throwable th = (Throwable) cause;
        if (th != null) {
            return th;
        }
        return new JobCancellationException(cancellationExceptionMessage(), null, this);
    }

    private final Object makeCancelling(Object cause) {
        Throwable th;
        Symbol symbol;
        Symbol symbol2;
        Object causeExceptionCache;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Throwable th2 = null;
        while (true) {
            Throwable causeException = th2;
            Object state = getState$kotlinx_coroutines_core();
            Throwable th3 = null;
            boolean z = false;
            if (state instanceof Finishing) {
                synchronized (state) {
                    try {
                        if (((Finishing) state).isSealed()) {
                            symbol2 = JobSupportKt.TOO_LATE_TO_CANCEL;
                            return symbol2;
                        }
                        boolean wasCancelling = ((Finishing) state).isCancelling();
                        if (cause != null || !wasCancelling) {
                            if (causeException == null) {
                                Throwable it = createCauseException(cause);
                                th = it;
                                causeException = it;
                            } else {
                                th = causeException;
                            }
                            try {
                                ((Finishing) state).addExceptionLocked(causeException);
                            } catch (Throwable th4) {
                                notifyRootCause = th4;
                                throw notifyRootCause;
                            }
                        }
                        Throwable rootCause = ((Finishing) state).getRootCause();
                        if (!wasCancelling) {
                            z = true;
                        }
                        if (z) {
                            th3 = rootCause;
                        }
                        Throwable notifyRootCause = th3;
                        if (notifyRootCause != null) {
                            notifyCancelling(((Finishing) state).getList(), notifyRootCause);
                        }
                        symbol = JobSupportKt.COMPLETING_ALREADY;
                        return symbol;
                    } catch (Throwable th5) {
                        notifyRootCause = th5;
                    }
                }
            } else if (!(state instanceof Incomplete)) {
                causeExceptionCache = JobSupportKt.TOO_LATE_TO_CANCEL;
                return causeExceptionCache;
            } else {
                if (causeException == null) {
                    Throwable it2 = createCauseException(cause);
                    causeException = it2;
                    th2 = it2;
                } else {
                    th2 = causeException;
                }
                if (!((Incomplete) state).isActive()) {
                    Object finalState = tryMakeCompleting(state, new CompletedExceptionally(causeException, false, 2, null));
                    symbol3 = JobSupportKt.COMPLETING_ALREADY;
                    if (finalState == symbol3) {
                        throw new IllegalStateException(("Cannot happen in " + state).toString());
                    }
                    symbol4 = JobSupportKt.COMPLETING_RETRY;
                    if (finalState != symbol4) {
                        return finalState;
                    }
                } else if (tryMakeCancelling((Incomplete) state, causeException)) {
                    symbol5 = JobSupportKt.COMPLETING_ALREADY;
                    return symbol5;
                }
            }
        }
    }

    private final NodeList getOrPromoteCancellingList(Incomplete state) {
        NodeList list = state.getList();
        if (list == null) {
            if (state instanceof Empty) {
                return new NodeList();
            }
            if (state instanceof JobNode) {
                promoteSingleToNodeList((JobNode) state);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + state).toString());
        }
        return list;
    }

    private final boolean tryMakeCancelling(Incomplete state, Throwable rootCause) {
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(state instanceof Finishing)) != 0) {
            if (DebugKt.getASSERTIONS_ENABLED() && !state.isActive()) {
                throw new AssertionError();
            }
            NodeList list = getOrPromoteCancellingList(state);
            if (list == null) {
                return false;
            }
            Finishing cancelling = new Finishing(list, false, rootCause);
            if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, cancelling)) {
                return false;
            }
            notifyCancelling(list, rootCause);
            return true;
        }
        throw new AssertionError();
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object proposedUpdate) {
        Object finalState;
        Symbol symbol;
        Symbol symbol2;
        do {
            Object state = getState$kotlinx_coroutines_core();
            finalState = tryMakeCompleting(state, proposedUpdate);
            symbol = JobSupportKt.COMPLETING_ALREADY;
            if (finalState == symbol) {
                return false;
            }
            if (finalState == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
            symbol2 = JobSupportKt.COMPLETING_RETRY;
        } while (finalState == symbol2);
        afterCompletion(finalState);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object proposedUpdate) {
        Object finalState;
        Symbol symbol;
        Symbol symbol2;
        do {
            Object state = getState$kotlinx_coroutines_core();
            finalState = tryMakeCompleting(state, proposedUpdate);
            symbol = JobSupportKt.COMPLETING_ALREADY;
            if (finalState != symbol) {
                symbol2 = JobSupportKt.COMPLETING_RETRY;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + proposedUpdate, getExceptionOrNull(proposedUpdate));
            }
        } while (finalState == symbol2);
        return finalState;
    }

    private final Object tryMakeCompleting(Object state, Object proposedUpdate) {
        Symbol symbol;
        Symbol symbol2;
        if (!(state instanceof Incomplete)) {
            symbol2 = JobSupportKt.COMPLETING_ALREADY;
            return symbol2;
        } else if (((state instanceof Empty) || (state instanceof JobNode)) && !(state instanceof ChildHandleNode) && !(proposedUpdate instanceof CompletedExceptionally)) {
            if (!tryFinalizeSimpleState((Incomplete) state, proposedUpdate)) {
                symbol = JobSupportKt.COMPLETING_RETRY;
                return symbol;
            }
            return proposedUpdate;
        } else {
            return tryMakeCompletingSlowPath((Incomplete) state, proposedUpdate);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object tryMakeCompletingSlowPath(Incomplete state, Object proposedUpdate) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        NodeList list = getOrPromoteCancellingList(state);
        if (list == null) {
            symbol3 = JobSupportKt.COMPLETING_RETRY;
            return symbol3;
        }
        T t = 0;
        Finishing finishing = state instanceof Finishing ? (Finishing) state : null;
        boolean z = false;
        if (finishing == null) {
            finishing = new Finishing(list, false, null);
        }
        Ref.ObjectRef notifyRootCause = new Ref.ObjectRef();
        synchronized (finishing) {
            if (finishing.isCompleting()) {
                symbol2 = JobSupportKt.COMPLETING_ALREADY;
                return symbol2;
            }
            finishing.setCompleting(true);
            if (finishing != state && !AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state, finishing)) {
                symbol = JobSupportKt.COMPLETING_RETRY;
                return symbol;
            }
            if (DebugKt.getASSERTIONS_ENABLED() && (!finishing.isSealed()) == 0) {
                throw new AssertionError();
            }
            boolean wasCancelling = finishing.isCancelling();
            CompletedExceptionally it = proposedUpdate instanceof CompletedExceptionally ? (CompletedExceptionally) proposedUpdate : null;
            if (it != null) {
                finishing.addExceptionLocked(it.cause);
            }
            Throwable rootCause = finishing.getRootCause();
            if (!wasCancelling) {
                z = true;
            }
            if (Boolean.valueOf(z).booleanValue()) {
                t = rootCause;
            }
            notifyRootCause.element = t;
            Unit unit = Unit.INSTANCE;
            Throwable it2 = (Throwable) notifyRootCause.element;
            if (it2 != null) {
                notifyCancelling(list, it2);
            }
            ChildHandleNode child = nextChild(list);
            if (child != null && tryWaitForChild(finishing, child, proposedUpdate)) {
                return JobSupportKt.COMPLETING_WAITING_CHILDREN;
            }
            list.close(2);
            ChildHandleNode anotherChild = nextChild(list);
            return (anotherChild == null || !tryWaitForChild(finishing, anotherChild, proposedUpdate)) ? finalizeFinishingState(finishing, proposedUpdate) : JobSupportKt.COMPLETING_WAITING_CHILDREN;
        }
    }

    private final Throwable getExceptionOrNull(Object $this$exceptionOrNull) {
        CompletedExceptionally completedExceptionally = $this$exceptionOrNull instanceof CompletedExceptionally ? (CompletedExceptionally) $this$exceptionOrNull : null;
        if (completedExceptionally != null) {
            return completedExceptionally.cause;
        }
        return null;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0014 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean tryWaitForChild(kotlinx.coroutines.JobSupport.Finishing r4, kotlinx.coroutines.ChildHandleNode r5, java.lang.Object r6) {
        /*
            r3 = this;
        L1:
            kotlinx.coroutines.ChildJob r0 = r5.childJob
            kotlinx.coroutines.Job r0 = (kotlinx.coroutines.Job) r0
            kotlinx.coroutines.JobSupport$ChildCompletion r1 = new kotlinx.coroutines.JobSupport$ChildCompletion
            r1.<init>(r3, r4, r5, r6)
            kotlinx.coroutines.JobNode r1 = (kotlinx.coroutines.JobNode) r1
            r2 = 0
            kotlinx.coroutines.DisposableHandle r0 = kotlinx.coroutines.JobKt.invokeOnCompletion(r0, r2, r1)
            kotlinx.coroutines.NonDisposableHandle r1 = kotlinx.coroutines.NonDisposableHandle.INSTANCE
            if (r0 == r1) goto L18
            r1 = 1
            return r1
        L18:
            r1 = r5
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            kotlinx.coroutines.ChildHandleNode r1 = r3.nextChild(r1)
            if (r1 != 0) goto L22
            return r2
        L22:
            r5 = r1
            goto L1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.tryWaitForChild(kotlinx.coroutines.JobSupport$Finishing, kotlinx.coroutines.ChildHandleNode, java.lang.Object):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void continueCompleting(Finishing state, ChildHandleNode lastChild, Object proposedUpdate) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getState$kotlinx_coroutines_core() == state)) {
                throw new AssertionError();
            }
        }
        ChildHandleNode waitChild = nextChild(lastChild);
        if (waitChild == null || !tryWaitForChild(state, waitChild, proposedUpdate)) {
            state.getList().close(2);
            ChildHandleNode waitChildAgain = nextChild(lastChild);
            if (waitChildAgain != null && tryWaitForChild(state, waitChildAgain, proposedUpdate)) {
                return;
            }
            Object finalState = finalizeFinishingState(state, proposedUpdate);
            afterCompletion(finalState);
        }
    }

    private final ChildHandleNode nextChild(LockFreeLinkedListNode $this$nextChild) {
        LockFreeLinkedListNode cur = $this$nextChild;
        while (cur.isRemoved()) {
            cur = cur.getPrevNode();
        }
        while (true) {
            cur = cur.getNextNode();
            if (!cur.isRemoved()) {
                if (cur instanceof ChildHandleNode) {
                    return (ChildHandleNode) cur;
                }
                if (cur instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.Job
    public final Sequence<Job> getChildren() {
        return SequencesKt.sequence(new JobSupport$children$1(this, null));
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle attachChild(ChildJob child) {
        int i;
        Throwable rootCause;
        ChildHandleNode node = new ChildHandleNode(child);
        node.setJob(this);
        while (true) {
            Object state$iv = getState$kotlinx_coroutines_core();
            if (state$iv instanceof Empty) {
                if (((Empty) state$iv).isActive()) {
                    if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$volatile$FU, this, state$iv, node)) {
                        i = 1;
                        break;
                    }
                } else {
                    promoteEmptyToNodeList((Empty) state$iv);
                }
            } else if (state$iv instanceof Incomplete) {
                NodeList list$iv = ((Incomplete) state$iv).getList();
                if (list$iv == null) {
                    Intrinsics.checkNotNull(state$iv, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    promoteSingleToNodeList((JobNode) state$iv);
                } else {
                    Incomplete incomplete = (Incomplete) state$iv;
                    boolean addedBeforeCancellation = list$iv.addLast(node, 7);
                    if (addedBeforeCancellation) {
                        i = 1;
                    } else {
                        boolean addedBeforeCompletion = list$iv.addLast(node, 3);
                        Object latestState = getState$kotlinx_coroutines_core();
                        if (latestState instanceof Finishing) {
                            rootCause = ((Finishing) latestState).getRootCause();
                            i = 1;
                        } else {
                            if (DebugKt.getASSERTIONS_ENABLED()) {
                                i = 1;
                                if (!(!(latestState instanceof Incomplete))) {
                                    throw new AssertionError();
                                }
                            } else {
                                i = 1;
                            }
                            CompletedExceptionally completedExceptionally = latestState instanceof CompletedExceptionally ? (CompletedExceptionally) latestState : null;
                            rootCause = completedExceptionally != null ? completedExceptionally.cause : null;
                        }
                        node.invoke(rootCause);
                        if (addedBeforeCompletion) {
                            if (DebugKt.getASSERTIONS_ENABLED()) {
                                if ((rootCause != null ? i : 0) == 0) {
                                    throw new AssertionError();
                                }
                            }
                        } else {
                            return NonDisposableHandle.INSTANCE;
                        }
                    }
                }
            } else {
                i = 0;
                break;
            }
        }
        int added = i;
        if (added != 0) {
            return node;
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        CompletedExceptionally completedExceptionally2 = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
        node.invoke(completedExceptionally2 != null ? completedExceptionally2.cause : null);
        return NonDisposableHandle.INSTANCE;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable exception) {
        throw exception;
    }

    protected void onCancelling(Throwable cause) {
    }

    protected boolean isScopedCoroutine() {
        return false;
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    protected boolean handleJobException(Throwable exception) {
        return false;
    }

    protected void onCompletionInternal(Object state) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void afterCompletion(Object state) {
    }

    public String toString() {
        return toDebugString() + '@' + DebugStringsKt.getHexAddress(this);
    }

    public final String toDebugString() {
        return nameString$kotlinx_coroutines_core() + '{' + stateString(getState$kotlinx_coroutines_core()) + '}';
    }

    public String nameString$kotlinx_coroutines_core() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    private final String stateString(Object state) {
        return state instanceof Finishing ? ((Finishing) state).isCancelling() ? "Cancelling" : ((Finishing) state).isCompleting() ? "Completing" : "Active" : state instanceof Incomplete ? ((Incomplete) state).isActive() ? "Active" : "New" : state instanceof CompletedExceptionally ? "Cancelled" : "Completed";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00060\u0002j\u0002`\u00012\u00020\u0003B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\t0$2\b\u0010%\u001a\u0004\u0018\u00010\tJ\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\tJ\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00020\t0*H\u0002J\b\u0010+\u001a\u00020,H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\t\u0010\u000e\u001a\u00020\u000fX\u0082\u0004R$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0015X\u0082\u0004R(\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0015X\u0082\u0004R(\u0010\u001b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u00028B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b \u0010\u0011R\u0011\u0010!\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b!\u0010\u0011R\u0014\u0010\"\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u0011¨\u0006-"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", "Lkotlinx/coroutines/Incomplete;", "list", "Lkotlinx/coroutines/NodeList;", "isCompleting", "", "rootCause", "", "<init>", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "getList", "()Lkotlinx/coroutines/NodeList;", "_isCompleting", "Lkotlinx/atomicfu/AtomicBoolean;", "value", "()Z", "setCompleting", "(Z)V", "_rootCause", "Lkotlinx/atomicfu/AtomicRef;", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "(Ljava/lang/Throwable;)V", "_exceptionsHolder", "exceptionsHolder", "getExceptionsHolder", "()Ljava/lang/Object;", "setExceptionsHolder", "(Ljava/lang/Object;)V", "isSealed", "isCancelling", "isActive", "sealLocked", "", "proposedException", "addExceptionLocked", "", "exception", "allocateList", "Ljava/util/ArrayList;", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public static final class Finishing implements Incomplete {
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;
        private final NodeList list;
        private static final /* synthetic */ AtomicIntegerFieldUpdater _isCompleting$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Finishing.class, "_isCompleting$volatile");
        private static final /* synthetic */ AtomicReferenceFieldUpdater _rootCause$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_rootCause$volatile");
        private static final /* synthetic */ AtomicReferenceFieldUpdater _exceptionsHolder$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_exceptionsHolder$volatile");

        private final /* synthetic */ Object get_exceptionsHolder$volatile() {
            return this._exceptionsHolder$volatile;
        }

        private final /* synthetic */ int get_isCompleting$volatile() {
            return this._isCompleting$volatile;
        }

        private final /* synthetic */ Object get_rootCause$volatile() {
            return this._rootCause$volatile;
        }

        private final /* synthetic */ void set_exceptionsHolder$volatile(Object obj) {
            this._exceptionsHolder$volatile = obj;
        }

        private final /* synthetic */ void set_isCompleting$volatile(int i) {
            this._isCompleting$volatile = i;
        }

        private final /* synthetic */ void set_rootCause$volatile(Object obj) {
            this._rootCause$volatile = obj;
        }

        @Override // kotlinx.coroutines.Incomplete
        public NodeList getList() {
            return this.list;
        }

        public Finishing(NodeList list, boolean isCompleting, Throwable rootCause) {
            this.list = list;
            this._isCompleting$volatile = isCompleting ? 1 : 0;
            this._rootCause$volatile = rootCause;
        }

        public final boolean isCompleting() {
            return _isCompleting$volatile$FU.get(this) != 0;
        }

        public final void setCompleting(boolean value) {
            _isCompleting$volatile$FU.set(this, value ? 1 : 0);
        }

        public final Throwable getRootCause() {
            return (Throwable) _rootCause$volatile$FU.get(this);
        }

        public final void setRootCause(Throwable value) {
            _rootCause$volatile$FU.set(this, value);
        }

        private final Object getExceptionsHolder() {
            return _exceptionsHolder$volatile$FU.get(this);
        }

        private final void setExceptionsHolder(Object value) {
            _exceptionsHolder$volatile$FU.set(this, value);
        }

        public final boolean isSealed() {
            Symbol symbol;
            Object exceptionsHolder = getExceptionsHolder();
            symbol = JobSupportKt.SEALED;
            return exceptionsHolder == symbol;
        }

        public final boolean isCancelling() {
            return getRootCause() != null;
        }

        @Override // kotlinx.coroutines.Incomplete
        public boolean isActive() {
            return getRootCause() == null;
        }

        public final List<Throwable> sealLocked(Throwable proposedException) {
            ArrayList arrayList;
            Symbol symbol;
            Object eh = getExceptionsHolder();
            if (eh == null) {
                arrayList = allocateList();
            } else if (eh instanceof Throwable) {
                arrayList = allocateList();
                arrayList.add(eh);
            } else if (!(eh instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + eh).toString());
            } else {
                arrayList = (ArrayList) eh;
            }
            ArrayList list = arrayList;
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                list.add(0, rootCause);
            }
            if (proposedException != null && !Intrinsics.areEqual(proposedException, rootCause)) {
                list.add(proposedException);
            }
            symbol = JobSupportKt.SEALED;
            setExceptionsHolder(symbol);
            return list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void addExceptionLocked(Throwable exception) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                setRootCause(exception);
            } else if (exception == rootCause) {
            } else {
                Object eh = getExceptionsHolder();
                if (eh != null) {
                    if (eh instanceof Throwable) {
                        if (exception == eh) {
                            return;
                        }
                        ArrayList $this$addExceptionLocked_u24lambda_u242 = allocateList();
                        $this$addExceptionLocked_u24lambda_u242.add(eh);
                        $this$addExceptionLocked_u24lambda_u242.add(exception);
                        setExceptionsHolder($this$addExceptionLocked_u24lambda_u242);
                        return;
                    } else if (!(eh instanceof ArrayList)) {
                        throw new IllegalStateException(("State is " + eh).toString());
                    } else {
                        ((ArrayList) eh).add(exception);
                        return;
                    }
                }
                setExceptionsHolder(exception);
            }
        }

        private final ArrayList<Throwable> allocateList() {
            return new ArrayList<>(4);
        }

        public String toString() {
            return "Finishing[cancelling=" + isCancelling() + ", completing=" + isCompleting() + ", rootCause=" + getRootCause() + ", exceptions=" + getExceptionsHolder() + ", list=" + getList() + ']';
        }
    }

    private final boolean isCancelling(Incomplete $this$isCancelling) {
        return ($this$isCancelling instanceof Finishing) && ((Finishing) $this$isCancelling).isCancelling();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "parent", "Lkotlinx/coroutines/JobSupport;", "state", "Lkotlinx/coroutines/JobSupport$Finishing;", "child", "Lkotlinx/coroutines/ChildHandleNode;", "proposedUpdate", "", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "onCancelling", "", "getOnCancelling", "()Z", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public static final class ChildCompletion extends JobNode {
        private final ChildHandleNode child;
        private final JobSupport parent;
        private final Object proposedUpdate;
        private final Finishing state;

        public ChildCompletion(JobSupport parent, Finishing state, ChildHandleNode child, Object proposedUpdate) {
            this.parent = parent;
            this.state = state;
            this.child = child;
            this.proposedUpdate = proposedUpdate;
        }

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(Throwable cause) {
            this.parent.continueCompleting(this.state, this.child, this.proposedUpdate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", "T", "Lkotlinx/coroutines/CancellableContinuationImpl;", "delegate", "Lkotlin/coroutines/Continuation;", "job", "Lkotlinx/coroutines/JobSupport;", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "getContinuationCancellationCause", "", "parent", "Lkotlinx/coroutines/Job;", "nameString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        private final JobSupport job;

        public AwaitContinuation(Continuation<? super T> continuation, JobSupport job) {
            super(continuation, 1);
            this.job = job;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public Throwable getContinuationCancellationCause(Job parent) {
            Throwable it;
            Object state = this.job.getState$kotlinx_coroutines_core();
            if (!(state instanceof Finishing) || (it = ((Finishing) state).getRootCause()) == null) {
                return state instanceof CompletedExceptionally ? ((CompletedExceptionally) state).cause : parent.getCancellationException();
            }
            return it;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        protected String nameString() {
            return "AwaitContinuation";
        }
    }

    public final boolean isCompletedExceptionally() {
        return getState$kotlinx_coroutines_core() instanceof CompletedExceptionally;
    }

    public final Throwable getCompletionExceptionOrNull() {
        Object state = getState$kotlinx_coroutines_core();
        if (!(state instanceof Incomplete)) {
            return getExceptionOrNull(state);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state = getState$kotlinx_coroutines_core();
        if (!(state instanceof Incomplete)) {
            if (state instanceof CompletedExceptionally) {
                throw ((CompletedExceptionally) state).cause;
            }
            return JobSupportKt.unboxState(state);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object awaitInternal(Continuation<Object> continuation) {
        Object state;
        do {
            state = getState$kotlinx_coroutines_core();
            if (!(state instanceof Incomplete)) {
                if (state instanceof CompletedExceptionally) {
                    Throwable exception$iv = ((CompletedExceptionally) state).cause;
                    if (!DebugKt.getRECOVER_STACK_TRACES()) {
                        throw exception$iv;
                    }
                    if (continuation instanceof CoroutineStackFrame) {
                        throw StackTraceRecoveryKt.recoverFromStackFrame(exception$iv, (CoroutineStackFrame) continuation);
                    }
                    throw exception$iv;
                }
                return JobSupportKt.unboxState(state);
            }
        } while (startInternal(state) < 0);
        return awaitSuspend(continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitSuspend(Continuation<Object> continuation) {
        AwaitContinuation cont = new AwaitContinuation(IntrinsicsKt.intercepted(continuation), this);
        cont.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(cont, JobKt.invokeOnCompletion$default(this, false, new ResumeAwaitOnCompletion(cont), 1, null));
        Object result = cont.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SelectClause1<?> getOnAwaitInternal() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.INSTANCE;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAwaitInternalRegFunc(SelectInstance<?> selectInstance, Object ignoredParam) {
        Object state;
        do {
            state = getState$kotlinx_coroutines_core();
            if (!(state instanceof Incomplete)) {
                Object result = state instanceof CompletedExceptionally ? state : JobSupportKt.unboxState(state);
                selectInstance.selectInRegistrationPhase(result);
                return;
            }
        } while (startInternal(state) < 0);
        DisposableHandle disposableHandle = JobKt.invokeOnCompletion$default(this, false, new SelectOnAwaitCompletionHandler(selectInstance), 1, null);
        selectInstance.disposeOnCompletion(disposableHandle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object onAwaitInternalProcessResFunc(Object ignoredParam, Object result) {
        if (result instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) result).cause;
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<init>", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "onCancelling", "", "getOnCancelling", "()Z", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public final class SelectOnAwaitCompletionHandler extends JobNode {
        private final SelectInstance<?> select;

        public SelectOnAwaitCompletionHandler(SelectInstance<?> selectInstance) {
            this.select = selectInstance;
        }

        @Override // kotlinx.coroutines.JobNode
        public boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public void invoke(Throwable cause) {
            Object state = JobSupport.this.getState$kotlinx_coroutines_core();
            Object result = state instanceof CompletedExceptionally ? state : JobSupportKt.unboxState(state);
            this.select.trySelect(JobSupport.this, result);
        }
    }
}
