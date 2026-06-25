package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.MessageLite;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode = 0;

    /* loaded from: classes.dex */
    protected interface InternalOneOfEnum {
        int getNumber();
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.CodedBuilder out = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(out.getCodedOutput());
            return out.build();
        } catch (IOException e) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] result = new byte[getSerializedSize()];
            CodedOutputStream output = CodedOutputStream.newInstance(result);
            writeTo(output);
            output.checkNoSpaceLeft();
            return result;
        } catch (IOException e) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public void writeTo(final OutputStream output) throws IOException {
        int bufferSize = CodedOutputStream.computePreferredBufferSize(getSerializedSize());
        CodedOutputStream codedOutput = CodedOutputStream.newInstance(output, bufferSize);
        writeTo(codedOutput);
        codedOutput.flush();
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public void writeDelimitedTo(final OutputStream output) throws IOException {
        int serialized = getSerializedSize();
        int bufferSize = CodedOutputStream.computePreferredBufferSize(CodedOutputStream.computeUInt32SizeNoTag(serialized) + serialized);
        CodedOutputStream codedOutput = CodedOutputStream.newInstance(output, bufferSize);
        codedOutput.writeUInt32NoTag(serialized);
        writeTo(codedOutput);
        codedOutput.flush();
    }

    int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    void setMemoizedSerializedSize(int size) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSerializedSize(Schema schema) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize == -1) {
            int memoizedSerializedSize2 = schema.getSerializedSize(this);
            setMemoizedSerializedSize(memoizedSerializedSize2);
            return memoizedSerializedSize2;
        }
        return memoizedSerializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    private String getSerializingExceptionMessage(String target) {
        return "Serializing " + getClass().getName() + " to a " + target + " threw an IOException (should never happen).";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (!byteString.isValidUtf8()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void addAll(final Iterable<T> values, final List<? super T> list) {
        Builder.addAll((Iterable) values, (List) list);
    }

    /* loaded from: classes.dex */
    public static abstract class Builder<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite.Builder {
        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: clone */
        public abstract BuilderType mo213clone();

        protected abstract BuilderType internalMergeFrom(MessageType message);

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public abstract BuilderType mo215mergeFrom(final CodedInputStream input, final ExtensionRegistryLite extensionRegistry) throws IOException;

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo144mergeFrom(final CodedInputStream input) throws IOException {
            return mo215mergeFrom(input, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo142mergeFrom(final ByteString data) throws InvalidProtocolBufferException {
            try {
                CodedInputStream input = data.newCodedInput();
                mo144mergeFrom(input);
                input.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo143mergeFrom(final ByteString data, final ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            try {
                CodedInputStream input = data.newCodedInput();
                mo215mergeFrom(input, extensionRegistry);
                input.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo149mergeFrom(final byte[] data) throws InvalidProtocolBufferException {
            return mo216mergeFrom(data, 0, data.length);
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo216mergeFrom(final byte[] data, final int off, final int len) throws InvalidProtocolBufferException {
            try {
                CodedInputStream input = CodedInputStream.newInstance(data, off, len);
                mo144mergeFrom(input);
                input.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo152mergeFrom(final byte[] data, final ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return mo217mergeFrom(data, 0, data.length, extensionRegistry);
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo217mergeFrom(final byte[] data, final int off, final int len, final ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            try {
                CodedInputStream input = CodedInputStream.newInstance(data, off, len);
                mo215mergeFrom(input, extensionRegistry);
                input.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo147mergeFrom(final InputStream input) throws IOException {
            CodedInputStream codedInput = CodedInputStream.newInstance(input);
            mo144mergeFrom(codedInput);
            codedInput.checkLastTagWas(0);
            return this;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo148mergeFrom(final InputStream input, final ExtensionRegistryLite extensionRegistry) throws IOException {
            CodedInputStream codedInput = CodedInputStream.newInstance(input);
            mo215mergeFrom(codedInput, extensionRegistry);
            codedInput.checkLastTagWas(0);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class LimitedInputStream extends FilterInputStream {
            private int limit;

            /* JADX INFO: Access modifiers changed from: package-private */
            public LimitedInputStream(InputStream in, int limit) {
                super(in);
                this.limit = limit;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.limit);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.limit <= 0) {
                    return -1;
                }
                int result = super.read();
                if (result >= 0) {
                    this.limit--;
                }
                return result;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(final byte[] b, final int off, int len) throws IOException {
                if (this.limit <= 0) {
                    return -1;
                }
                int result = super.read(b, off, Math.min(len, this.limit));
                if (result >= 0) {
                    this.limit -= result;
                }
                return result;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(final long n) throws IOException {
                int result = (int) super.skip(Math.min(n, this.limit));
                if (result >= 0) {
                    this.limit -= result;
                }
                return result;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        public boolean mergeDelimitedFrom(final InputStream input, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int firstByte = input.read();
            if (firstByte == -1) {
                return false;
            }
            int size = CodedInputStream.readRawVarint32(firstByte, input);
            InputStream limitedInput = new LimitedInputStream(input, size);
            mo148mergeFrom(limitedInput, extensionRegistry);
            return true;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        public boolean mergeDelimitedFrom(final InputStream input) throws IOException {
            return mergeDelimitedFrom(input, ExtensionRegistryLite.getEmptyRegistry());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* renamed from: mergeFrom */
        public BuilderType mo146mergeFrom(final MessageLite other) {
            if (!mo214getDefaultInstanceForType().getClass().isInstance(other)) {
                throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
            }
            return (BuilderType) internalMergeFrom((AbstractMessageLite) other);
        }

        private String getReadingExceptionMessage(String target) {
            return "Reading " + getClass().getName() + " from a " + target + " threw an IOException (should never happen).";
        }

        private static <T> void addAllCheckingNulls(Iterable<T> values, List<? super T> list) {
            if ((list instanceof ArrayList) && (values instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) values).size());
            }
            int begin = list.size();
            for (T value : values) {
                if (value == null) {
                    String message = "Element at index " + (list.size() - begin) + " is null.";
                    for (int i = list.size() - 1; i >= begin; i--) {
                        list.remove(i);
                    }
                    throw new NullPointerException(message);
                }
                list.add(value);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException newUninitializedMessageException(MessageLite message) {
            return new UninitializedMessageException(message);
        }

        @Deprecated
        protected static <T> void addAll(final Iterable<T> values, final Collection<? super T> list) {
            addAll((Iterable) values, (List) list);
        }

        protected static <T> void addAll(final Iterable<T> values, final List<? super T> list) {
            Internal.checkNotNull(values);
            if (values instanceof LazyStringList) {
                List<?> lazyValues = ((LazyStringList) values).getUnderlyingElements();
                LazyStringList lazyList = (LazyStringList) list;
                int begin = list.size();
                for (Object value : lazyValues) {
                    if (value == null) {
                        String message = "Element at index " + (lazyList.size() - begin) + " is null.";
                        for (int i = lazyList.size() - 1; i >= begin; i--) {
                            lazyList.remove(i);
                        }
                        throw new NullPointerException(message);
                    } else if (value instanceof ByteString) {
                        lazyList.add((ByteString) value);
                    } else if (value instanceof byte[]) {
                        lazyList.add(ByteString.copyFrom((byte[]) value));
                    } else {
                        lazyList.add((String) value);
                    }
                }
            } else if (values instanceof PrimitiveNonBoxingCollection) {
                list.addAll((Collection) values);
            } else {
                addAllCheckingNulls(values, list);
            }
        }
    }
}
