.class public Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->setParamJson(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->setIsSort(Z)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/service/iot/PropertyService;[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/PropertyService;

    iget-object v2, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getParamJson()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    invoke-virtual {v3}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->getIsSort()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/idm/service/iot/PropertyService;->setProperty(Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PropertyService"

    invoke-static {v3, v2, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public bridge synthetic parseResponse([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object p1

    return-object p1
.end method

.method public toBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetProperty;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
