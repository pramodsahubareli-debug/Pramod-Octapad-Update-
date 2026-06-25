package okio;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RealBufferedSink.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0001H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001eH\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020$2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0018\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0016J(\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001bH\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u001bH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "sink", "Lokio/Sink;", "(Lokio/Sink;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", "close", "", "emit", "emitCompleteSegments", "flush", "isOpen", "outputStream", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "toString", "", "write", "", "source", "Ljava/nio/ByteBuffer;", "", "offset", "byteCount", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "writeAll", "writeByte", "b", "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes4.dex */
public final class RealBufferedSink implements BufferedSink {
    public final Buffer bufferField;
    public boolean closed;
    public final Sink sink;

    public static /* synthetic */ void getBuffer$annotations() {
    }

    public RealBufferedSink(Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    @Override // okio.BufferedSink
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSink
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Sink
    public void write(Buffer source, long byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, byteCount);
            mo2359emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public BufferedSink mo2360write(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.mo2360write(byteString);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public BufferedSink mo2361write(ByteString byteString, int offset, int byteCount) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.mo2361write(byteString, offset, byteCount);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8 */
    public BufferedSink mo2376writeUtf8(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (!this.closed) {
            this.bufferField.mo2376writeUtf8(string);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8 */
    public BufferedSink mo2377writeUtf8(String string, int beginIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (!this.closed) {
            this.bufferField.mo2377writeUtf8(string, beginIndex, endIndex);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8CodePoint */
    public BufferedSink mo2378writeUtf8CodePoint(int codePoint) {
        if (!this.closed) {
            this.bufferField.mo2378writeUtf8CodePoint(codePoint);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeString */
    public BufferedSink mo2375writeString(String string, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!this.closed) {
            this.bufferField.mo2375writeString(string, charset);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeString */
    public BufferedSink mo2374writeString(String string, int beginIndex, int endIndex, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!this.closed) {
            this.bufferField.mo2374writeString(string, beginIndex, endIndex, charset);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public BufferedSink mo2363write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.mo2363write(source);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public BufferedSink mo2364write(byte[] source, int offset, int byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.mo2364write(source, offset, byteCount);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            int result = this.bufferField.write(source);
            mo2359emitCompleteSegments();
            return result;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long totalBytesRead$iv = 0;
        while (true) {
            long readCount$iv = source.read(this.bufferField, 8192L);
            if (readCount$iv == -1) {
                return totalBytesRead$iv;
            }
            totalBytesRead$iv += readCount$iv;
            mo2359emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public BufferedSink mo2362write(Source source, long byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        long byteCount$iv = byteCount;
        while (byteCount$iv > 0) {
            long read$iv = source.read(this.bufferField, byteCount$iv);
            if (read$iv == -1) {
                throw new EOFException();
            }
            byteCount$iv -= read$iv;
            mo2359emitCompleteSegments();
        }
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeByte */
    public BufferedSink mo2365writeByte(int b) {
        if (!this.closed) {
            this.bufferField.mo2365writeByte(b);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeShort */
    public BufferedSink mo2372writeShort(int s) {
        if (!this.closed) {
            this.bufferField.mo2372writeShort(s);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeShortLe */
    public BufferedSink mo2373writeShortLe(int s) {
        if (!this.closed) {
            this.bufferField.mo2373writeShortLe(s);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeInt */
    public BufferedSink mo2368writeInt(int i) {
        if (!this.closed) {
            this.bufferField.mo2368writeInt(i);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeIntLe */
    public BufferedSink mo2369writeIntLe(int i) {
        if (!this.closed) {
            this.bufferField.mo2369writeIntLe(i);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeLong */
    public BufferedSink mo2370writeLong(long v) {
        if (!this.closed) {
            this.bufferField.mo2370writeLong(v);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeLongLe */
    public BufferedSink mo2371writeLongLe(long v) {
        if (!this.closed) {
            this.bufferField.mo2371writeLongLe(v);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeDecimalLong */
    public BufferedSink mo2366writeDecimalLong(long v) {
        if (!this.closed) {
            this.bufferField.mo2366writeDecimalLong(v);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeHexadecimalUnsignedLong */
    public BufferedSink mo2367writeHexadecimalUnsignedLong(long v) {
        if (!this.closed) {
            this.bufferField.mo2367writeHexadecimalUnsignedLong(v);
            return mo2359emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: emitCompleteSegments */
    public BufferedSink mo2359emitCompleteSegments() {
        if (!this.closed) {
            long byteCount$iv = this.bufferField.completeSegmentByteCount();
            if (byteCount$iv > 0) {
                this.sink.write(this.bufferField, byteCount$iv);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: emit */
    public BufferedSink mo2358emit() {
        if (!this.closed) {
            long byteCount$iv = this.bufferField.size();
            if (byteCount$iv > 0) {
                this.sink.write(this.bufferField, byteCount$iv);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink$outputStream$1
            @Override // java.io.OutputStream
            public void write(int b) {
                if (RealBufferedSink.this.closed) {
                    throw new IOException("closed");
                }
                RealBufferedSink this_$iv = RealBufferedSink.this;
                int $i$f$getBuffer = (byte) b;
                this_$iv.bufferField.mo2365writeByte($i$f$getBuffer);
                RealBufferedSink.this.mo2359emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int offset, int byteCount) {
                Intrinsics.checkNotNullParameter(data, "data");
                if (RealBufferedSink.this.closed) {
                    throw new IOException("closed");
                }
                RealBufferedSink this_$iv = RealBufferedSink.this;
                this_$iv.bufferField.mo2364write(data, offset, byteCount);
                RealBufferedSink.this.mo2359emitCompleteSegments();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                if (!RealBufferedSink.this.closed) {
                    RealBufferedSink.this.flush();
                }
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSink.this.close();
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }
        };
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.closed) {
            if (this.bufferField.size() > 0) {
                this.sink.write(this.bufferField, this.bufferField.size());
            }
            this.sink.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        Throwable thrown$iv = null;
        try {
            if (this.bufferField.size() > 0) {
                this.sink.write(this.bufferField, this.bufferField.size());
            }
        } catch (Throwable e$iv) {
            thrown$iv = e$iv;
        }
        try {
            this.sink.close();
        } catch (Throwable e$iv2) {
            if (thrown$iv == null) {
                thrown$iv = e$iv2;
            }
        }
        this.closed = true;
        if (thrown$iv == null) {
            return;
        }
        throw thrown$iv;
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public Timeout mo2353timeout() {
        return this.sink.mo2353timeout();
    }

    public String toString() {
        return "buffer(" + this.sink + ')';
    }
}
