package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@CheckReturnValue
/* loaded from: classes.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    /* loaded from: classes.dex */
    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        /* renamed from: build */
        MessageLite mo209build();

        /* renamed from: buildPartial */
        MessageLite mo220buildPartial();

        /* renamed from: clear */
        Builder mo211clear();

        /* renamed from: clone */
        Builder mo213clone();

        boolean mergeDelimitedFrom(InputStream input) throws IOException;

        boolean mergeDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        /* renamed from: mergeFrom */
        Builder mo142mergeFrom(ByteString data) throws InvalidProtocolBufferException;

        /* renamed from: mergeFrom */
        Builder mo143mergeFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        /* renamed from: mergeFrom */
        Builder mo144mergeFrom(CodedInputStream input) throws IOException;

        /* renamed from: mergeFrom */
        Builder mo215mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        /* renamed from: mergeFrom */
        Builder mo146mergeFrom(MessageLite other);

        /* renamed from: mergeFrom */
        Builder mo147mergeFrom(InputStream input) throws IOException;

        /* renamed from: mergeFrom */
        Builder mo148mergeFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException;

        /* renamed from: mergeFrom */
        Builder mo149mergeFrom(byte[] data) throws InvalidProtocolBufferException;

        /* renamed from: mergeFrom */
        Builder mo216mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

        /* renamed from: mergeFrom */
        Builder mo217mergeFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

        /* renamed from: mergeFrom */
        Builder mo152mergeFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;
    }

    Parser<? extends MessageLite> getParserForType();

    int getSerializedSize();

    /* renamed from: newBuilderForType */
    Builder mo207newBuilderForType();

    /* renamed from: toBuilder */
    Builder mo208toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeDelimitedTo(OutputStream output) throws IOException;

    void writeTo(CodedOutputStream output) throws IOException;

    void writeTo(OutputStream output) throws IOException;
}
