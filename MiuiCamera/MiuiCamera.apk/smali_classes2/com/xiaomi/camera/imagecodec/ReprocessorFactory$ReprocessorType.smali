.class public final enum Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReprocessorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum ISP_INTERFACE:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

.field public static final enum VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v1, 0x0

    const-string v2, "VIRTUAL_CAMERA"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v2, 0x1

    const-string v3, "HARDWARE_CODEC"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v3, 0x2

    const-string v4, "SOFTWARE_CODEC"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v4, 0x3

    const-string v5, "ISP_INTERFACE"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->ISP_INTERFACE:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    sget-object v6, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->HARDWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->SOFTWARE_CODEC:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    .locals 1

    const-class v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-object v0
.end method
