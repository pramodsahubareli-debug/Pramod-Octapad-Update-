package kotlin.time;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ULong$$ExternalSyntheticBackport0;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
/* compiled from: Duration.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087@\u0018\u0000 ¦\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002¦\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0003H\u0002ø\u0001\u0000¢\u0006\u0004\bG\u0010HJ\u0018\u0010I\u001a\u00020\t2\u0006\u0010J\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\bK\u0010LJ\u001b\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bO\u0010PJ\u001b\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bO\u0010QJ\u0018\u0010M\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\bR\u0010SJ\u001a\u0010T\u001a\u00020U2\b\u0010J\u001a\u0004\u0018\u00010VHÖ\u0003¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020\tHÖ\u0001¢\u0006\u0004\bZ\u0010\rJ\r\u0010[\u001a\u00020U¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020UH\u0002¢\u0006\u0004\b_\u0010]J\u000f\u0010`\u001a\u00020UH\u0002¢\u0006\u0004\ba\u0010]J\r\u0010b\u001a\u00020U¢\u0006\u0004\bc\u0010]J\r\u0010d\u001a\u00020U¢\u0006\u0004\be\u0010]J\r\u0010f\u001a\u00020U¢\u0006\u0004\bg\u0010]J\u0018\u0010h\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\bi\u0010jJ\u0018\u0010k\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\bl\u0010jJ\u001b\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bn\u0010PJ\u001b\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bn\u0010QJ\u009d\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2u\u0010q\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(u\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0rH\u0086\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010{J\u0088\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2`\u0010q\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0|H\u0086\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010}Js\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2K\u0010q\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0~H\u0086\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010\u007fJ`\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p27\u0010q\u001a3\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0\u0080\u0001H\u0086\bø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0005\bz\u0010\u0081\u0001J\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0019\u0010\u0086\u0001\u001a\u00020\t2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00030\u008a\u0001¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0019\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u0011\u0010\u0090\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0091\u0001\u0010\u0005J\u0011\u0010\u0092\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0093\u0001\u0010\u0005J\u0013\u0010\u0094\u0001\u001a\u00030\u008a\u0001H\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u008c\u0001J%\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u0083\u0001\u001a\u00020=2\t\b\u0002\u0010\u0096\u0001\u001a\u00020\t¢\u0006\u0006\b\u0095\u0001\u0010\u0097\u0001J\u001e\u0010\u0098\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020=H\u0000ø\u0001\u0000¢\u0006\u0006\b\u0099\u0001\u0010\u008f\u0001J\u0015\u0010\u009a\u0001\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0005\b\u009b\u0001\u0010\u0005JK\u0010\u009c\u0001\u001a\u00030\u009d\u0001*\b0\u009e\u0001j\u0003`\u009f\u00012\u0007\u0010 \u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\t2\u0007\u0010¢\u0001\u001a\u00020\t2\b\u0010\u0083\u0001\u001a\u00030\u008a\u00012\u0007\u0010£\u0001\u001a\u00020UH\u0002¢\u0006\u0006\b¤\u0001\u0010¥\u0001R\u0014\u0010\u0006\u001a\u00020\u00008Fø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\u0012R\u0011\u0010%\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b&\u0010\u0005R\u0011\u0010'\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b(\u0010\u0005R\u0011\u0010)\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b*\u0010\u0005R\u0011\u0010+\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b,\u0010\u0005R\u0011\u0010-\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b.\u0010\u0005R\u0011\u0010/\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b0\u0010\u0005R\u0011\u00101\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b2\u0010\u0005R\u001a\u00103\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b4\u0010\u000b\u001a\u0004\b5\u0010\rR\u001a\u00106\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b7\u0010\u000b\u001a\u0004\b8\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b:\u0010\u000b\u001a\u0004\b;\u0010\rR\u0014\u0010<\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0015\u0010@\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\rR\u0014\u0010B\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u000b\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006§\u0001"}, d2 = {"Lkotlin/time/Duration;", "", "rawValue", "", "constructor-impl", "(J)J", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", "", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(J)I", "inDays", "", "getInDays$annotations", "getInDays-impl", "(J)D", "inHours", "getInHours$annotations", "getInHours-impl", "inMicroseconds", "getInMicroseconds$annotations", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds$annotations", "getInMilliseconds-impl", "inMinutes", "getInMinutes$annotations", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds$annotations", "getInNanoseconds-impl", "inSeconds", "getInSeconds$annotations", "getInSeconds-impl", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "inWholeSeconds", "getInWholeSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unitDiscriminator", "getUnitDiscriminator-impl", "value", "getValue-impl", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "compareTo", "other", "compareTo-LRDsOJo", "(JJ)I", "div", "scale", "div-UwyO8pc", "(JD)J", "(JI)J", "div-LRDsOJo", "(JJ)D", "equals", "", "", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "isFinite", "isFinite-impl", "(J)Z", "isInMillis", "isInMillis-impl", "isInNanos", "isInNanos-impl", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "times", "times-UwyO8pc", "toComponents", "T", "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "toIsoString", "", "toIsoString-impl", "(J)Ljava/lang/String;", "toLong", "toLong-impl", "(JLkotlin/time/DurationUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "truncateTo", "truncateTo-UwyO8pc$kotlin_stdlib", "unaryMinus", "unaryMinus-UwyO8pc", "appendFractional", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmInline
/* loaded from: classes4.dex */
public final class Duration implements Comparable<Duration> {
    private final long rawValue;
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m2076constructorimpl(0);
    private static final long INFINITE = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.access$durationOfMillis(-4611686018427387903L);

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m2074boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2080equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m2131unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2081equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    @Deprecated(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInDays$annotations() {
    }

    @Deprecated(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInHours$annotations() {
    }

    @Deprecated(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInMicroseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInMilliseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInMinutes$annotations() {
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInNanoseconds$annotations() {
    }

    @Deprecated(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.5")
    public static /* synthetic */ void getInSeconds$annotations() {
    }

    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2104hashCodeimpl(long j) {
        return ULong$$ExternalSyntheticBackport0.m(j);
    }

    public boolean equals(Object obj) {
        return m2080equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m2104hashCodeimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2131unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m2130compareToLRDsOJo(duration.m2131unboximpl());
    }

    private /* synthetic */ Duration(long rawValue) {
        this.rawValue = rawValue;
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m2103getValueimpl(long arg0) {
        return arg0 >> 1;
    }

    /* renamed from: getUnitDiscriminator-impl  reason: not valid java name */
    private static final int m2102getUnitDiscriminatorimpl(long arg0) {
        return ((int) arg0) & 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m2107isInNanosimpl(long arg0) {
        return (((int) arg0) & 1) == 0;
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m2106isInMillisimpl(long arg0) {
        return (((int) arg0) & 1) == 1;
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final DurationUnit m2101getStorageUnitimpl(long arg0) {
        return m2107isInNanosimpl(arg0) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2076constructorimpl(long rawValue) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            boolean z = true;
            if (m2107isInNanosimpl(rawValue)) {
                long m2103getValueimpl = m2103getValueimpl(rawValue);
                if (-4611686018426999999L > m2103getValueimpl || m2103getValueimpl >= 4611686018427000000L) {
                    z = false;
                }
                if (!z) {
                    throw new AssertionError(m2103getValueimpl(rawValue) + " ns is out of nanoseconds range");
                }
            } else {
                long m2103getValueimpl2 = m2103getValueimpl(rawValue);
                if (!(-4611686018427387903L <= m2103getValueimpl2 && m2103getValueimpl2 < 4611686018427387904L)) {
                    throw new AssertionError(m2103getValueimpl(rawValue) + " ms is out of milliseconds range");
                }
                long m2103getValueimpl3 = m2103getValueimpl(rawValue);
                if (-4611686018426L > m2103getValueimpl3 || m2103getValueimpl3 >= 4611686018427L) {
                    z = false;
                }
                if (z) {
                    throw new AssertionError(m2103getValueimpl(rawValue) + " ms is denormalized");
                }
            }
        }
        return rawValue;
    }

    /* compiled from: Duration.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0007J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0011J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0014J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0011J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0014J\u001a\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0017J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0011J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0014J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0017J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0011J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0014J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0017J\u001a\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0011J\u001a\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0014J\u001a\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0017J\u001a\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0011J\u001a\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0014J\u001a\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0017J\u0018\u00105\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0000¢\u0006\u0004\b7\u00108J\u0018\u00109\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0000¢\u0006\u0004\b:\u00108J\u0018\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0000¢\u0006\u0002\b<J\u0018\u0010=\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0000¢\u0006\u0002\b>J\u001a\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0011J\u001a\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0014J\u001a\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0017R\u0016\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0016\u0010\n\u001a\u00020\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\"\u0010\f\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\f\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014R\"\u0010\f\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u000e\u0010\u0016\u001a\u0004\b\u0010\u0010\u0017R\"\u0010\u0018\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u0011R\"\u0010\u0018\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0014R\"\u0010\u0018\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0017R\"\u0010\u001b\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001c\u0010\u000f\u001a\u0004\b\u001d\u0010\u0011R\"\u0010\u001b\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u0014R\"\u0010\u001b\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0017R\"\u0010\u001e\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010\u0011R\"\u0010\u001e\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010\u0014R\"\u0010\u001e\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0017R\"\u0010!\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u0010\u000f\u001a\u0004\b#\u0010\u0011R\"\u0010!\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u0010\u0013\u001a\u0004\b#\u0010\u0014R\"\u0010!\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0017R\"\u0010$\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b%\u0010\u000f\u001a\u0004\b&\u0010\u0011R\"\u0010$\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b%\u0010\u0013\u001a\u0004\b&\u0010\u0014R\"\u0010$\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0017R\"\u0010'\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b(\u0010\u000f\u001a\u0004\b)\u0010\u0011R\"\u0010'\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b(\u0010\u0013\u001a\u0004\b)\u0010\u0014R\"\u0010'\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0017\u0082\u0002\u0004\n\u0002\b!¨\u0006@"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()J", "J", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "ZERO", "getZERO-UwyO8pc", "days", "", "getDays-UwyO8pc$annotations", "(D)V", "getDays-UwyO8pc", "(D)J", "", "(I)V", "(I)J", "", "(J)V", "(J)J", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "nanoseconds", "getNanoseconds-UwyO8pc$annotations", "getNanoseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "convert", "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "days-UwyO8pc", "hours-UwyO8pc", "microseconds-UwyO8pc", "milliseconds-UwyO8pc", "minutes-UwyO8pc", "nanoseconds-UwyO8pc", "parse", "", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "parseOrNull", "parseOrNull-FghU774", "seconds-UwyO8pc", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2135getDaysUwyO8pc$annotations(double d) {
        }

        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2136getDaysUwyO8pc$annotations(int i) {
        }

        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2137getDaysUwyO8pc$annotations(long j) {
        }

        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2141getHoursUwyO8pc$annotations(double d) {
        }

        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2142getHoursUwyO8pc$annotations(int i) {
        }

        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2143getHoursUwyO8pc$annotations(long j) {
        }

        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2147getMicrosecondsUwyO8pc$annotations(double d) {
        }

        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2148getMicrosecondsUwyO8pc$annotations(int i) {
        }

        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2149getMicrosecondsUwyO8pc$annotations(long j) {
        }

        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2153getMillisecondsUwyO8pc$annotations(double d) {
        }

        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2154getMillisecondsUwyO8pc$annotations(int i) {
        }

        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2155getMillisecondsUwyO8pc$annotations(long j) {
        }

        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2159getMinutesUwyO8pc$annotations(double d) {
        }

        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2160getMinutesUwyO8pc$annotations(int i) {
        }

        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2161getMinutesUwyO8pc$annotations(long j) {
        }

        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2165getNanosecondsUwyO8pc$annotations(double d) {
        }

        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2166getNanosecondsUwyO8pc$annotations(int i) {
        }

        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2167getNanosecondsUwyO8pc$annotations(long j) {
        }

        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2171getSecondsUwyO8pc$annotations(double d) {
        }

        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2172getSecondsUwyO8pc$annotations(int i) {
        }

        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m2173getSecondsUwyO8pc$annotations(long j) {
        }

        private Companion() {
        }

        /* renamed from: getZERO-UwyO8pc  reason: not valid java name */
        public final long m2179getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m2177getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib  reason: not valid java name */
        public final long m2178getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        public final double convert(double value, DurationUnit sourceUnit, DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m2163getNanosecondsUwyO8pc(int $this$nanoseconds) {
            return DurationKt.toDuration($this$nanoseconds, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m2164getNanosecondsUwyO8pc(long $this$nanoseconds) {
            return DurationKt.toDuration($this$nanoseconds, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m2162getNanosecondsUwyO8pc(double $this$nanoseconds) {
            return DurationKt.toDuration($this$nanoseconds, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m2145getMicrosecondsUwyO8pc(int $this$microseconds) {
            return DurationKt.toDuration($this$microseconds, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m2146getMicrosecondsUwyO8pc(long $this$microseconds) {
            return DurationKt.toDuration($this$microseconds, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m2144getMicrosecondsUwyO8pc(double $this$microseconds) {
            return DurationKt.toDuration($this$microseconds, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m2151getMillisecondsUwyO8pc(int $this$milliseconds) {
            return DurationKt.toDuration($this$milliseconds, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m2152getMillisecondsUwyO8pc(long $this$milliseconds) {
            return DurationKt.toDuration($this$milliseconds, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m2150getMillisecondsUwyO8pc(double $this$milliseconds) {
            return DurationKt.toDuration($this$milliseconds, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m2169getSecondsUwyO8pc(int $this$seconds) {
            return DurationKt.toDuration($this$seconds, DurationUnit.SECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m2170getSecondsUwyO8pc(long $this$seconds) {
            return DurationKt.toDuration($this$seconds, DurationUnit.SECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m2168getSecondsUwyO8pc(double $this$seconds) {
            return DurationKt.toDuration($this$seconds, DurationUnit.SECONDS);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m2157getMinutesUwyO8pc(int $this$minutes) {
            return DurationKt.toDuration($this$minutes, DurationUnit.MINUTES);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m2158getMinutesUwyO8pc(long $this$minutes) {
            return DurationKt.toDuration($this$minutes, DurationUnit.MINUTES);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m2156getMinutesUwyO8pc(double $this$minutes) {
            return DurationKt.toDuration($this$minutes, DurationUnit.MINUTES);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m2139getHoursUwyO8pc(int $this$hours) {
            return DurationKt.toDuration($this$hours, DurationUnit.HOURS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m2140getHoursUwyO8pc(long $this$hours) {
            return DurationKt.toDuration($this$hours, DurationUnit.HOURS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m2138getHoursUwyO8pc(double $this$hours) {
            return DurationKt.toDuration($this$hours, DurationUnit.HOURS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m2133getDaysUwyO8pc(int $this$days) {
            return DurationKt.toDuration($this$days, DurationUnit.DAYS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m2134getDaysUwyO8pc(long $this$days) {
            return DurationKt.toDuration($this$days, DurationUnit.DAYS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m2132getDaysUwyO8pc(double $this$days) {
            return DurationKt.toDuration($this$days, DurationUnit.DAYS);
        }

        @Deprecated(message = "Use 'Int.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2193nanosecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.NANOSECONDS);
        }

        @Deprecated(message = "Use 'Long.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2194nanosecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.NANOSECONDS);
        }

        @Deprecated(message = "Use 'Double.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2192nanosecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.NANOSECONDS);
        }

        @Deprecated(message = "Use 'Int.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2184microsecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.MICROSECONDS);
        }

        @Deprecated(message = "Use 'Long.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2185microsecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.MICROSECONDS);
        }

        @Deprecated(message = "Use 'Double.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2183microsecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.MICROSECONDS);
        }

        @Deprecated(message = "Use 'Int.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2187millisecondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.MILLISECONDS);
        }

        @Deprecated(message = "Use 'Long.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2188millisecondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.MILLISECONDS);
        }

        @Deprecated(message = "Use 'Double.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2186millisecondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.MILLISECONDS);
        }

        @Deprecated(message = "Use 'Int.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2200secondsUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.SECONDS);
        }

        @Deprecated(message = "Use 'Long.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2201secondsUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.SECONDS);
        }

        @Deprecated(message = "Use 'Double.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2199secondsUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.SECONDS);
        }

        @Deprecated(message = "Use 'Int.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2190minutesUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.MINUTES);
        }

        @Deprecated(message = "Use 'Long.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2191minutesUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.MINUTES);
        }

        @Deprecated(message = "Use 'Double.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2189minutesUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.MINUTES);
        }

        @Deprecated(message = "Use 'Int.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2181hoursUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.HOURS);
        }

        @Deprecated(message = "Use 'Long.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2182hoursUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.HOURS);
        }

        @Deprecated(message = "Use 'Double.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2180hoursUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.HOURS);
        }

        @Deprecated(message = "Use 'Int.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2175daysUwyO8pc(int value) {
            return DurationKt.toDuration(value, DurationUnit.DAYS);
        }

        @Deprecated(message = "Use 'Long.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2176daysUwyO8pc(long value) {
            return DurationKt.toDuration(value, DurationUnit.DAYS);
        }

        @Deprecated(message = "Use 'Double.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(errorSince = "1.8", hiddenSince = "1.9", warningSince = "1.6")
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final /* synthetic */ long m2174daysUwyO8pc(double value) {
            return DurationKt.toDuration(value, DurationUnit.DAYS);
        }

        /* renamed from: parse-UwyO8pc  reason: not valid java name */
        public final long m2195parseUwyO8pc(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc  reason: not valid java name */
        public final long m2196parseIsoStringUwyO8pc(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        /* renamed from: parseOrNull-FghU774  reason: not valid java name */
        public final Duration m2198parseOrNullFghU774(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2074boximpl(DurationKt.access$parseDuration(value, false));
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: parseIsoStringOrNull-FghU774  reason: not valid java name */
        public final Duration m2197parseIsoStringOrNullFghU774(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2074boximpl(DurationKt.access$parseDuration(value, true));
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
    }

    /* renamed from: unaryMinus-UwyO8pc  reason: not valid java name */
    public static final long m2129unaryMinusUwyO8pc(long arg0) {
        return DurationKt.access$durationOf(-m2103getValueimpl(arg0), ((int) arg0) & 1);
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m2112plusLRDsOJo(long arg0, long other) {
        if (m2108isInfiniteimpl(arg0)) {
            if (m2105isFiniteimpl(other) || (arg0 ^ other) >= 0) {
                return arg0;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m2108isInfiniteimpl(other)) {
            return other;
        } else {
            if ((((int) arg0) & 1) == (((int) other) & 1)) {
                long result = m2103getValueimpl(arg0) + m2103getValueimpl(other);
                if (m2107isInNanosimpl(arg0)) {
                    return DurationKt.access$durationOfNanosNormalized(result);
                }
                return DurationKt.access$durationOfMillisNormalized(result);
            } else if (m2106isInMillisimpl(arg0)) {
                return m2072addValuesMixedRangesUwyO8pc(arg0, m2103getValueimpl(arg0), m2103getValueimpl(other));
            } else {
                return m2072addValuesMixedRangesUwyO8pc(arg0, m2103getValueimpl(other), m2103getValueimpl(arg0));
            }
        }
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m2072addValuesMixedRangesUwyO8pc(long arg0, long thisMillis, long otherNanos) {
        long otherMillis = DurationKt.access$nanosToMillis(otherNanos);
        long resultMillis = thisMillis + otherMillis;
        boolean z = false;
        if (-4611686018426L <= resultMillis && resultMillis < 4611686018427L) {
            z = true;
        }
        if (z) {
            long otherNanoRemainder = otherNanos - DurationKt.access$millisToNanos(otherMillis);
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(resultMillis) + otherNanoRemainder);
        }
        return DurationKt.access$durationOfMillis(RangesKt.coerceIn(resultMillis, -4611686018427387903L, (long) DurationKt.MAX_MILLIS));
    }

    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public static final long m2111minusLRDsOJo(long arg0, long other) {
        return m2112plusLRDsOJo(arg0, m2129unaryMinusUwyO8pc(other));
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m2114timesUwyO8pc(long arg0, int scale) {
        if (m2108isInfiniteimpl(arg0)) {
            if (scale == 0) {
                throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
            }
            return scale > 0 ? arg0 : m2129unaryMinusUwyO8pc(arg0);
        } else if (scale == 0) {
            return ZERO;
        } else {
            long value = m2103getValueimpl(arg0);
            long result = scale * value;
            if (m2107isInNanosimpl(arg0)) {
                boolean z = false;
                if (-2147483647L <= value && value < 2147483648L) {
                    z = true;
                }
                if (z) {
                    return DurationKt.access$durationOfNanos(result);
                }
                if (result / scale == value) {
                    return DurationKt.access$durationOfNanosNormalized(result);
                }
                long millis = DurationKt.access$nanosToMillis(value);
                long remNanos = value - DurationKt.access$millisToNanos(millis);
                long resultMillis = scale * millis;
                long totalMillis = DurationKt.access$nanosToMillis(scale * remNanos) + resultMillis;
                if (resultMillis / scale == millis && (totalMillis ^ resultMillis) >= 0) {
                    return DurationKt.access$durationOfMillis(RangesKt.coerceIn(totalMillis, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
                }
                return MathKt.getSign(value) * MathKt.getSign(scale) > 0 ? INFINITE : NEG_INFINITE;
            } else if (result / scale == value) {
                return DurationKt.access$durationOfMillis(RangesKt.coerceIn(result, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            } else {
                return MathKt.getSign(value) * MathKt.getSign(scale) > 0 ? INFINITE : NEG_INFINITE;
            }
        }
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m2113timesUwyO8pc(long arg0, double scale) {
        int intScale = MathKt.roundToInt(scale);
        if (((double) intScale) == scale) {
            return m2114timesUwyO8pc(arg0, intScale);
        }
        DurationUnit unit = m2101getStorageUnitimpl(arg0);
        double result = m2119toDoubleimpl(arg0, unit) * scale;
        return DurationKt.toDuration(result, unit);
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m2079divUwyO8pc(long arg0, int scale) {
        if (scale == 0) {
            if (m2110isPositiveimpl(arg0)) {
                return INFINITE;
            }
            if (!m2109isNegativeimpl(arg0)) {
                throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
            }
            return NEG_INFINITE;
        } else if (m2107isInNanosimpl(arg0)) {
            return DurationKt.access$durationOfNanos(m2103getValueimpl(arg0) / scale);
        } else {
            if (m2108isInfiniteimpl(arg0)) {
                return m2114timesUwyO8pc(arg0, MathKt.getSign(scale));
            }
            long result = m2103getValueimpl(arg0) / scale;
            boolean z = false;
            if (-4611686018426L <= result && result < 4611686018427L) {
                z = true;
            }
            if (z) {
                long rem = DurationKt.access$millisToNanos(m2103getValueimpl(arg0) - (scale * result)) / scale;
                return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(result) + rem);
            }
            long rem2 = DurationKt.access$durationOfMillis(result);
            return rem2;
        }
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m2078divUwyO8pc(long arg0, double scale) {
        int intScale = MathKt.roundToInt(scale);
        if ((((double) intScale) == scale) && intScale != 0) {
            return m2079divUwyO8pc(arg0, intScale);
        }
        DurationUnit unit = m2101getStorageUnitimpl(arg0);
        double result = m2119toDoubleimpl(arg0, unit) / scale;
        return DurationKt.toDuration(result, unit);
    }

    /* renamed from: div-LRDsOJo  reason: not valid java name */
    public static final double m2077divLRDsOJo(long arg0, long other) {
        DurationUnit coarserUnit = (DurationUnit) ComparisonsKt.maxOf(m2101getStorageUnitimpl(arg0), m2101getStorageUnitimpl(other));
        return m2119toDoubleimpl(arg0, coarserUnit) / m2119toDoubleimpl(other, coarserUnit);
    }

    /* renamed from: truncateTo-UwyO8pc$kotlin_stdlib  reason: not valid java name */
    public static final long m2128truncateToUwyO8pc$kotlin_stdlib(long arg0, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit storageUnit = m2101getStorageUnitimpl(arg0);
        if (unit.compareTo(storageUnit) <= 0 || m2108isInfiniteimpl(arg0)) {
            return arg0;
        }
        long scale = DurationUnitKt.convertDurationUnit(1L, unit, storageUnit);
        long result = m2103getValueimpl(arg0) - (m2103getValueimpl(arg0) % scale);
        return DurationKt.toDuration(result, storageUnit);
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m2109isNegativeimpl(long arg0) {
        return arg0 < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m2110isPositiveimpl(long arg0) {
        return arg0 > 0;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m2108isInfiniteimpl(long arg0) {
        return arg0 == INFINITE || arg0 == NEG_INFINITE;
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m2105isFiniteimpl(long arg0) {
        return !m2108isInfiniteimpl(arg0);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m2082getAbsoluteValueUwyO8pc(long arg0) {
        return m2109isNegativeimpl(arg0) ? m2129unaryMinusUwyO8pc(arg0) : arg0;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m2130compareToLRDsOJo(long other) {
        return m2075compareToLRDsOJo(this.rawValue, other);
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m2075compareToLRDsOJo(long arg0, long other) {
        long compareBits = arg0 ^ other;
        if (compareBits < 0 || (((int) compareBits) & 1) == 0) {
            return Intrinsics.compare(arg0, other);
        }
        int r = (((int) arg0) & 1) - (((int) other) & 1);
        return m2109isNegativeimpl(arg0) ? -r : r;
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m2118toComponentsimpl(long arg0, Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2091getInWholeDaysimpl(arg0)), Integer.valueOf(m2083getHoursComponentimpl(arg0)), Integer.valueOf(m2098getMinutesComponentimpl(arg0)), Integer.valueOf(m2100getSecondsComponentimpl(arg0)), Integer.valueOf(m2099getNanosecondsComponentimpl(arg0)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m2117toComponentsimpl(long arg0, Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2092getInWholeHoursimpl(arg0)), Integer.valueOf(m2098getMinutesComponentimpl(arg0)), Integer.valueOf(m2100getSecondsComponentimpl(arg0)), Integer.valueOf(m2099getNanosecondsComponentimpl(arg0)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m2116toComponentsimpl(long arg0, Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.mo2351invoke(Long.valueOf(m2095getInWholeMinutesimpl(arg0)), Integer.valueOf(m2100getSecondsComponentimpl(arg0)), Integer.valueOf(m2099getNanosecondsComponentimpl(arg0)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m2115toComponentsimpl(long arg0, Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.mo2029invoke(Long.valueOf(m2097getInWholeSecondsimpl(arg0)), Integer.valueOf(m2099getNanosecondsComponentimpl(arg0)));
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m2083getHoursComponentimpl(long arg0) {
        if (m2108isInfiniteimpl(arg0)) {
            return 0;
        }
        return (int) (m2092getInWholeHoursimpl(arg0) % 24);
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m2098getMinutesComponentimpl(long arg0) {
        if (m2108isInfiniteimpl(arg0)) {
            return 0;
        }
        return (int) (m2095getInWholeMinutesimpl(arg0) % 60);
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m2100getSecondsComponentimpl(long arg0) {
        if (m2108isInfiniteimpl(arg0)) {
            return 0;
        }
        return (int) (m2097getInWholeSecondsimpl(arg0) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m2099getNanosecondsComponentimpl(long arg0) {
        if (m2108isInfiniteimpl(arg0)) {
            return 0;
        }
        return m2106isInMillisimpl(arg0) ? (int) DurationKt.access$millisToNanos(m2103getValueimpl(arg0) % 1000) : (int) (m2103getValueimpl(arg0) % 1000000000);
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    public static final double m2119toDoubleimpl(long arg0, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (arg0 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (arg0 != NEG_INFINITE) {
            return DurationUnitKt.convertDurationUnit(m2103getValueimpl(arg0), m2101getStorageUnitimpl(arg0), unit);
        }
        return Double.NEGATIVE_INFINITY;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m2122toLongimpl(long arg0, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (arg0 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (arg0 != NEG_INFINITE) {
            return DurationUnitKt.convertDurationUnit(m2103getValueimpl(arg0), m2101getStorageUnitimpl(arg0), unit);
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    public static final int m2120toIntimpl(long arg0, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) RangesKt.coerceIn(m2122toLongimpl(arg0, unit), -2147483648L, 2147483647L);
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m2091getInWholeDaysimpl(long arg0) {
        return m2122toLongimpl(arg0, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m2092getInWholeHoursimpl(long arg0) {
        return m2122toLongimpl(arg0, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m2095getInWholeMinutesimpl(long arg0) {
        return m2122toLongimpl(arg0, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m2097getInWholeSecondsimpl(long arg0) {
        return m2122toLongimpl(arg0, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m2094getInWholeMillisecondsimpl(long arg0) {
        return (!m2106isInMillisimpl(arg0) || !m2105isFiniteimpl(arg0)) ? m2122toLongimpl(arg0, DurationUnit.MILLISECONDS) : m2103getValueimpl(arg0);
    }

    /* renamed from: getInWholeMicroseconds-impl  reason: not valid java name */
    public static final long m2093getInWholeMicrosecondsimpl(long arg0) {
        return m2122toLongimpl(arg0, DurationUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeNanoseconds-impl  reason: not valid java name */
    public static final long m2096getInWholeNanosecondsimpl(long arg0) {
        long value = m2103getValueimpl(arg0);
        if (m2107isInNanosimpl(arg0)) {
            return value;
        }
        if (value > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (value >= -9223372036854L) {
            return DurationKt.access$millisToNanos(value);
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2125toStringimpl(long arg0) {
        int nanoseconds;
        if (arg0 == 0) {
            return "0s";
        }
        if (arg0 == INFINITE) {
            return "Infinity";
        }
        if (arg0 == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean isNegative = m2109isNegativeimpl(arg0);
        StringBuilder $this$toString_impl_u24lambda_u245 = new StringBuilder();
        if (isNegative) {
            $this$toString_impl_u24lambda_u245.append('-');
        }
        long arg0$iv = m2082getAbsoluteValueUwyO8pc(arg0);
        long days = m2091getInWholeDaysimpl(arg0$iv);
        int hours = m2083getHoursComponentimpl(arg0$iv);
        int minutes = m2098getMinutesComponentimpl(arg0$iv);
        int seconds = m2100getSecondsComponentimpl(arg0$iv);
        int nanoseconds2 = m2099getNanosecondsComponentimpl(arg0$iv);
        boolean z = false;
        boolean hasDays = days != 0;
        boolean hasHours = hours != 0;
        boolean hasMinutes = minutes != 0;
        if (seconds != 0 || nanoseconds2 != 0) {
            z = true;
        }
        boolean hasSeconds = z;
        int components = 0;
        if (hasDays) {
            $this$toString_impl_u24lambda_u245.append(days).append('d');
            components = 0 + 1;
        }
        if (hasHours || (hasDays && (hasMinutes || hasSeconds))) {
            int components2 = components + 1;
            if (components > 0) {
                $this$toString_impl_u24lambda_u245.append(' ');
            }
            $this$toString_impl_u24lambda_u245.append(hours).append('h');
            components = components2;
        }
        if (hasMinutes || (hasSeconds && (hasHours || hasDays))) {
            int components3 = components + 1;
            if (components > 0) {
                $this$toString_impl_u24lambda_u245.append(' ');
            }
            $this$toString_impl_u24lambda_u245.append(minutes).append('m');
            components = components3;
        }
        if (hasSeconds) {
            int components4 = components + 1;
            if (components > 0) {
                $this$toString_impl_u24lambda_u245.append(' ');
            }
            if (seconds != 0 || hasDays || hasHours) {
                nanoseconds = nanoseconds2;
            } else if (hasMinutes) {
                nanoseconds = nanoseconds2;
            } else {
                if (nanoseconds2 >= 1000000) {
                    m2073appendFractionalimpl(arg0, $this$toString_impl_u24lambda_u245, nanoseconds2 / DurationKt.NANOS_IN_MILLIS, nanoseconds2 % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
                } else if (nanoseconds2 >= 1000) {
                    m2073appendFractionalimpl(arg0, $this$toString_impl_u24lambda_u245, nanoseconds2 / 1000, nanoseconds2 % 1000, 3, "us", false);
                } else {
                    $this$toString_impl_u24lambda_u245.append(nanoseconds2).append("ns");
                }
                components = components4;
            }
            m2073appendFractionalimpl(arg0, $this$toString_impl_u24lambda_u245, seconds, nanoseconds, 9, "s", false);
            components = components4;
        }
        if (isNegative && components > 1) {
            $this$toString_impl_u24lambda_u245.insert(1, '(').append(')');
        }
        String sb = $this$toString_impl_u24lambda_u245.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public String toString() {
        return m2125toStringimpl(this.rawValue);
    }

    /* renamed from: appendFractional-impl  reason: not valid java name */
    private static final void m2073appendFractionalimpl(long arg0, StringBuilder $this$appendFractional, int whole, int fractional, int fractionalSize, String unit, boolean isoZeroes) {
        $this$appendFractional.append(whole);
        if (fractional != 0) {
            $this$appendFractional.append('.');
            CharSequence fracString = StringsKt.padStart(String.valueOf(fractional), fractionalSize, '0');
            CharSequence $this$indexOfLast$iv = fracString;
            int i = -1;
            int length = $this$indexOfLast$iv.length() - 1;
            if (length >= 0) {
                while (true) {
                    int index$iv = length;
                    length--;
                    char it = $this$indexOfLast$iv.charAt(index$iv);
                    char it2 = it != '0' ? (char) 1 : (char) 0;
                    if (it2 == 0) {
                        if (length < 0) {
                            break;
                        }
                    } else {
                        i = index$iv;
                        break;
                    }
                }
            }
            int nonZeroDigits = i + 1;
            if (isoZeroes || nonZeroDigits >= 3) {
                Intrinsics.checkNotNullExpressionValue($this$appendFractional.append(fracString, 0, ((nonZeroDigits + 2) / 3) * 3), "append(...)");
            } else {
                Intrinsics.checkNotNullExpressionValue($this$appendFractional.append(fracString, 0, nonZeroDigits), "append(...)");
            }
        }
        $this$appendFractional.append(unit);
    }

    /* renamed from: toString-impl$default  reason: not valid java name */
    public static /* synthetic */ String m2127toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m2126toStringimpl(j, durationUnit, i);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static final String m2126toStringimpl(long arg0, DurationUnit unit, int decimals) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (!(decimals >= 0)) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + decimals).toString());
        }
        double number = m2119toDoubleimpl(arg0, unit);
        return Double.isInfinite(number) ? String.valueOf(number) : DurationJvmKt.formatToExactDecimals(number, RangesKt.coerceAtMost(decimals, 12)) + DurationUnitKt.shortName(unit);
    }

    /* renamed from: toIsoString-impl  reason: not valid java name */
    public static final String m2121toIsoStringimpl(long arg0) {
        long hours;
        StringBuilder $this$toIsoString_impl_u24lambda_u249 = new StringBuilder();
        if (m2109isNegativeimpl(arg0)) {
            $this$toIsoString_impl_u24lambda_u249.append('-');
        }
        $this$toIsoString_impl_u24lambda_u249.append("PT");
        long arg0$iv = m2082getAbsoluteValueUwyO8pc(arg0);
        long hours2 = m2092getInWholeHoursimpl(arg0$iv);
        int minutes = m2098getMinutesComponentimpl(arg0$iv);
        int seconds = m2100getSecondsComponentimpl(arg0$iv);
        int nanoseconds = m2099getNanosecondsComponentimpl(arg0$iv);
        if (!m2108isInfiniteimpl(arg0)) {
            hours = hours2;
        } else {
            hours = 9999999999999L;
        }
        boolean z = true;
        boolean hasHours = hours != 0;
        boolean hasSeconds = (seconds == 0 && nanoseconds == 0) ? false : true;
        if (minutes == 0 && (!hasSeconds || !hasHours)) {
            z = false;
        }
        boolean hasMinutes = z;
        if (hasHours) {
            $this$toIsoString_impl_u24lambda_u249.append(hours).append('H');
        }
        if (hasMinutes) {
            $this$toIsoString_impl_u24lambda_u249.append(minutes).append('M');
        }
        if (hasSeconds || (!hasHours && !hasMinutes)) {
            m2073appendFractionalimpl(arg0, $this$toIsoString_impl_u24lambda_u249, seconds, nanoseconds, 9, "S", true);
        }
        String sb = $this$toIsoString_impl_u24lambda_u249.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }
}
