package androidx.datastore.preferences.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface Parser<MessageType> {
    /* renamed from: parseDelimitedFrom */
    MessageType mo153parseDelimitedFrom(InputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parseDelimitedFrom */
    MessageType mo154parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo155parseFrom(ByteString data) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo156parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo157parseFrom(CodedInputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo158parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo159parseFrom(InputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo160parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo161parseFrom(ByteBuffer data) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo162parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo163parseFrom(byte[] data) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo164parseFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo165parseFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parseFrom */
    MessageType mo166parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialDelimitedFrom */
    MessageType mo167parsePartialDelimitedFrom(InputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialDelimitedFrom */
    MessageType mo168parsePartialDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo169parsePartialFrom(ByteString data) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo170parsePartialFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo171parsePartialFrom(CodedInputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo219parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo172parsePartialFrom(InputStream input) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo173parsePartialFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo174parsePartialFrom(byte[] data) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo175parsePartialFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo218parsePartialFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;

    /* renamed from: parsePartialFrom */
    MessageType mo177parsePartialFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException;
}
