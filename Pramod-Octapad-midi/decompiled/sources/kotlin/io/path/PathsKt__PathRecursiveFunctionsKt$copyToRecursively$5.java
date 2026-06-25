package kotlin.io.path;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PathRecursiveFunctions.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlin/io/path/FileVisitorBuilder;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes4.dex */
public final class PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5 extends Lambda implements Function1<FileVisitorBuilder, Unit> {
    final /* synthetic */ Function3<CopyActionContext, Path, Path, CopyActionResult> $copyAction;
    final /* synthetic */ Path $normalizedTarget;
    final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
    final /* synthetic */ ArrayList<Path> $stack;
    final /* synthetic */ Path $target;
    final /* synthetic */ Path $this_copyToRecursively;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5(ArrayList<Path> arrayList, Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Path path3, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32) {
        super(1);
        this.$stack = arrayList;
        this.$copyAction = function3;
        this.$this_copyToRecursively = path;
        this.$target = path2;
        this.$normalizedTarget = path3;
        this.$onError = function32;
    }

    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Unit mo2027invoke(FileVisitorBuilder fileVisitorBuilder) {
        invoke2(fileVisitorBuilder);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PathRecursiveFunctions.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Ljava/nio/file/FileVisitResult;", "directory", "Ljava/nio/file/Path;", "attributes", "Ljava/nio/file/attribute/BasicFileAttributes;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function2<Path, BasicFileAttributes, FileVisitResult> {
        final /* synthetic */ Function3<CopyActionContext, Path, Path, CopyActionResult> $copyAction;
        final /* synthetic */ Path $normalizedTarget;
        final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
        final /* synthetic */ ArrayList<Path> $stack;
        final /* synthetic */ Path $target;
        final /* synthetic */ Path $this_copyToRecursively;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(ArrayList<Path> arrayList, Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Path path3, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32) {
            super(2);
            this.$stack = arrayList;
            this.$copyAction = function3;
            this.$this_copyToRecursively = path;
            this.$target = path2;
            this.$normalizedTarget = path3;
            this.$onError = function32;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final FileVisitResult mo2029invoke(Path directory, BasicFileAttributes attributes) {
            FileVisitResult it;
            Intrinsics.checkNotNullParameter(directory, "directory");
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            it = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(this.$stack, this.$copyAction, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, this.$onError, directory, attributes);
            ArrayList<Path> arrayList = this.$stack;
            if (it == FileVisitResult.CONTINUE) {
                arrayList.add(directory);
            }
            return it;
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(FileVisitorBuilder visitFileTree) {
        Intrinsics.checkNotNullParameter(visitFileTree, "$this$visitFileTree");
        visitFileTree.onPreVisitDirectory(new AnonymousClass1(this.$stack, this.$copyAction, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, this.$onError));
        visitFileTree.onVisitFile(new AnonymousClass2(this.$stack, this.$copyAction, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, this.$onError));
        visitFileTree.onVisitFileFailed(new AnonymousClass3(this.$onError, this.$this_copyToRecursively, this.$target, this.$normalizedTarget));
        visitFileTree.onPostVisitDirectory(new AnonymousClass4(this.$stack, this.$onError, this.$this_copyToRecursively, this.$target, this.$normalizedTarget));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PathRecursiveFunctions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<Path, BasicFileAttributes, FileVisitResult> {
        final /* synthetic */ Function3<CopyActionContext, Path, Path, CopyActionResult> $copyAction;
        final /* synthetic */ Path $normalizedTarget;
        final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
        final /* synthetic */ ArrayList<Path> $stack;
        final /* synthetic */ Path $target;
        final /* synthetic */ Path $this_copyToRecursively;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(ArrayList<Path> arrayList, Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> function3, Path path, Path path2, Path path3, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function32) {
            super(2, Intrinsics.Kotlin.class, "copy", "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;", 0);
            this.$stack = arrayList;
            this.$copyAction = function3;
            this.$this_copyToRecursively = path;
            this.$target = path2;
            this.$normalizedTarget = path3;
            this.$onError = function32;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final FileVisitResult mo2029invoke(Path p0, BasicFileAttributes p1) {
            FileVisitResult copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(this.$stack, this.$copyAction, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, this.$onError, p0, p1);
            return copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PathRecursiveFunctions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function2<Path, Exception, FileVisitResult> {
        final /* synthetic */ Path $normalizedTarget;
        final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
        final /* synthetic */ Path $target;
        final /* synthetic */ Path $this_copyToRecursively;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function3, Path path, Path path2, Path path3) {
            super(2, Intrinsics.Kotlin.class, "error", "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;", 0);
            this.$onError = function3;
            this.$this_copyToRecursively = path;
            this.$target = path2;
            this.$normalizedTarget = path3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final FileVisitResult mo2029invoke(Path p0, Exception p1) {
            FileVisitResult copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(this.$onError, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, p0, p1);
            return copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PathRecursiveFunctions.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Ljava/nio/file/FileVisitResult;", "directory", "Ljava/nio/file/Path;", "exception", "Ljava/io/IOException;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* renamed from: kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass4 extends Lambda implements Function2<Path, IOException, FileVisitResult> {
        final /* synthetic */ Path $normalizedTarget;
        final /* synthetic */ Function3<Path, Path, Exception, OnErrorResult> $onError;
        final /* synthetic */ ArrayList<Path> $stack;
        final /* synthetic */ Path $target;
        final /* synthetic */ Path $this_copyToRecursively;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(ArrayList<Path> arrayList, Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> function3, Path path, Path path2, Path path3) {
            super(2);
            this.$stack = arrayList;
            this.$onError = function3;
            this.$this_copyToRecursively = path;
            this.$target = path2;
            this.$normalizedTarget = path3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final FileVisitResult mo2029invoke(Path directory, IOException exception) {
            FileVisitResult copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
            Intrinsics.checkNotNullParameter(directory, "directory");
            CollectionsKt.removeLast(this.$stack);
            if (exception != null) {
                copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt = PathsKt__PathRecursiveFunctionsKt.copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(this.$onError, this.$this_copyToRecursively, this.$target, this.$normalizedTarget, directory, exception);
                return copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt;
            }
            return FileVisitResult.CONTINUE;
        }
    }
}
