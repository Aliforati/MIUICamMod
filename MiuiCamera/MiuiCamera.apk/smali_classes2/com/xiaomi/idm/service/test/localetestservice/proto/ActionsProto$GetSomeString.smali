.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeStringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSomeString"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeStringOrBuilder;"
    }
.end annotation


# static fields
.field public static final AID_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

.field public static final PARAM_FIELD_NUMBER:I = 0x2

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aid_:I

.field public param_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    const-class v1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->setAid(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->clearAid()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->setParam(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->clearParam()V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->setParamBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAid()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->aid_:I

    return-void
.end method

.method private clearParam()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getDefaultInstance()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAid(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->aid_:I

    return-void
.end method

.method private setParam(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setParamBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "aid_"

    aput-object v0, p1, p3

    const-string p3, "param_"

    aput-object p3, p1, p2

    sget-object p2, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0208"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;-><init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;-><init>()V

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

.method public getAid()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->aid_:I

    return v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    return-object v0
.end method

.method public getParamBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->param_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
