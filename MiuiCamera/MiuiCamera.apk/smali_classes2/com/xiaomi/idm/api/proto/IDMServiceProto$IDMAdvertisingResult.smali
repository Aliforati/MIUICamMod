.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IDMAdvertisingResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICEID_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field public serviceId_:Ljava/lang/String;

.field public status_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    const-class v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$12400()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object v0
.end method

.method public static synthetic access$12500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->setStatus(I)V

    return-void
.end method

.method public static synthetic access$12600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->clearStatus()V

    return-void
.end method

.method public static synthetic access$12700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->setServiceId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->clearServiceId()V

    return-void
.end method

.method public static synthetic access$12900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->setServiceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearServiceId()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->status_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setServiceId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setServiceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->status_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "status_"

    aput-object v0, p1, p3

    const-string p3, "serviceId_"

    aput-object p3, p1, p2

    sget-object p2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult$Builder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    invoke-direct {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->serviceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->status_:I

    return v0
.end method
