package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class AbstractParser<MessageType extends MessageLite> implements Parser<MessageType> {
    private static final ExtensionRegistryLite EMPTY_REGISTRY = ExtensionRegistryLite.getEmptyRegistry();

    private UninitializedMessageException newUninitializedMessageException(MessageType message) {
        if (message instanceof AbstractMessageLite) {
            return ((AbstractMessageLite) message).newUninitializedMessageException();
        }
        return new UninitializedMessageException(message);
    }

    private MessageType checkMessageInitialized(MessageType message) throws InvalidProtocolBufferException {
        if (message != null && !message.isInitialized()) {
            throw newUninitializedMessageException(message).asInvalidProtocolBufferException().setUnfinishedMessage(message);
        }
        return message;
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo171parsePartialFrom(CodedInputStream input) throws InvalidProtocolBufferException {
        return (MessageType) mo219parsePartialFrom(input, EMPTY_REGISTRY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo158parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (MessageType) checkMessageInitialized((MessageLite) mo219parsePartialFrom(input, extensionRegistry));
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo157parseFrom(CodedInputStream input) throws InvalidProtocolBufferException {
        return mo158parseFrom(input, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo170parsePartialFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        try {
            CodedInputStream input = data.newCodedInput();
            MessageType message = (MessageType) mo219parsePartialFrom(input, extensionRegistry);
            try {
                input.checkLastTagWas(0);
                return message;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(message);
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo169parsePartialFrom(ByteString data) throws InvalidProtocolBufferException {
        return mo170parsePartialFrom(data, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo156parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return checkMessageInitialized(mo170parsePartialFrom(data, extensionRegistry));
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo155parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return mo156parseFrom(data, EMPTY_REGISTRY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo162parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        try {
            CodedInputStream input = CodedInputStream.newInstance(data);
            MessageLite messageLite = (MessageLite) mo219parsePartialFrom(input, extensionRegistry);
            try {
                input.checkLastTagWas(0);
                return (MessageType) checkMessageInitialized(messageLite);
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(messageLite);
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo161parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return mo162parseFrom(data, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo218parsePartialFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        try {
            CodedInputStream input = CodedInputStream.newInstance(data, off, len);
            MessageType message = (MessageType) mo219parsePartialFrom(input, extensionRegistry);
            try {
                input.checkLastTagWas(0);
                return message;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(message);
            }
        } catch (InvalidProtocolBufferException e2) {
            throw e2;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo175parsePartialFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
        return mo218parsePartialFrom(data, off, len, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo177parsePartialFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return mo218parsePartialFrom(data, 0, data.length, extensionRegistry);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo174parsePartialFrom(byte[] data) throws InvalidProtocolBufferException {
        return mo218parsePartialFrom(data, 0, data.length, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo165parseFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return checkMessageInitialized(mo218parsePartialFrom(data, off, len, extensionRegistry));
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo164parseFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
        return mo165parseFrom(data, off, len, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo166parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return mo165parseFrom(data, 0, data.length, extensionRegistry);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo163parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return mo166parseFrom(data, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo173parsePartialFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        CodedInputStream codedInput = CodedInputStream.newInstance(input);
        MessageType message = (MessageType) mo219parsePartialFrom(codedInput, extensionRegistry);
        try {
            codedInput.checkLastTagWas(0);
            return message;
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(message);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialFrom */
    public MessageType mo172parsePartialFrom(InputStream input) throws InvalidProtocolBufferException {
        return mo173parsePartialFrom(input, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo160parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return checkMessageInitialized(mo173parsePartialFrom(input, extensionRegistry));
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseFrom */
    public MessageType mo159parseFrom(InputStream input) throws InvalidProtocolBufferException {
        return mo160parseFrom(input, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialDelimitedFrom */
    public MessageType mo168parsePartialDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        try {
            int firstByte = input.read();
            if (firstByte == -1) {
                return null;
            }
            int size = CodedInputStream.readRawVarint32(firstByte, input);
            InputStream limitedInput = new AbstractMessageLite.Builder.LimitedInputStream(input, size);
            return mo173parsePartialFrom(limitedInput, extensionRegistry);
        } catch (IOException e) {
            throw new InvalidProtocolBufferException(e);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parsePartialDelimitedFrom */
    public MessageType mo167parsePartialDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
        return mo168parsePartialDelimitedFrom(input, EMPTY_REGISTRY);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseDelimitedFrom */
    public MessageType mo154parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return checkMessageInitialized(mo168parsePartialDelimitedFrom(input, extensionRegistry));
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* renamed from: parseDelimitedFrom */
    public MessageType mo153parseDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
        return mo154parseDelimitedFrom(input, EMPTY_REGISTRY);
    }
}
