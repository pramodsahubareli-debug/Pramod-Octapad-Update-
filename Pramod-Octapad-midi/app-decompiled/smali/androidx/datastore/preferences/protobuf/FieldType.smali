.class public final enum Landroidx/datastore/preferences/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BYTES:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BYTES_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum ENUM_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MAP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum STRING_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field private static final VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;


# instance fields
.field private final collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Landroidx/datastore/preferences/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v6, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v5, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 20
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 21
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT64:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 22
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 23
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT32:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 24
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 25
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 26
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 27
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->STRING:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 28
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 29
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 30
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 31
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 32
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 33
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 34
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 35
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 36
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 37
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 38
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 39
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 40
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 41
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 42
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 43
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 44
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 45
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->STRING_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 46
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 47
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 48
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 49
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 50
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 51
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 52
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 53
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 54
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 55
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 56
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 57
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 58
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 59
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 60
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 61
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 62
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 63
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 64
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 65
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 66
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 67
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 68
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 69
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v5, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 17
    const/16 v0, 0x33

    new-array v0, v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT64:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT32:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL:Landroidx/datastore/preferences/protobuf/FieldType;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->STRING:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->STRING_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x20

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x21

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x22

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x23

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x24

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x25

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x26

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x27

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x28

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x29

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x30

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x31

    aput-object v1, v0, v3

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    const/16 v3, 0x32

    aput-object v1, v0, v3

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 192
    new-array v0, v2, [Ljava/lang/reflect/Type;

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 195
    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldType;->values()[Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v0

    .line 196
    .local v0, "values":[Landroidx/datastore/preferences/protobuf/FieldType;
    array-length v1, v0

    new-array v1, v1, [Landroidx/datastore/preferences/protobuf/FieldType;

    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 197
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 198
    .local v3, "type":Landroidx/datastore/preferences/protobuf/FieldType;
    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    iget v5, v3, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    aput-object v3, v4, v5

    .line 197
    .end local v3    # "type":Landroidx/datastore/preferences/protobuf/FieldType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "values":[Landroidx/datastore/preferences/protobuf/FieldType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V
    .locals 1
    .param p3, "id"    # I
    .param p4, "collection"    # Landroidx/datastore/preferences/protobuf/FieldType$Collection;
    .param p5, "javaType"    # Landroidx/datastore/preferences/protobuf/JavaType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "collection",
            "javaType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/datastore/preferences/protobuf/FieldType$Collection;",
            "Landroidx/datastore/preferences/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    .line 79
    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    .line 80
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 82
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 91
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 88
    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 85
    nop

    .line 95
    :goto_0
    const/4 p1, 0x0

    .line 96
    .local p1, "primitiveScalar":Z
    sget-object p2, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne p4, p2, :cond_0

    .line 97
    sget-object p2, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_1

    .line 103
    const/4 p1, 0x1

    goto :goto_1

    .line 101
    :pswitch_2
    nop

    .line 107
    :cond_0
    :goto_1
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->primitiveScalar:Z

    .line 108
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static forId(I)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 185
    if-ltz p0, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    aget-object v0, v0, p0

    return-object v0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 209
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    .local v0, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 211
    .local v3, "genericInterface":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 212
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 213
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 214
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    return-object v3

    .line 210
    .end local v3    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 222
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    .line 223
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 224
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 225
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    return-object v1

    .line 231
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .param p1, "realTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "realTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 246
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_9

    .line 248
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 249
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 251
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 252
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 253
    .local v2, "superArgs":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 254
    aget-object v4, v2, v3

    .line 255
    .local v4, "superArg":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_4

    .line 258
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 259
    .local v5, "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_3

    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, "foundReplacement":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 266
    aget-object v8, v5, v7

    if-ne v4, v8, :cond_0

    .line 267
    aget-object v8, p1, v7

    .line 268
    .local v8, "realType":Ljava/lang/reflect/Type;
    aput-object v8, v2, v3

    .line 269
    const/4 v6, 0x1

    .line 270
    goto :goto_3

    .line 265
    .end local v8    # "realType":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 273
    .end local v7    # "j":I
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    goto :goto_4

    .line 274
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find replacement for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    .end local v6    # "foundReplacement":Z
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Type array mismatch"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    .end local v4    # "superArg":Ljava/lang/reflect/Type;
    .end local v5    # "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 281
    .local v3, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object p1, v2

    .line 282
    move-object p0, v3

    .line 283
    goto :goto_0

    .line 288
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "superArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 289
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 290
    .local v4, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 291
    move-object p0, v4

    .line 292
    goto :goto_0

    .line 289
    .end local v4    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 295
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 296
    .end local v0    # "genericType":Ljava/lang/reflect/Type;
    goto/16 :goto_0

    .line 298
    :cond_9
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 301
    aget-object v0, p1, v1

    return-object v0

    .line 299
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to identify parameter type for List<T>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 162
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    return v1

    .line 166
    :cond_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 167
    .local v1, "types":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 168
    .local v2, "genericType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 171
    :cond_1
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 172
    .local v3, "listParameter":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_2

    .line 174
    const/4 v4, 0x1

    return v4

    .line 176
    :cond_2
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 17
    const-class v0, Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 17
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .locals 1

    .line 112
    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .locals 2

    .line 148
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 2

    .line 125
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .locals 2

    .line 138
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 153
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
